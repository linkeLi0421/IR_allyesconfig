; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pc87360.c_pt.bc'
source_filename = "../drivers/hwmon/pc87360.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pc87360_data = type { ptr, ptr, %struct.mutex, %struct.mutex, i8, i32, [3 x i32], i8, i8, i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], i16, i16, [14 x i8], [14 x i8], [14 x i8], [3 x i8], [14 x i8], i16, i8, i8, i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8 }

@__param_str_init = internal constant [13 x i8] c"pc87360.init\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@init = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype183 = internal constant [26 x i8] c"pc87360.parmtype=init:int\00", section ".modinfo", align 1
@__UNIQUE_ID_init184 = internal constant [269 x i8] c"pc87360.parm=init:Chip initialization level:\0A 0: None\0A*1: Forcibly enable internal voltage and temperature channels, except in9\0A 2: Forcibly enable all voltage and temperature channels, except in9\0A 3: Forcibly enable all voltage and temperature channels, including in9\00", section ".modinfo", align 1
@__param_str_force_id = internal constant [17 x i8] c"pc87360.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype185 = internal constant [33 x i8] c"pc87360.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id186 = internal constant [54 x i8] c"pc87360.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pc87360_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pc87360_probe, ptr @pc87360_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author207 = internal constant [47 x i8] c"pc87360.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [45 x i8] c"pc87360.description=PC8736x hardware monitor\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [35 x i8] c"pc87360.file=drivers/hwmon/pc87360\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [20 x i8] c"pc87360.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pc87360__211_1785_pc87360_init6 = internal global ptr @pc87360_init, section ".initcall6.init", align 4
@__exitcall_pc87360_exit = internal global ptr @pc87360_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc87360\00", [24 x i8] zeroinitializer }, align 32
@devid = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc87363\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc87364\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc87365\00", [24 x i8] zeroinitializer }, align 32
@extra_isa = internal global { [3 x i16], [26 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc87366\00", [24 x i8] zeroinitializer }, align 32
@pc87360_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@pc87360_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@pc87360_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1245, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Region 0x%x-0x%x already in use!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc87360_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/pc87360.c\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pc87360_probe._entry_ptr = internal global ptr @pc87360_probe._entry, section ".printk_index", align 4
@confreg.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@confreg.1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@confreg.2 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@confreg.3 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pc87360_probe.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.13, i8 1, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using %s reference voltage\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@pc8736x_vin_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc8736x_vin_attr_array, ptr null }, [44 x i8] zeroinitializer }, align 32
@pc8736x_therm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc8736x_therm_attr_array, ptr null }, [44 x i8] zeroinitializer }, align 32
@pc8736x_temp_attr_group = internal constant { [3 x %struct.attribute_group], [36 x i8] } { [3 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc8736x_temp_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc8736x_temp_attr, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc8736x_temp_attr, i64 80), ptr null }], [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms_temp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_temp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pc8736x_fan_attr_group = internal constant { [3 x %struct.attribute_group], [36 x i8] } { [3 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc8736x_fan_attr, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc8736x_fan_attr, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc8736x_fan_attr, i64 40), ptr null }], [36 x i8] zeroinitializer }, align 32
@pwm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.pc87360_init_device.init_in = private unnamed_addr constant [14 x i8] c"\02\02\02\02\02\02\02\01\01\03\01\02\02\02", align 1
@__const.pc87360_init_device.init_temp = private unnamed_addr constant [3 x i8] c"\02\02\01", align 1
@pc87360_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 1408, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"VLM conversion set to 1s period, 160us delay\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pc87360_init_device\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pc87360_init_device._entry_ptr = internal global ptr @pc87360_init_device._entry, section ".printk_index", align 4
@pc87360_init_device.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.19, i8 1, i8 98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bios in%d status:0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.20, i8 1, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Forcibly enabling in%d\0A\00", [40 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.21, i8 1, i8 102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bios thermistors:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.22, i8 1, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bios temp%d_status:0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.23, i8 1, i8 104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using thermistors:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.22, i8 1, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pc87360_init_device.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.24, i8 1, i8 107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcibly enabling temp%d\0A\00", [38 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.25, i8 1, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Skipping temp%d, pin already in use by temp%d\0A\00", [49 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.24, i8 1, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pc87360_init_device.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.26, i8 1, i8 118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bios vin-cfg:0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.27, i8 1, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Forcibly enabling monitoring (VLM)\0A\00", [60 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.28, i8 1, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bios temp-cfg:0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@pc87360_init_device.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.10, ptr @.str.29, i8 1, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Forcibly enabling monitoring (TMS)\0A\00", [60 x i8] zeroinitializer }, align 32
@pc8736x_vin_attr_array = internal global { [70 x ptr], [72 x i8] } { [70 x ptr] [ptr @in_input, ptr @in_status, ptr @in_min, ptr @in_max, ptr @in_min_alarm, ptr @in_max_alarm, ptr getelementptr (i8, ptr @in_input, i64 32), ptr getelementptr (i8, ptr @in_status, i64 32), ptr getelementptr (i8, ptr @in_min, i64 32), ptr getelementptr (i8, ptr @in_max, i64 32), ptr getelementptr (i8, ptr @in_min_alarm, i64 32), ptr getelementptr (i8, ptr @in_max_alarm, i64 32), ptr getelementptr (i8, ptr @in_input, i64 64), ptr getelementptr (i8, ptr @in_status, i64 64), ptr getelementptr (i8, ptr @in_min, i64 64), ptr getelementptr (i8, ptr @in_max, i64 64), ptr getelementptr (i8, ptr @in_min_alarm, i64 64), ptr getelementptr (i8, ptr @in_max_alarm, i64 64), ptr getelementptr (i8, ptr @in_input, i64 96), ptr getelementptr (i8, ptr @in_status, i64 96), ptr getelementptr (i8, ptr @in_min, i64 96), ptr getelementptr (i8, ptr @in_max, i64 96), ptr getelementptr (i8, ptr @in_min_alarm, i64 96), ptr getelementptr (i8, ptr @in_max_alarm, i64 96), ptr getelementptr (i8, ptr @in_input, i64 128), ptr getelementptr (i8, ptr @in_status, i64 128), ptr getelementptr (i8, ptr @in_min, i64 128), ptr getelementptr (i8, ptr @in_max, i64 128), ptr getelementptr (i8, ptr @in_min_alarm, i64 128), ptr getelementptr (i8, ptr @in_max_alarm, i64 128), ptr getelementptr (i8, ptr @in_input, i64 160), ptr getelementptr (i8, ptr @in_status, i64 160), ptr getelementptr (i8, ptr @in_min, i64 160), ptr getelementptr (i8, ptr @in_max, i64 160), ptr getelementptr (i8, ptr @in_min_alarm, i64 160), ptr getelementptr (i8, ptr @in_max_alarm, i64 160), ptr getelementptr (i8, ptr @in_input, i64 192), ptr getelementptr (i8, ptr @in_status, i64 192), ptr getelementptr (i8, ptr @in_min, i64 192), ptr getelementptr (i8, ptr @in_max, i64 192), ptr getelementptr (i8, ptr @in_min_alarm, i64 192), ptr getelementptr (i8, ptr @in_max_alarm, i64 192), ptr getelementptr (i8, ptr @in_input, i64 224), ptr getelementptr (i8, ptr @in_status, i64 224), ptr getelementptr (i8, ptr @in_min, i64 224), ptr getelementptr (i8, ptr @in_max, i64 224), ptr getelementptr (i8, ptr @in_min_alarm, i64 224), ptr getelementptr (i8, ptr @in_max_alarm, i64 224), ptr getelementptr (i8, ptr @in_input, i64 256), ptr getelementptr (i8, ptr @in_status, i64 256), ptr getelementptr (i8, ptr @in_min, i64 256), ptr getelementptr (i8, ptr @in_max, i64 256), ptr getelementptr (i8, ptr @in_min_alarm, i64 256), ptr getelementptr (i8, ptr @in_max_alarm, i64 256), ptr getelementptr (i8, ptr @in_input, i64 288), ptr getelementptr (i8, ptr @in_status, i64 288), ptr getelementptr (i8, ptr @in_min, i64 288), ptr getelementptr (i8, ptr @in_max, i64 288), ptr getelementptr (i8, ptr @in_min_alarm, i64 288), ptr getelementptr (i8, ptr @in_max_alarm, i64 288), ptr getelementptr (i8, ptr @in_input, i64 320), ptr getelementptr (i8, ptr @in_status, i64 320), ptr getelementptr (i8, ptr @in_min, i64 320), ptr getelementptr (i8, ptr @in_max, i64 320), ptr getelementptr (i8, ptr @in_min_alarm, i64 320), ptr getelementptr (i8, ptr @in_max_alarm, i64 320), ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @dev_attr_alarms_in, ptr null], [72 x i8] zeroinitializer }, align 32
@in_input = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 10 }], [64 x i8] zeroinitializer }, align 32
@in_status = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_status_show, ptr null }, i32 10 }], [64 x i8] zeroinitializer }, align 32
@in_min = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 10 }], [64 x i8] zeroinitializer }, align 32
@in_max = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 10 }], [64 x i8] zeroinitializer }, align 32
@in_min_alarm = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_alarm_show, ptr null }, i32 10 }], [64 x i8] zeroinitializer }, align 32
@in_max_alarm = internal global { [11 x %struct.sensor_device_attribute], [64 x i8] } { [11 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_alarm_show, ptr null }, i32 10 }], [64 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms_in = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_in_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pc87360_update_device.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.10, ptr @.str.43, i8 1, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pc87360_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Data update\0A\00", [19 x i8] zeroinitializer }, align 32
@pc87360_autodiv.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.10, ptr @.str.45, i8 1, i8 -125, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pc87360_autodiv\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Increasing clock divider to %d for fan %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pc87360_autodiv.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.10, ptr @.str.46, i8 1, i8 -122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Decreasing clock divider to %d for fan %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in0_status\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in1_status\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in2_status\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in3_status\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in4_status\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in5_status\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in6_status\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in7_status\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in8_status\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in9_status\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in10_status\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_min\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_max\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in0_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in2_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in3_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in4_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in5_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in6_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in7_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in8_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in9_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in10_min_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in0_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in2_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in3_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in4_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in5_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in6_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in7_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in8_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in9_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in10_max_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alarms_in\00", [22 x i8] zeroinitializer }, align 32
@pc8736x_therm_attr_array = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @therm_input, ptr @therm_status, ptr @therm_min, ptr @therm_max, ptr @therm_crit, ptr @therm_min_alarm, ptr @therm_max_alarm, ptr @therm_crit_alarm, ptr getelementptr (i8, ptr @therm_input, i64 32), ptr getelementptr (i8, ptr @therm_status, i64 32), ptr getelementptr (i8, ptr @therm_min, i64 32), ptr getelementptr (i8, ptr @therm_max, i64 32), ptr getelementptr (i8, ptr @therm_crit, i64 32), ptr getelementptr (i8, ptr @therm_min_alarm, i64 32), ptr getelementptr (i8, ptr @therm_max_alarm, i64 32), ptr getelementptr (i8, ptr @therm_crit_alarm, i64 32), ptr getelementptr (i8, ptr @therm_input, i64 64), ptr getelementptr (i8, ptr @therm_status, i64 64), ptr getelementptr (i8, ptr @therm_min, i64 64), ptr getelementptr (i8, ptr @therm_max, i64 64), ptr getelementptr (i8, ptr @therm_crit, i64 64), ptr getelementptr (i8, ptr @therm_min_alarm, i64 64), ptr getelementptr (i8, ptr @therm_max_alarm, i64 64), ptr getelementptr (i8, ptr @therm_crit_alarm, i64 64), ptr null], [60 x i8] zeroinitializer }, align 32
@therm_input = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_input_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_input_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_input_show, ptr null }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_status = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_status_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_status_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_status_show, ptr null }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_min = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_min_show, ptr @therm_min_store }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_min_show, ptr @therm_min_store }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_min_show, ptr @therm_min_store }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_max = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_max_show, ptr @therm_max_store }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_max_show, ptr @therm_max_store }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_max_show, ptr @therm_max_store }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_crit = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_crit_show, ptr @therm_crit_store }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_crit_show, ptr @therm_crit_store }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_crit_show, ptr @therm_crit_store }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_min_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_min_alarm_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_min_alarm_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_min_alarm_show, ptr null }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_max_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_max_alarm_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_max_alarm_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_max_alarm_show, ptr null }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@therm_crit_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_crit_alarm_show, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_crit_alarm_show, ptr null }, i32 12 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_crit_alarm_show, ptr null }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp4_status\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp5_status\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp6_status\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_min\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_min\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp6_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp6_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp4_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp5_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp6_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@pc8736x_temp_attr = internal global { [3 x [10 x ptr]], [40 x i8] } { [3 x [10 x ptr]] [[10 x ptr] [ptr @temp_input, ptr @temp_status, ptr @temp_min, ptr @temp_max, ptr @temp_crit, ptr @temp_min_alarm, ptr @temp_max_alarm, ptr @temp_crit_alarm, ptr @temp_fault, ptr null], [10 x ptr] [ptr getelementptr (i8, ptr @temp_input, i64 32), ptr getelementptr (i8, ptr @temp_status, i64 32), ptr getelementptr (i8, ptr @temp_min, i64 32), ptr getelementptr (i8, ptr @temp_max, i64 32), ptr getelementptr (i8, ptr @temp_crit, i64 32), ptr getelementptr (i8, ptr @temp_min_alarm, i64 32), ptr getelementptr (i8, ptr @temp_max_alarm, i64 32), ptr getelementptr (i8, ptr @temp_crit_alarm, i64 32), ptr getelementptr (i8, ptr @temp_fault, i64 32), ptr null], [10 x ptr] [ptr getelementptr (i8, ptr @temp_input, i64 64), ptr getelementptr (i8, ptr @temp_status, i64 64), ptr getelementptr (i8, ptr @temp_min, i64 64), ptr getelementptr (i8, ptr @temp_max, i64 64), ptr getelementptr (i8, ptr @temp_crit, i64 64), ptr getelementptr (i8, ptr @temp_min_alarm, i64 64), ptr getelementptr (i8, ptr @temp_max_alarm, i64 64), ptr getelementptr (i8, ptr @temp_crit_alarm, i64 64), ptr getelementptr (i8, ptr @temp_fault, i64 64), ptr null]], [40 x i8] zeroinitializer }, align 32
@temp_input = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_status = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_status_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_status_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_status_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_min = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_max = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_crit = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_min_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_max_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_crit_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@temp_fault = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_status\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_status\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_status\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alarms_temp\00", [20 x i8] zeroinitializer }, align 32
@pc8736x_fan_attr = internal global { [3 x [5 x ptr]], [36 x i8] } { [3 x [5 x ptr]] [[5 x ptr] [ptr @fan_input, ptr @fan_status, ptr @fan_div, ptr @fan_min, ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @fan_input, i64 32), ptr getelementptr (i8, ptr @fan_status, i64 32), ptr getelementptr (i8, ptr @fan_div, i64 32), ptr getelementptr (i8, ptr @fan_min, i64 32), ptr null], [5 x ptr] [ptr getelementptr (i8, ptr @fan_input, i64 64), ptr getelementptr (i8, ptr @fan_status, i64 64), ptr getelementptr (i8, ptr @fan_div, i64 64), ptr getelementptr (i8, ptr @fan_min, i64 64), ptr null]], [36 x i8] zeroinitializer }, align 32
@fan_input = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@fan_status = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_status_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_status_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_status_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@fan_div = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@fan_min = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_status\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan2_status\00", [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan3_status\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pc87360_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.10, i32 1740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014pc87360: PC8736x not detected, module not inserted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc87360_init\00", [19 x i8] zeroinitializer }, align 32
@pc87360_init._entry_ptr = internal global ptr @pc87360_init._entry, section ".printk_index", align 4
@pc87360_init._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.10, i32 1753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014pc87360: No active logical device, module not inserted\0A\00", [38 x i8] zeroinitializer }, align 32
@pc87360_init._entry_ptr.179 = internal global ptr @pc87360_init._entry.177, section ".printk_index", align 4
@logdev = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09\0D\0E", [29 x i8] zeroinitializer }, align 32
@pc87360_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.10, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pc87360: Device 0x%02x not activated\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc87360_find\00", [19 x i8] zeroinitializer }, align 32
@pc87360_find._entry_ptr = internal global ptr @pc87360_find._entry, section ".printk_index", align 4
@pc87360_find._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.10, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pc87360: Base address not set for device 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@pc87360_find._entry_ptr.184 = internal global ptr @pc87360_find._entry.182, section ".printk_index", align 4
@pc87360_find.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.10, ptr @.str.185, i8 1, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fan %d: mon=%d ctrl=%d inv=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pc87360: Fan %d: mon=%d ctrl=%d inv=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@pc87360_find.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.10, ptr @.str.185, i8 1, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pc87360_find.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.10, ptr @.str.185, i8 1, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pc87360_find._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.181, ptr @.str.10, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016pc87360: Using thermistors for temperature monitoring\0A\00", [39 x i8] zeroinitializer }, align 32
@pc87360_find._entry_ptr.189 = internal global ptr @pc87360_find._entry.187, section ".printk_index", align 4
@pc87360_find._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.181, ptr @.str.10, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pc87360: VID inputs routed (mode %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@pc87360_find._entry_ptr.192 = internal global ptr @pc87360_find._entry.190, section ".printk_index", align 4
@pc87360_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.10, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pc87360: Device allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pc87360_device_add\00", [45 x i8] zeroinitializer }, align 32
@pc87360_device_add._entry_ptr = internal global ptr @pc87360_device_add._entry, section ".printk_index", align 4
@pc87360_device_add._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.194, ptr @.str.10, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013pc87360: Device resources addition failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@pc87360_device_add._entry_ptr.197 = internal global ptr @pc87360_device_add._entry.195, section ".printk_index", align 4
@pc87360_device_add._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.194, ptr @.str.10, i32 1721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013pc87360: Device addition failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@pc87360_device_add._entry_ptr.200 = internal global ptr @pc87360_device_add._entry.198, section ".printk_index", align 4
@switch.table.pc87360_find = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 1, i32 1, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 228, i64 229, i64 232, i64 233]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.202 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 43, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 52, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 39, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"pc87360_driver\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 232, i32 31 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 234, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant [6 x i8] c"devid\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 38, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1212, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1216, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1220, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant [10 x i8] c"extra_isa\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 40, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1226, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1234, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1235, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1243, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [10 x i8] c"confreg.0\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [10 x i8] c"confreg.1\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [10 x i8] c"confreg.2\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [10 x i8] c"confreg.3\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1267, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [18 x i8] c"pc8736x_vin_group\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 639, i32 37 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c"pc8736x_therm_group\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 840, i32 37 }
@___asan_gen_.284 = private unnamed_addr constant [24 x i8] c"pc8736x_temp_attr_group\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1071, i32 37 }
@___asan_gen_.287 = private unnamed_addr constant [21 x i8] c"dev_attr_alarms_temp\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [23 x i8] c"pc8736x_fan_attr_group\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 386, i32 37 }
@___asan_gen_.293 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 374, i32 39 }
@___asan_gen_.296 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1407, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1418, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1422, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1435, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1441, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1443, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1453, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1472, i32 6 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1496, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1498, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1509, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1511, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant [23 x i8] c"pc8736x_vin_attr_array\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 622, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant [9 x i8] c"in_input\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 465, i32 39 }
@___asan_gen_.350 = private unnamed_addr constant [10 x i8] c"in_status\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 478, i32 39 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"in_min\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 491, i32 39 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"in_max\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 504, i32 39 }
@___asan_gen_.359 = private unnamed_addr constant [13 x i8] c"in_min_alarm\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 546, i32 39 }
@___asan_gen_.362 = private unnamed_addr constant [13 x i8] c"in_max_alarm\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 559, i32 39 }
@___asan_gen_.365 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [19 x i8] c"dev_attr_alarms_in\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 466, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 467, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 468, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 469, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 470, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 471, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 472, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 473, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 474, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 475, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 476, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 397, i32 22 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1582, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1547, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1559, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 479, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 480, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 481, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 482, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 483, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 484, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 485, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 486, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 487, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 488, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 489, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 492, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 493, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 494, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 495, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 496, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 497, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 498, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 499, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 500, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 501, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 502, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 505, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 506, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 507, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 508, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 509, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 510, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 511, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 512, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 513, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 514, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 515, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 547, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 548, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 549, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 550, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 551, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 552, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 553, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 554, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 555, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 556, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 557, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 560, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 561, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 562, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 563, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 564, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 565, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 566, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 567, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 568, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 569, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 570, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 587, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 612, i32 8 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 620, i32 8 }
@___asan_gen_.599 = private unnamed_addr constant [25 x i8] c"pc8736x_therm_attr_array\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 834, i32 26 }
@___asan_gen_.602 = private unnamed_addr constant [12 x i8] c"therm_input\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 749, i32 39 }
@___asan_gen_.605 = private unnamed_addr constant [13 x i8] c"therm_status\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 754, i32 39 }
@___asan_gen_.608 = private unnamed_addr constant [10 x i8] c"therm_min\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 759, i32 39 }
@___asan_gen_.611 = private unnamed_addr constant [10 x i8] c"therm_max\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 764, i32 39 }
@___asan_gen_.614 = private unnamed_addr constant [11 x i8] c"therm_crit\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 769, i32 39 }
@___asan_gen_.617 = private unnamed_addr constant [16 x i8] c"therm_min_alarm\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 808, i32 39 }
@___asan_gen_.620 = private unnamed_addr constant [16 x i8] c"therm_max_alarm\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 813, i32 39 }
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"therm_crit_alarm\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 818, i32 39 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 750, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 751, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 752, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 755, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 756, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 757, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 760, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 761, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 762, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 765, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 766, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 767, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 770, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 771, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 772, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 809, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 810, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 811, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 814, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 815, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 816, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 819, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 820, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 821, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [18 x i8] c"pc8736x_temp_attr\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1065, i32 26 }
@___asan_gen_.701 = private unnamed_addr constant [11 x i8] c"temp_input\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 948, i32 39 }
@___asan_gen_.704 = private unnamed_addr constant [12 x i8] c"temp_status\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 953, i32 39 }
@___asan_gen_.707 = private unnamed_addr constant [9 x i8] c"temp_min\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 958, i32 39 }
@___asan_gen_.710 = private unnamed_addr constant [9 x i8] c"temp_max\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 963, i32 39 }
@___asan_gen_.713 = private unnamed_addr constant [10 x i8] c"temp_crit\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 968, i32 39 }
@___asan_gen_.716 = private unnamed_addr constant [15 x i8] c"temp_min_alarm\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1019, i32 39 }
@___asan_gen_.719 = private unnamed_addr constant [15 x i8] c"temp_max_alarm\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1025, i32 39 }
@___asan_gen_.722 = private unnamed_addr constant [16 x i8] c"temp_crit_alarm\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1031, i32 39 }
@___asan_gen_.725 = private unnamed_addr constant [11 x i8] c"temp_fault\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1046, i32 39 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 949, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 950, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 951, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 849, i32 22 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 954, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 955, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 956, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 959, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 960, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 961, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 964, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 965, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 966, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 969, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 970, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 971, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1020, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1021, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1022, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1026, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1027, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1028, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1032, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1033, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1034, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1047, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1048, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1049, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 981, i32 8 }
@___asan_gen_.815 = private unnamed_addr constant [17 x i8] c"pc8736x_fan_attr\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 380, i32 26 }
@___asan_gen_.818 = private unnamed_addr constant [10 x i8] c"fan_input\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 314, i32 39 }
@___asan_gen_.821 = private unnamed_addr constant [11 x i8] c"fan_status\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 319, i32 39 }
@___asan_gen_.824 = private unnamed_addr constant [8 x i8] c"fan_div\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 324, i32 39 }
@___asan_gen_.827 = private unnamed_addr constant [8 x i8] c"fan_min\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 329, i32 39 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 315, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 316, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 317, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 320, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 321, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 322, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 325, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 326, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 327, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 330, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 331, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 332, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 375, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 376, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 377, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1084, i32 8 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1081, i32 22 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1740, i32 3 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1753, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant [7 x i8] c"logdev\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 69, i32 17 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1124, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1131, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1142, i32 4 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1163, i32 6 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1166, i32 6 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1692, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1715, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.950 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.951 = private constant [27 x i8] c"../drivers/hwmon/pc87360.c\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.951, i32 1721, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant [26 x i8] c"switch.table.pc87360_find\00", align 1
@llvm.compiler.used = appending global [278 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_force_id186, ptr @__UNIQUE_ID_force_idtype185, ptr @__UNIQUE_ID_init184, ptr @__UNIQUE_ID_inittype183, ptr @__UNIQUE_ID_license210, ptr @__exitcall_pc87360_exit, ptr @__initcall__kmod_pc87360__211_1785_pc87360_init6, ptr @__param_force_id, ptr @__param_init, ptr @pc87360_device_add._entry, ptr @pc87360_device_add._entry.195, ptr @pc87360_device_add._entry.198, ptr @pc87360_device_add._entry_ptr, ptr @pc87360_device_add._entry_ptr.197, ptr @pc87360_device_add._entry_ptr.200, ptr @pc87360_exit, ptr @pc87360_find._entry, ptr @pc87360_find._entry.182, ptr @pc87360_find._entry.187, ptr @pc87360_find._entry.190, ptr @pc87360_find._entry_ptr, ptr @pc87360_find._entry_ptr.184, ptr @pc87360_find._entry_ptr.189, ptr @pc87360_find._entry_ptr.192, ptr @pc87360_init._entry, ptr @pc87360_init._entry.177, ptr @pc87360_init._entry_ptr, ptr @pc87360_init._entry_ptr.179, ptr @pc87360_init_device._entry, ptr @pc87360_init_device._entry_ptr, ptr @pc87360_probe._entry, ptr @pc87360_probe._entry_ptr, ptr @init, ptr @force_id, ptr @pdev, ptr @pc87360_driver, ptr @.str, ptr @devid, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @extra_isa, ptr @.str.4, ptr @pc87360_probe.__key, ptr @.str.5, ptr @pc87360_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @confreg.0, ptr @confreg.1, ptr @confreg.2, ptr @confreg.3, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pc8736x_vin_group, ptr @pc8736x_therm_group, ptr @pc8736x_temp_attr_group, ptr @dev_attr_alarms_temp, ptr @pc8736x_fan_attr_group, ptr @pwm, ptr @dev_attr_name, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pc8736x_vin_attr_array, ptr @in_input, ptr @in_status, ptr @in_min, ptr @in_max, ptr @in_min_alarm, ptr @in_max_alarm, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @dev_attr_alarms_in, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @pc8736x_therm_attr_array, ptr @therm_input, ptr @therm_status, ptr @therm_min, ptr @therm_max, ptr @therm_crit, ptr @therm_min_alarm, ptr @therm_max_alarm, ptr @therm_crit_alarm, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @pc8736x_temp_attr, ptr @temp_input, ptr @temp_status, ptr @temp_min, ptr @temp_max, ptr @temp_crit, ptr @temp_min_alarm, ptr @temp_max_alarm, ptr @temp_crit_alarm, ptr @temp_fault, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @pc8736x_fan_attr, ptr @fan_input, ptr @fan_status, ptr @fan_div, ptr @fan_min, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @logdev, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.199, ptr @switch.table.pc87360_find], section "llvm.metadata"
@0 = internal global [254 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_isa to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @confreg.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @confreg.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @confreg.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @confreg.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_vin_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_therm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_temp_attr_group to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms_temp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_fan_attr_group to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_vin_attr_array to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_input to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_status to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_min to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_max to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_min_alarm to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_max_alarm to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms_in to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_therm_attr_array to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_input to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_status to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_min to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_max to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_crit to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_min_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_max_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_crit_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_temp_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_input to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_status to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_min to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_max to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_crit to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_min_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_max_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_crit_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_fault to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc8736x_fan_attr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_input to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_status to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_div to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_min to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_init._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logdev to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_find._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_find._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_find._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_device_add._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87360_device_add._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pc87360_find to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pc87360_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pc87360_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pc87360_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pc87360_find(i32 noundef 46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %land.lhs.true

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @pc87360_find(i32 noundef 78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.body.preheader_crit_edge, label %do.end

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end15, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [3 x i16], ptr @extra_isa, i32 0, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4.not = icmp eq i16 %1, 0
  br i1 %cmp4.not, label %for.cond, label %if.end18

do.end15:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #12
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %call19 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pc87360_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call fastcc i32 @pc87360_device_add(i16 noundef zeroext %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %exit_driver

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_driver:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @pc87360_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_driver, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end15 ], [ 0, %if.end22.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call23, %exit_driver ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc87360_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 316, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @devid, align 1
  %1 = zext i8 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %0, label %sw.default [
    i8 -24, label %sw.bb
    i8 -28, label %sw.bb3
    i8 -27, label %sw.bb5
    i8 -23, label %sw.bb18
  ]

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fannr = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %fannr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %fannr, align 4
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fannr2 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %fannr2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %fannr2, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fannr4 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %fannr4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %fannr4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i16, ptr @extra_isa, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool7.not = icmp eq i16 %5, 0
  %conv8 = select i1 %tobool7.not, i8 0, i8 3
  %fannr9 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %fannr9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %fannr9, align 4
  %7 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool11.not = icmp eq i16 %7, 0
  %conv13 = select i1 %tobool11.not, i8 0, i8 11
  %innr = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %innr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv13, ptr %innr, align 1
  %9 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool15.not = icmp eq i16 %9, 0
  %conv17 = select i1 %tobool15.not, i8 0, i8 2
  %tempnr = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %tempnr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv17, ptr %tempnr, align 2
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i16, ptr @extra_isa, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool20.not = icmp eq i16 %11, 0
  %conv22 = select i1 %tobool20.not, i8 0, i8 3
  %fannr23 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %fannr23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %fannr23, align 4
  %13 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool25.not = icmp eq i16 %13, 0
  %conv27 = select i1 %tobool25.not, i8 0, i8 14
  %innr28 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %innr28 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27, ptr %innr28, align 1
  %15 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool30.not = icmp eq i16 %15, 0
  %conv32 = select i1 %tobool30.not, i8 0, i8 3
  %tempnr33 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %tempnr33 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv32, ptr %tempnr33, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb5, %sw.bb3, %sw.bb, %sw.default
  %name.0 = phi ptr [ @.str, %sw.default ], [ @.str.4, %sw.bb18 ], [ @.str.3, %sw.bb5 ], [ @.str.2, %sw.bb3 ], [ @.str.1, %sw.bb ]
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name.0, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @pc87360_probe.__key) #8
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @pc87360_probe.__key.6) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %19 = load i16, ptr @extra_isa, align 2
  %conv39 = zext i16 %19 to i32
  %arrayidx40 = getelementptr %struct.pc87360_data, ptr %call.i, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv39, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool43.not = icmp eq i16 %19, 0
  br i1 %tobool43.not, label %sw.epilog.for.inc_crit_edge, label %land.lhs.true

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %sw.epilog
  %21 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @pc87360_driver, i32 0, i32 5), align 4
  %call46 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %conv39, i32 noundef 16, ptr noundef %21) #8
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %land.lhs.true.do.end51_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.do.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

do.end51:                                         ; preds = %land.lhs.true.2.do.end51_crit_edge, %land.lhs.true.1.do.end51_crit_edge, %land.lhs.true.do.end51_crit_edge
  %arrayidx.lcssa = phi ptr [ @extra_isa, %land.lhs.true.do.end51_crit_edge ], [ getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 1), %land.lhs.true.1.do.end51_crit_edge ], [ getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 2), %land.lhs.true.2.do.end51_crit_edge ]
  %22 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.lcssa, align 2
  %conv53 = zext i16 %23 to i32
  %sub = add nuw nsw i32 %conv53, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv53, i32 noundef %sub) #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %24 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 1), align 2
  %conv39.1 = zext i16 %24 to i32
  %arrayidx40.1 = getelementptr %struct.pc87360_data, ptr %call.i, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv39.1, ptr %arrayidx40.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool43.not.1 = icmp eq i16 %24, 0
  br i1 %tobool43.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %26 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @pc87360_driver, i32 0, i32 5), align 4
  %call46.1 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %conv39.1, i32 noundef 16, ptr noundef %26) #8
  %tobool47.not.1 = icmp eq ptr %call46.1, null
  br i1 %tobool47.not.1, label %land.lhs.true.1.do.end51_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1.do.end51_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %27 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @extra_isa, i32 0, i32 2), align 2
  %conv39.2 = zext i16 %27 to i32
  %arrayidx40.2 = getelementptr %struct.pc87360_data, ptr %call.i, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv39.2, ptr %arrayidx40.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool43.not.2 = icmp eq i16 %27, 0
  br i1 %tobool43.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %29 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @pc87360_driver, i32 0, i32 5), align 4
  %call46.2 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %conv39.2, i32 noundef 16, ptr noundef %29) #8
  %tobool47.not.2 = icmp eq ptr %call46.2, null
  br i1 %tobool47.not.2, label %land.lhs.true.2.do.end51_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2.do.end51_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %fannr57 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %fannr57 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fannr57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool58.not = icmp eq i8 %31, 0
  br i1 %tobool58.not, label %for.inc.2.if.end63_crit_edge, label %if.then59

for.inc.2.if.end63_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then59:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %32 = load i8, ptr @confreg.0, align 1
  %conv60 = zext i8 %32 to i16
  %33 = load i8, ptr @confreg.1, align 1
  %conv61 = zext i8 %33 to i16
  %shl = shl nuw i16 %conv61, 8
  %or = or i16 %shl, %conv60
  %fan_conf = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 14
  %34 = ptrtoint ptr %fan_conf to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or, ptr %fan_conf, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %for.inc.2.if.end63_crit_edge
  %innr64 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %innr64 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %innr64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool65.not = icmp eq i8 %36, 0
  br i1 %tobool65.not, label %if.end63.if.end91_crit_edge, label %if.then66

if.end63.if.end91_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then66:                                        ; preds = %if.end63
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %37 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx40.1, align 4
  %add6.i = add i32 %38, 8
  %and.i14.i = and i32 %add6.i, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %39 = inttoptr i32 %add.i15.i to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %tempnr68 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %tempnr68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tempnr68, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool69.not = icmp eq i8 %42, 0
  br i1 %tobool69.not, label %if.then66.if.end72_crit_edge, label %if.then70

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %43 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx40.2, align 4
  %add6.i311 = add i32 %44, 8
  %and.i14.i312 = and i32 %add6.i311, 1048575
  %add.i15.i313 = or i32 %and.i14.i312, -18874368
  %45 = inttoptr i32 %add.i15.i313 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %and323 = and i8 %46, %40
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then66.if.end72_crit_edge
  %i.1.in = phi i8 [ %and323, %if.then70 ], [ %40, %if.then66.if.end72_crit_edge ]
  %47 = and i8 %i.1.in, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool74.not = icmp eq i8 %47, 0
  %conv76 = select i1 %tobool74.not, i16 2966, i16 3025
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 15
  %48 = ptrtoint ptr %in_vref to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv76, ptr %in_vref, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_probe.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_probe, %do.end89)) #8
          to label %if.then83 [label %do.end89], !srcloc !537

if.then83:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %cond86 = select i1 %tobool74.not, ptr @.str.15, ptr @.str.14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_probe.__UNIQUE_ID_ddebug190, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond86) #8
  br label %do.end89

do.end89:                                         ; preds = %if.then83, %if.end72
  %49 = load i8, ptr @confreg.3, align 1
  %vid_conf = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 22
  %50 = ptrtoint ptr %vid_conf to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %vid_conf, align 2
  %call90 = tail call zeroext i8 @vid_which_vrm() #8
  %vrm = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 23
  %51 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call90, ptr %vrm, align 1
  br label %if.end91

if.end91:                                         ; preds = %do.end89, %if.end63.if.end91_crit_edge
  %52 = ptrtoint ptr %fannr57 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fannr57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp95327.not = icmp eq i8 %53, 0
  br i1 %cmp95327.not, label %if.end91.for.end113_crit_edge, label %for.body97.lr.ph

if.end91.for.end113_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end113

for.body97.lr.ph:                                 ; preds = %if.end91
  %fan_conf98 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 14
  br label %for.body97

for.body97:                                       ; preds = %for.inc111.for.body97_crit_edge, %for.body97.lr.ph
  %i.2328 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc112, %for.inc111.for.body97_crit_edge ]
  %54 = ptrtoint ptr %fan_conf98 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fan_conf98, align 4
  %conv99 = zext i16 %55 to i32
  %mul = mul nuw nsw i32 %i.2328, 3
  %56 = shl i32 4, %mul
  %57 = and i32 %56, %conv99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool102.not = icmp eq i32 %57, 0
  br i1 %tobool102.not, label %for.body97.for.inc111_crit_edge, label %if.then103

for.body97.for.inc111_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc111

if.then103:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  %conv106 = add nuw nsw i32 %mul, 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %58 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx40, align 4
  %conv5.i = and i32 %conv106, 255
  %add6.i317 = add i32 %59, %conv5.i
  %and.i14.i318 = and i32 %add6.i317, 1048575
  %add.i15.i319 = or i32 %and.i14.i318, -18874368
  %60 = inttoptr i32 %add.i15.i319 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %arrayidx109 = getelementptr %struct.pc87360_data, ptr %call.i, i32 0, i32 12, i32 %i.2328
  %62 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx109, align 1
  br label %for.inc111

for.inc111:                                       ; preds = %if.then103, %for.body97.for.inc111_crit_edge
  %inc112 = add nuw nsw i32 %i.2328, 1
  %63 = ptrtoint ptr %fannr57 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fannr57, align 4
  %conv94 = zext i8 %64 to i32
  %cmp95 = icmp ult i32 %inc112, %conv94
  br i1 %cmp95, label %for.inc111.for.body97_crit_edge, label %for.inc111.for.end113_crit_edge

for.inc111.for.end113_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end113

for.inc111.for.body97_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97

for.end113:                                       ; preds = %for.inc111.for.end113_crit_edge, %if.end91.for.end113_crit_edge
  %65 = load i32, ptr @init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp114 = icmp sgt i32 %65, 0
  br i1 %cmp114, label %if.then116, label %for.end113.if.end128_crit_edge

for.end113.if.end128_crit_edge:                   ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then116:                                       ; preds = %for.end113
  %66 = load i8, ptr @devid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %66)
  %cmp118 = icmp eq i8 %66, -23
  br i1 %cmp118, label %land.lhs.true120, label %if.then116.if.end127_crit_edge

if.then116.if.end127_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

land.lhs.true120:                                 ; preds = %if.then116
  %67 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx40.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool123.not = icmp eq i32 %68, 0
  br i1 %tobool123.not, label %land.lhs.true120.if.end127_crit_edge, label %if.then124

land.lhs.true120.if.end127_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then124:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  %69 = load i8, ptr @confreg.2, align 1
  %70 = and i8 %69, 64
  %and126 = zext i8 %70 to i32
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %land.lhs.true120.if.end127_crit_edge, %if.then116.if.end127_crit_edge
  %use_thermistors.0 = phi i32 [ %and126, %if.then124 ], [ 0, %land.lhs.true120.if.end127_crit_edge ], [ 0, %if.then116.if.end127_crit_edge ]
  tail call fastcc void @pc87360_init_device(ptr noundef %pdev, i32 noundef %use_thermistors.0)
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %for.end113.if.end128_crit_edge
  %71 = ptrtoint ptr %innr64 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %innr64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool130.not = icmp eq i8 %72, 0
  br i1 %tobool130.not, label %if.end128.if.end147_crit_edge, label %if.then131

if.end128.if.end147_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then131:                                       ; preds = %if.end128
  %call132 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @pc8736x_vin_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end136, label %if.then131.error_crit_edge

if.then131.error_crit_edge:                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end136:                                        ; preds = %if.then131
  %73 = ptrtoint ptr %innr64 to i32
  call void @__asan_load1_noabort(i32 %73)
  %.pr = load i8, ptr %innr64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %.pr)
  %cmp139 = icmp eq i8 %.pr, 14
  br i1 %cmp139, label %if.then141, label %if.end136.if.end147_crit_edge

if.end136.if.end147_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then141:                                       ; preds = %if.end136
  %call143 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @pc8736x_therm_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then141.if.end147_crit_edge, label %if.then141.error_crit_edge

if.then141.error_crit_edge:                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then141.if.end147_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.end147:                                        ; preds = %if.then141.if.end147_crit_edge, %if.end136.if.end147_crit_edge, %if.end128.if.end147_crit_edge
  %tempnr148 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 9
  %74 = ptrtoint ptr %tempnr148 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tempnr148, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool149.not = icmp eq i8 %75, 0
  br i1 %tobool149.not, label %if.end147.if.end170_crit_edge, label %for.cond151.preheader

if.end147.if.end170_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

for.cond151.preheader:                            ; preds = %if.end147
  %76 = ptrtoint ptr %tempnr148 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tempnr148, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp154331.not = icmp eq i8 %77, 0
  br i1 %cmp154331.not, label %for.cond151.preheader.for.end165_crit_edge, label %for.cond151.preheader.for.body156_crit_edge

for.cond151.preheader.for.body156_crit_edge:      ; preds = %for.cond151.preheader
  br label %for.body156

for.cond151.preheader.for.end165_crit_edge:       ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end165

for.cond151:                                      ; preds = %for.body156
  %inc164 = add nuw nsw i32 %i.3332, 1
  %78 = ptrtoint ptr %tempnr148 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %tempnr148, align 2
  %conv153 = zext i8 %79 to i32
  %cmp154 = icmp ult i32 %inc164, %conv153
  br i1 %cmp154, label %for.cond151.for.body156_crit_edge, label %for.cond151.for.end165_crit_edge

for.cond151.for.end165_crit_edge:                 ; preds = %for.cond151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end165

for.cond151.for.body156_crit_edge:                ; preds = %for.cond151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body156

for.body156:                                      ; preds = %for.cond151.for.body156_crit_edge, %for.cond151.preheader.for.body156_crit_edge
  %i.3332 = phi i32 [ %inc164, %for.cond151.for.body156_crit_edge ], [ 0, %for.cond151.preheader.for.body156_crit_edge ]
  %arrayidx158 = getelementptr [3 x %struct.attribute_group], ptr @pc8736x_temp_attr_group, i32 0, i32 %i.3332
  %call159 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef %arrayidx158) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %for.cond151, label %for.body156.error_crit_edge

for.body156.error_crit_edge:                      ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.end165:                                       ; preds = %for.cond151.for.end165_crit_edge, %for.cond151.preheader.for.end165_crit_edge
  %call166 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_alarms_temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %for.end165.if.end170_crit_edge, label %for.end165.error_crit_edge

for.end165.error_crit_edge:                       ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.end165.if.end170_crit_edge:                   ; preds = %for.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.end170:                                        ; preds = %for.end165.if.end170_crit_edge, %if.end147.if.end170_crit_edge
  %80 = ptrtoint ptr %fannr57 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %fannr57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp174334.not = icmp eq i8 %81, 0
  br i1 %cmp174334.not, label %if.end170.for.end208_crit_edge, label %for.body176.lr.ph

if.end170.for.end208_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.body176.lr.ph:                                ; preds = %if.end170
  %fan_conf177 = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 14
  br label %for.body176

for.body176:                                      ; preds = %for.inc206.for.body176_crit_edge, %for.body176.lr.ph
  %i.4335 = phi i32 [ 0, %for.body176.lr.ph ], [ %inc207, %for.inc206.for.body176_crit_edge ]
  %82 = ptrtoint ptr %fan_conf177 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %fan_conf177, align 4
  %conv178 = zext i16 %83 to i32
  %mul179 = mul nuw nsw i32 %i.4335, 3
  %84 = shl i32 4, %mul179
  %85 = and i32 %84, %conv178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool183.not = icmp eq i32 %85, 0
  br i1 %tobool183.not, label %for.body176.if.end191_crit_edge, label %if.then184

for.body176.if.end191_crit_edge:                  ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.then184:                                       ; preds = %for.body176
  %arrayidx186 = getelementptr [3 x %struct.attribute_group], ptr @pc8736x_fan_attr_group, i32 0, i32 %i.4335
  %call187 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef %arrayidx186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then184.if.end191_crit_edge, label %if.then184.error_crit_edge

if.then184.error_crit_edge:                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then184.if.end191_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end191:                                        ; preds = %if.then184.if.end191_crit_edge, %for.body176.if.end191_crit_edge
  %86 = ptrtoint ptr %fan_conf177 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %fan_conf177, align 4
  %conv193 = zext i16 %87 to i32
  %88 = shl i32 8, %mul179
  %89 = and i32 %88, %conv193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool198.not = icmp eq i32 %89, 0
  br i1 %tobool198.not, label %if.end191.for.inc206_crit_edge, label %if.then199

if.end191.for.inc206_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc206

if.then199:                                       ; preds = %if.end191
  %arrayidx200 = getelementptr [3 x %struct.sensor_device_attribute], ptr @pwm, i32 0, i32 %i.4335
  %call201 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.then199.for.inc206_crit_edge, label %if.then199.error_crit_edge

if.then199.error_crit_edge:                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then199.for.inc206_crit_edge:                  ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc206

for.inc206:                                       ; preds = %if.then199.for.inc206_crit_edge, %if.end191.for.inc206_crit_edge
  %inc207 = add nuw nsw i32 %i.4335, 1
  %90 = ptrtoint ptr %fannr57 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fannr57, align 4
  %conv173 = zext i8 %91 to i32
  %cmp174 = icmp ult i32 %inc207, %conv173
  br i1 %cmp174, label %for.inc206.for.body176_crit_edge, label %for.inc206.for.end208_crit_edge

for.inc206.for.end208_crit_edge:                  ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end208

for.inc206.for.body176_crit_edge:                 ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body176

for.end208:                                       ; preds = %for.inc206.for.end208_crit_edge, %if.end170.for.end208_crit_edge
  %call209 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %for.end208.error_crit_edge

for.end208.error_crit_edge:                       ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end212:                                        ; preds = %for.end208
  %call213 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #8
  %hwmon_dev = getelementptr inbounds %struct.pc87360_data, ptr %call.i, i32 0, i32 1
  %92 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call213, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then216, label %if.end212.cleanup_crit_edge

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %call213 to i32
  br label %error

error:                                            ; preds = %if.then216, %for.end208.error_crit_edge, %if.then199.error_crit_edge, %if.then184.error_crit_edge, %for.end165.error_crit_edge, %for.body156.error_crit_edge, %if.then141.error_crit_edge, %if.then131.error_crit_edge
  %err.0 = phi i32 [ %call132, %if.then131.error_crit_edge ], [ %call143, %if.then141.error_crit_edge ], [ %call166, %for.end165.error_crit_edge ], [ %call209, %for.end208.error_crit_edge ], [ %93, %if.then216 ], [ %call201, %if.then199.error_crit_edge ], [ %call187, %if.then184.error_crit_edge ], [ %call159, %for.body156.error_crit_edge ]
  tail call fastcc void @pc87360_remove_files(ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end212.cleanup_crit_edge, %do.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end51 ], [ %err.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end212.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc87360_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @pc87360_remove_files(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc87360_init_device(ptr noundef %pdev, i32 noundef %use_thermistors) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %innr = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %innr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %innr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %6, 7
  %and.i14.i = and i32 %add6.i, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %7 = inttoptr i32 %add.i15.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  %9 = and i8 %8, -64
  %conv4 = or i8 %9, 17
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %add6.i518 = add i32 %11, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i518, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %12 = inttoptr i32 %add.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv4) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %innr5 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %innr5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %innr5, align 1
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 11)
  %spec.select = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp11677.not = icmp eq i8 %15, 0
  br i1 %cmp11677.not, label %if.end.do.body62_crit_edge, label %for.body.lr.ph

if.end.do.body62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

for.body.lr.ph:                                   ; preds = %if.end
  %lock.i519 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0678 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv13 = trunc i32 %i.0678 to i8
  tail call void @mutex_lock_nested(ptr noundef %lock.i519, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv13)
  %cmp.not.i = icmp eq i8 %conv13, -1
  br i1 %cmp.not.i, label %for.body.pc87360_read_value.exit_crit_edge, label %if.then.i

for.body.pc87360_read_value.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_read_value.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv13) #8, !srcloc !539
  br label %pc87360_read_value.exit

pc87360_read_value.exit:                          ; preds = %if.then.i, %for.body.pc87360_read_value.exit_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add6.i521 = add i32 %20, 10
  %and.i14.i522 = and i32 %add6.i521, 1048575
  %add.i15.i523 = or i32 %and.i14.i522, -18874368
  %21 = inttoptr i32 %add.i15.i523 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i524 = zext i8 %22 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i519) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end27)) #8
          to label %if.then22 [label %do.end27], !srcloc !537

if.then22:                                        ; preds = %pc87360_read_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug191, ptr noundef %dev23, ptr noundef nonnull @.str.19, i32 noundef %i.0678, i32 noundef %conv7.i524) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %pc87360_read_value.exit
  %23 = load i32, ptr @init, align 4
  %arrayidx = getelementptr [14 x i8], ptr @__const.pc87360_init_device.init_in, i32 0, i32 %i.0678
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv28)
  %cmp29.not = icmp sge i32 %23, %conv28
  %and33 = and i32 %conv7.i524, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %or.cond = select i1 %cmp29.not, i1 %tobool34.not, i1 false
  br i1 %or.cond, label %do.body36, label %do.end27.for.inc_crit_edge

do.end27.for.inc_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body36:                                        ; preds = %do.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end54)) #8
          to label %if.then50 [label %do.end54], !srcloc !537

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug192, ptr noundef %dev23, ptr noundef nonnull @.str.20, i32 noundef %i.0678) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body36
  %26 = and i8 %22, 104
  %conv59 = or i8 %26, -121
  tail call void @mutex_lock_nested(ptr noundef %lock.i519, i32 noundef 0) #8
  br i1 %cmp.not.i, label %do.end54.pc87360_write_value.exit_crit_edge, label %if.then.i531

do.end54.pc87360_write_value.exit_crit_edge:      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i531:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i528 = add i32 %28, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i529 = and i32 %add.i528, 1048575
  %add.i.i530 = or i32 %and.i.i529, -18874368
  %29 = inttoptr i32 %add.i.i530 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv13) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i531, %do.end54.pc87360_write_value.exit_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add6.i533 = add i32 %31, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i534 = and i32 %add6.i533, 1048575
  %add.i14.i535 = or i32 %and.i13.i534, -18874368
  %32 = inttoptr i32 %add.i14.i535 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv59) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i519) #8
  br label %for.inc

for.inc:                                          ; preds = %pc87360_write_value.exit, %do.end27.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0678, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.do.body62_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.body62:                                        ; preds = %for.inc.do.body62_crit_edge, %if.end.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end80)) #8
          to label %if.then76 [label %do.end80], !srcloc !537

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug193, ptr noundef %dev77, ptr noundef nonnull @.str.21, i32 noundef %use_thermistors) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %do.body62
  %33 = ptrtoint ptr %innr5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %innr5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %34)
  %cmp84683 = icmp ugt i8 %34, 11
  br i1 %cmp84683, label %for.body86.lr.ph, label %do.end80.do.body117_crit_edge

do.end80.do.body117_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

for.body86.lr.ph:                                 ; preds = %do.end80
  %lock.i536 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx.i538 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %dev109 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body86

for.body86:                                       ; preds = %for.inc114.for.body86_crit_edge, %for.body86.lr.ph
  %use_thermistors.addr.0686 = phi i32 [ %use_thermistors, %for.body86.lr.ph ], [ %lor.ext, %for.inc114.for.body86_crit_edge ]
  %i.1684 = phi i32 [ 11, %for.body86.lr.ph ], [ %inc115, %for.inc114.for.body86_crit_edge ]
  %conv87 = trunc i32 %i.1684 to i8
  tail call void @mutex_lock_nested(ptr noundef %lock.i536, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv87)
  %cmp.not.i537 = icmp eq i8 %conv87, -1
  br i1 %cmp.not.i537, label %for.body86.pc87360_read_value.exit548_crit_edge, label %if.then.i542

for.body86.pc87360_read_value.exit548_crit_edge:  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_read_value.exit548

if.then.i542:                                     ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i538, align 4
  %add.i539 = add i32 %36, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i540 = and i32 %add.i539, 1048575
  %add.i.i541 = or i32 %and.i.i540, -18874368
  %37 = inttoptr i32 %add.i.i541 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv87) #8, !srcloc !539
  br label %pc87360_read_value.exit548

pc87360_read_value.exit548:                       ; preds = %if.then.i542, %for.body86.pc87360_read_value.exit548_crit_edge
  %38 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i538, align 4
  %add6.i544 = add i32 %39, 10
  %and.i14.i545 = and i32 %add6.i544, 1048575
  %add.i15.i546 = or i32 %and.i14.i545, -18874368
  %40 = inttoptr i32 %add.i15.i546 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i547 = zext i8 %41 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i536) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_thermistors.addr.0686)
  %tobool90.not = icmp ne i32 %use_thermistors.addr.0686, 0
  %and92 = and i32 %conv7.i547, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93 = icmp ne i32 %and92, 0
  %42 = select i1 %tobool90.not, i1 true, i1 %tobool93
  %lor.ext = zext i1 %42 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %for.inc114)) #8
          to label %if.then108 [label %for.inc114], !srcloc !537

if.then108:                                       ; preds = %pc87360_read_value.exit548
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %i.1684, -7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug194, ptr noundef %dev109, ptr noundef nonnull @.str.22, i32 noundef %sub, i32 noundef %conv7.i547) #8
  br label %for.inc114

for.inc114:                                       ; preds = %if.then108, %pc87360_read_value.exit548
  %inc115 = add nuw nsw i32 %i.1684, 1
  %43 = ptrtoint ptr %innr5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %innr5, align 1
  %conv83 = zext i8 %44 to i32
  %cmp84 = icmp ult i32 %inc115, %conv83
  br i1 %cmp84, label %for.inc114.for.body86_crit_edge, label %for.inc114.do.body117_crit_edge

for.inc114.do.body117_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

for.inc114.for.body86_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body86

do.body117:                                       ; preds = %for.inc114.do.body117_crit_edge, %do.end80.do.body117_crit_edge
  %use_thermistors.addr.0.lcssa = phi i32 [ %use_thermistors, %do.end80.do.body117_crit_edge ], [ %lor.ext, %for.inc114.do.body117_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end135)) #8
          to label %if.then131 [label %do.end135], !srcloc !537

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %dev132 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug195, ptr noundef %dev132, ptr noundef nonnull @.str.23, i32 noundef %use_thermistors.addr.0.lcssa) #8
  br label %do.end135

do.end135:                                        ; preds = %if.then131, %do.body117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_thermistors.addr.0.lcssa)
  %tobool136.not = icmp eq i32 %use_thermistors.addr.0.lcssa, 0
  %cond137 = select i1 %tobool136.not, i32 0, i32 2
  %tempnr = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %tempnr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tempnr, align 2
  %conv139687 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond137, i32 %conv139687)
  %cmp140688 = icmp ult i32 %cond137, %conv139687
  br i1 %cmp140688, label %for.body142.lr.ph, label %do.end135.for.end200_crit_edge

do.end135.for.end200_crit_edge:                   ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end200

for.body142.lr.ph:                                ; preds = %do.end135
  %lock.i549 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx.i551 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %dev161 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body142

for.body142:                                      ; preds = %for.inc198.for.body142_crit_edge, %for.body142.lr.ph
  %i.2689 = phi i32 [ %cond137, %for.body142.lr.ph ], [ %inc199, %for.inc198.for.body142_crit_edge ]
  %conv143 = trunc i32 %i.2689 to i8
  tail call void @mutex_lock_nested(ptr noundef %lock.i549, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv143)
  %cmp.not.i550 = icmp eq i8 %conv143, -1
  br i1 %cmp.not.i550, label %for.body142.pc87360_read_value.exit561_crit_edge, label %if.then.i555

for.body142.pc87360_read_value.exit561_crit_edge: ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_read_value.exit561

if.then.i555:                                     ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i551, align 4
  %add.i552 = add i32 %48, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i553 = and i32 %add.i552, 1048575
  %add.i.i554 = or i32 %and.i.i553, -18874368
  %49 = inttoptr i32 %add.i.i554 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %conv143) #8, !srcloc !539
  br label %pc87360_read_value.exit561

pc87360_read_value.exit561:                       ; preds = %if.then.i555, %for.body142.pc87360_read_value.exit561_crit_edge
  %50 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i551, align 4
  %add6.i557 = add i32 %51, 10
  %and.i14.i558 = and i32 %add6.i557, 1048575
  %add.i15.i559 = or i32 %and.i14.i558, -18874368
  %52 = inttoptr i32 %add.i15.i559 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i560 = zext i8 %53 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i549) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end165)) #8
          to label %if.then160 [label %do.end165], !srcloc !537

if.then160:                                       ; preds = %pc87360_read_value.exit561
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %i.2689, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug196, ptr noundef %dev161, ptr noundef nonnull @.str.22, i32 noundef %add, i32 noundef %conv7.i560) #8
  br label %do.end165

do.end165:                                        ; preds = %if.then160, %pc87360_read_value.exit561
  %54 = load i32, ptr @init, align 4
  %arrayidx166 = getelementptr [3 x i8], ptr @__const.pc87360_init_device.init_temp, i32 0, i32 %i.2689
  %55 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv167)
  %cmp168.not = icmp sge i32 %54, %conv167
  %and172 = and i32 %conv7.i560, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  %or.cond479 = select i1 %cmp168.not, i1 %tobool173.not, i1 false
  br i1 %or.cond479, label %do.body175, label %do.end165.for.inc198_crit_edge

do.end165.for.inc198_crit_edge:                   ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc198

do.body175:                                       ; preds = %do.end165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end194)) #8
          to label %if.then189 [label %do.end194], !srcloc !537

if.then189:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #10
  %add191 = add nuw nsw i32 %i.2689, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug197, ptr noundef %dev161, ptr noundef nonnull @.str.24, i32 noundef %add191) #8
  br label %do.end194

do.end194:                                        ; preds = %if.then189, %do.body175
  tail call void @mutex_lock_nested(ptr noundef %lock.i549, i32 noundef 0) #8
  br i1 %cmp.not.i550, label %do.end194.pc87360_write_value.exit573_crit_edge, label %if.then.i568

do.end194.pc87360_write_value.exit573_crit_edge:  ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit573

if.then.i568:                                     ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i551, align 4
  %add.i565 = add i32 %58, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i566 = and i32 %add.i565, 1048575
  %add.i.i567 = or i32 %and.i.i566, -18874368
  %59 = inttoptr i32 %add.i.i567 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv143) #8, !srcloc !539
  br label %pc87360_write_value.exit573

pc87360_write_value.exit573:                      ; preds = %if.then.i568, %do.end194.pc87360_write_value.exit573_crit_edge
  %60 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i551, align 4
  %add6.i570 = add i32 %61, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i571 = and i32 %add6.i570, 1048575
  %add.i14.i572 = or i32 %and.i13.i571, -18874368
  %62 = inttoptr i32 %add.i14.i572 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 -49) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i549) #8
  br label %for.inc198

for.inc198:                                       ; preds = %pc87360_write_value.exit573, %do.end165.for.inc198_crit_edge
  %inc199 = add nuw nsw i32 %i.2689, 1
  %63 = ptrtoint ptr %tempnr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tempnr, align 2
  %conv139 = zext i8 %64 to i32
  %cmp140 = icmp ult i32 %inc199, %conv139
  br i1 %cmp140, label %for.inc198.for.body142_crit_edge, label %for.inc198.for.end200_crit_edge

for.inc198.for.end200_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end200

for.inc198.for.body142_crit_edge:                 ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body142

for.end200:                                       ; preds = %for.inc198.for.end200_crit_edge, %do.end135.for.end200_crit_edge
  %65 = ptrtoint ptr %innr5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %.pr = load i8, ptr %innr5, align 1
  %tobool136.not.not = xor i1 %tobool136.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %.pr)
  %cmp206694 = icmp ugt i8 %.pr, 11
  %or.cond700 = select i1 %tobool136.not.not, i1 %cmp206694, i1 false
  br i1 %or.cond700, label %for.body208.lr.ph, label %for.end200.if.end282_crit_edge

for.end200.if.end282_crit_edge:                   ; preds = %for.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

for.body208.lr.ph:                                ; preds = %for.end200
  %lock.i574 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx.i576 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %dev237 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %arrayidx.i589 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  br label %for.body208

for.body208:                                      ; preds = %for.inc279.for.body208_crit_edge, %for.body208.lr.ph
  %i.3695 = phi i32 [ 11, %for.body208.lr.ph ], [ %inc280, %for.inc279.for.body208_crit_edge ]
  %66 = load i32, ptr @init, align 4
  %arrayidx209 = getelementptr [14 x i8], ptr @__const.pc87360_init_device.init_in, i32 0, i32 %i.3695
  %67 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv210)
  %cmp211.not = icmp slt i32 %66, %conv210
  br i1 %cmp211.not, label %for.body208.for.inc279_crit_edge, label %if.then213

for.body208.for.inc279_crit_edge:                 ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc279

if.then213:                                       ; preds = %for.body208
  %sub214 = add nsw i32 %i.3695, -11
  %div.udiv699 = lshr i32 %sub214, 1
  %conv215 = trunc i32 %div.udiv699 to i8
  tail call void @mutex_lock_nested(ptr noundef %lock.i574, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv215)
  %cmp.not.i575 = icmp eq i8 %conv215, -1
  br i1 %cmp.not.i575, label %if.then213.pc87360_read_value.exit586_crit_edge, label %if.then.i580

if.then213.pc87360_read_value.exit586_crit_edge:  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_read_value.exit586

if.then.i580:                                     ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %arrayidx.i576 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i576, align 4
  %add.i577 = add i32 %70, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i578 = and i32 %add.i577, 1048575
  %add.i.i579 = or i32 %and.i.i578, -18874368
  %71 = inttoptr i32 %add.i.i579 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %conv215) #8, !srcloc !539
  br label %pc87360_read_value.exit586

pc87360_read_value.exit586:                       ; preds = %if.then.i580, %if.then213.pc87360_read_value.exit586_crit_edge
  %72 = ptrtoint ptr %arrayidx.i576 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i576, align 4
  %add6.i582 = add i32 %73, 10
  %and.i14.i583 = and i32 %add6.i582, 1048575
  %add.i15.i584 = or i32 %and.i14.i583, -18874368
  %74 = inttoptr i32 %add.i15.i584 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i574) #8
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool220.not = icmp eq i8 %76, 0
  br i1 %tobool220.not, label %if.end244, label %do.body222

do.body222:                                       ; preds = %pc87360_read_value.exit586
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %for.inc279)) #8
          to label %if.then236 [label %for.inc279], !srcloc !537

if.then236:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #10
  %sub238 = add nsw i32 %i.3695, -7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug198, ptr noundef %dev237, ptr noundef nonnull @.str.25, i32 noundef %sub238, i32 noundef %div.udiv699) #8
  br label %for.inc279

if.end244:                                        ; preds = %pc87360_read_value.exit586
  %conv245 = trunc i32 %i.3695 to i8
  tail call void @mutex_lock_nested(ptr noundef %lock.i574, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv245)
  %cmp.not.i588 = icmp eq i8 %conv245, -1
  br i1 %cmp.not.i588, label %if.end244.pc87360_read_value.exit599_crit_edge, label %if.then.i593

if.end244.pc87360_read_value.exit599_crit_edge:   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_read_value.exit599

if.then.i593:                                     ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %arrayidx.i589 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i589, align 4
  %add.i590 = add i32 %78, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i591 = and i32 %add.i590, 1048575
  %add.i.i592 = or i32 %and.i.i591, -18874368
  %79 = inttoptr i32 %add.i.i592 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv245) #8, !srcloc !539
  br label %pc87360_read_value.exit599

pc87360_read_value.exit599:                       ; preds = %if.then.i593, %if.end244.pc87360_read_value.exit599_crit_edge
  %80 = ptrtoint ptr %arrayidx.i589 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i589, align 4
  %add6.i595 = add i32 %81, 10
  %and.i14.i596 = and i32 %add6.i595, 1048575
  %add.i15.i597 = or i32 %and.i14.i596, -18874368
  %82 = inttoptr i32 %add.i15.i597 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i574) #8
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool250.not = icmp eq i8 %84, 0
  br i1 %tobool250.not, label %do.body252, label %pc87360_read_value.exit599.for.inc279_crit_edge

pc87360_read_value.exit599.for.inc279_crit_edge:  ; preds = %pc87360_read_value.exit599
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc279

do.body252:                                       ; preds = %pc87360_read_value.exit599
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end271)) #8
          to label %if.then266 [label %do.end271], !srcloc !537

if.then266:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #10
  %sub268 = add nsw i32 %i.3695, -7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug199, ptr noundef %dev237, ptr noundef nonnull @.str.24, i32 noundef %sub268) #8
  br label %do.end271

do.end271:                                        ; preds = %if.then266, %do.body252
  %85 = and i8 %83, 96
  %conv276 = or i8 %85, -113
  tail call void @mutex_lock_nested(ptr noundef %lock.i574, i32 noundef 0) #8
  br i1 %cmp.not.i588, label %do.end271.pc87360_write_value.exit611_crit_edge, label %if.then.i606

do.end271.pc87360_write_value.exit611_crit_edge:  ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit611

if.then.i606:                                     ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %arrayidx.i589 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i589, align 4
  %add.i603 = add i32 %87, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i604 = and i32 %add.i603, 1048575
  %add.i.i605 = or i32 %and.i.i604, -18874368
  %88 = inttoptr i32 %add.i.i605 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 %conv245) #8, !srcloc !539
  br label %pc87360_write_value.exit611

pc87360_write_value.exit611:                      ; preds = %if.then.i606, %do.end271.pc87360_write_value.exit611_crit_edge
  %89 = ptrtoint ptr %arrayidx.i589 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i589, align 4
  %add6.i608 = add i32 %90, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i609 = and i32 %add6.i608, 1048575
  %add.i14.i610 = or i32 %and.i13.i609, -18874368
  %91 = inttoptr i32 %add.i14.i610 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %conv276) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i574) #8
  br label %for.inc279

for.inc279:                                       ; preds = %pc87360_write_value.exit611, %pc87360_read_value.exit599.for.inc279_crit_edge, %if.then236, %do.body222, %for.body208.for.inc279_crit_edge
  %inc280 = add nuw nsw i32 %i.3695, 1
  %92 = ptrtoint ptr %innr5 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %innr5, align 1
  %conv205 = zext i8 %93 to i32
  %cmp206 = icmp ult i32 %inc280, %conv205
  br i1 %cmp206, label %for.inc279.for.body208_crit_edge, label %for.inc279.if.end282_crit_edge

for.inc279.if.end282_crit_edge:                   ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

for.inc279.for.body208_crit_edge:                 ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body208

if.end282:                                        ; preds = %for.inc279.if.end282_crit_edge, %for.end200.if.end282_crit_edge
  %94 = phi i8 [ %.pr, %for.end200.if.end282_crit_edge ], [ %93, %for.inc279.if.end282_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool284.not = icmp eq i8 %94, 0
  br i1 %tobool284.not, label %if.end282.if.end335_crit_edge, label %if.then285

if.end282.if.end335_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end335

if.then285:                                       ; preds = %if.end282
  %lock.i612 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i612, i32 noundef 0) #8
  %arrayidx4.i613 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %95 = ptrtoint ptr %arrayidx4.i613 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx4.i613, align 4
  %add6.i614 = add i32 %96, 8
  %and.i14.i615 = and i32 %add6.i614, 1048575
  %add.i15.i616 = or i32 %and.i14.i615, -18874368
  %97 = inttoptr i32 %add.i15.i616 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i617 = zext i8 %98 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i612) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end307)) #8
          to label %if.then302 [label %do.end307], !srcloc !537

if.then302:                                       ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #10
  %dev303 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug200, ptr noundef %dev303, ptr noundef nonnull @.str.26, i32 noundef %conv7.i617) #8
  br label %do.end307

do.end307:                                        ; preds = %if.then302, %if.then285
  %and309 = and i32 %conv7.i617, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %do.end307.if.end335_crit_edge, label %do.body312

do.end307.if.end335_crit_edge:                    ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end335

do.body312:                                       ; preds = %do.end307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end330)) #8
          to label %if.then326 [label %do.end330], !srcloc !537

if.then326:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #10
  %dev327 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug201, ptr noundef %dev327, ptr noundef nonnull @.str.27) #8
  br label %do.end330

do.end330:                                        ; preds = %if.then326, %do.body312
  %conv333 = and i8 %98, -2
  tail call void @mutex_lock_nested(ptr noundef %lock.i612, i32 noundef 0) #8
  %99 = ptrtoint ptr %arrayidx4.i613 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx4.i613, align 4
  %add6.i620 = add i32 %100, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i621 = and i32 %add6.i620, 1048575
  %add.i14.i622 = or i32 %and.i13.i621, -18874368
  %101 = inttoptr i32 %add.i14.i622 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %conv333) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i612) #8
  br label %if.end335

if.end335:                                        ; preds = %do.end330, %do.end307.if.end335_crit_edge, %if.end282.if.end335_crit_edge
  %102 = ptrtoint ptr %tempnr to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %tempnr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool337.not = icmp eq i8 %103, 0
  br i1 %tobool337.not, label %if.end335.if.end392_crit_edge, label %if.then338

if.end335.if.end392_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.then338:                                       ; preds = %if.end335
  %lock.i623 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %arrayidx4.i624 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %104 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i625 = add i32 %105, 8
  %and.i14.i626 = and i32 %add6.i625, 1048575
  %add.i15.i627 = or i32 %and.i14.i626, -18874368
  %106 = inttoptr i32 %add.i15.i627 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i628 = zext i8 %107 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end360)) #8
          to label %if.then355 [label %do.end360], !srcloc !537

if.then355:                                       ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #10
  %dev356 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug202, ptr noundef %dev356, ptr noundef nonnull @.str.28, i32 noundef %conv7.i628) #8
  br label %do.end360

do.end360:                                        ; preds = %if.then355, %if.then338
  %and362 = and i32 %conv7.i628, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and362)
  %tobool363.not = icmp eq i32 %and362, 0
  br i1 %tobool363.not, label %do.end360.if.end387_crit_edge, label %do.body365

do.end360.if.end387_crit_edge:                    ; preds = %do.end360
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end387

do.body365:                                       ; preds = %do.end360
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_init_device.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_init_device, %do.end383)) #8
          to label %if.then379 [label %do.end383], !srcloc !537

if.then379:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #10
  %dev380 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_init_device.__UNIQUE_ID_ddebug203, ptr noundef %dev380, ptr noundef nonnull @.str.29) #8
  br label %do.end383

do.end383:                                        ; preds = %if.then379, %do.body365
  %conv386 = and i8 %107, -2
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %108 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i631 = add i32 %109, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i632 = and i32 %add6.i631, 1048575
  %add.i14.i633 = or i32 %and.i13.i632, -18874368
  %110 = inttoptr i32 %add.i14.i633 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 %conv386) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  br label %if.end387

if.end387:                                        ; preds = %do.end383, %do.end360.if.end387_crit_edge
  %111 = load i32, ptr @init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp388 = icmp sgt i32 %111, 1
  br i1 %cmp388, label %if.then390, label %if.end387.if.end392_crit_edge

if.end387.if.end392_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.then390:                                       ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %112 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx4.i624, align 4
  %add.i636 = add i32 %113, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i637 = and i32 %add.i636, 1048575
  %add.i.i638 = or i32 %and.i.i637, -18874368
  %114 = inttoptr i32 %add.i.i638 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 15) #8, !srcloc !539
  %115 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i641 = add i32 %116, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i642 = and i32 %add6.i641, 1048575
  %add.i14.i643 = or i32 %and.i13.i642, -18874368
  %117 = inttoptr i32 %add.i14.i643 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 8) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %118 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i646 = add i32 %119, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i647 = and i32 %add6.i646, 1048575
  %add.i14.i648 = or i32 %and.i13.i647, -18874368
  %120 = inttoptr i32 %add.i14.i648 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 4) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %121 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i651 = add i32 %122, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i652 = and i32 %add6.i651, 1048575
  %add.i14.i653 = or i32 %and.i13.i652, -18874368
  %123 = inttoptr i32 %add.i14.i653 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 53) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %124 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i656 = add i32 %125, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i657 = and i32 %add6.i656, 1048575
  %add.i14.i658 = or i32 %and.i13.i657, -18874368
  %126 = inttoptr i32 %add.i14.i658 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 5) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i623, i32 noundef 0) #8
  %127 = ptrtoint ptr %arrayidx4.i624 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx4.i624, align 4
  %add6.i661 = add i32 %128, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i662 = and i32 %add6.i661, 1048575
  %add.i14.i663 = or i32 %and.i13.i662, -18874368
  %129 = inttoptr i32 %add.i14.i663 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 5) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i623) #8
  br label %if.end392

if.end392:                                        ; preds = %if.then390, %if.end387.if.end392_crit_edge, %if.end335.if.end392_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc87360_remove_files(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_alarms_temp) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pc8736x_temp_attr_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.attribute_group], ptr @pc8736x_temp_attr_group, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.attribute_group], ptr @pc8736x_temp_attr_group, i32 0, i32 2)) #8
  %0 = load ptr, ptr @pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev4, ptr noundef nonnull @pc8736x_fan_attr_group) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @pwm) #8
  %1 = load ptr, ptr @pdev, align 4
  %dev4.1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev4.1, ptr noundef getelementptr inbounds ([3 x %struct.attribute_group], ptr @pc8736x_fan_attr_group, i32 0, i32 1)) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute], ptr @pwm, i32 0, i32 1)) #8
  %2 = load ptr, ptr @pdev, align 4
  %dev4.2 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev4.2, ptr noundef getelementptr inbounds ([3 x %struct.attribute_group], ptr @pc8736x_fan_attr_group, i32 0, i32 2)) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef getelementptr inbounds ([3 x %struct.sensor_device_attribute], ptr @pwm, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pc8736x_therm_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pc8736x_vin_group) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_input_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pc87360_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end190_crit_edge

lor.lhs.false.if.end190_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_update_device.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_update_device, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !537

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_update_device.__UNIQUE_ID_ddebug206, ptr noundef %dev, ptr noundef nonnull @.str.43) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %fannr = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %fannr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fannr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp8495.not = icmp eq i8 %8, 0
  br i1 %cmp8495.not, label %do.end.for.cond64.preheader_crit_edge, label %for.body.lr.ph

do.end.for.cond64.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond64.preheader

for.body.lr.ph:                                   ; preds = %do.end
  %fan_conf = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 0
  br label %for.body

for.cond64.preheader:                             ; preds = %for.inc.for.cond64.preheader_crit_edge, %do.end.for.cond64.preheader_crit_edge
  %innr = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %innr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %innr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp67500.not = icmp eq i8 %10, 0
  br i1 %cmp67500.not, label %for.cond64.preheader.if.end131_crit_edge, label %pc87360_write_value.exit.lr.ph

for.cond64.preheader.if.end131_crit_edge:         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

pc87360_write_value.exit.lr.ph:                   ; preds = %for.cond64.preheader
  %lock.i325 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  br label %pc87360_write_value.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %fan_conf to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %fan_conf, align 4
  %conv10 = zext i16 %12 to i32
  %mul = mul nuw nsw i32 %indvars.iv, 3
  %13 = shl i32 4, %mul
  %14 = and i32 %13, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %for.body.if.end45_crit_edge, label %if.then14

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = add nuw nsw i32 %mul, 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i = and i32 %conv18, 255
  %add6.i = add i32 %16, %conv5.i
  %and.i14.i = and i32 %add6.i, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %17 = inttoptr i32 %add.i15.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 12, i32 %indvars.iv
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx, align 1
  %conv24 = add nuw nsw i32 %mul, 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i302 = and i32 %conv24, 255
  %add6.i303 = add i32 %21, %conv5.i302
  %and.i14.i304 = and i32 %add6.i303, 1048575
  %add.i15.i305 = or i32 %and.i14.i304, -18874368
  %22 = inttoptr i32 %add.i15.i305 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx28 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 10, i32 %indvars.iv
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx28, align 1
  %conv32 = add nuw nsw i32 %mul, 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i309 = and i32 %conv32, 255
  %add6.i310 = add i32 %26, %conv5.i309
  %and.i14.i311 = and i32 %add6.i310, 1048575
  %add.i15.i312 = or i32 %and.i14.i311, -18874368
  %27 = inttoptr i32 %add.i15.i312 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx36 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 11, i32 %indvars.iv
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx36, align 1
  tail call fastcc void @pc87360_autodiv(ptr noundef %dev, i32 noundef %indvars.iv)
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i, align 4
  %add6.i317 = add i32 %33, %conv5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i317, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %34 = inttoptr i32 %add.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then14, %for.body.if.end45_crit_edge
  %35 = ptrtoint ptr %fan_conf to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %fan_conf, align 4
  %conv47 = zext i16 %36 to i32
  %37 = shl i32 8, %mul
  %38 = and i32 %37, %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool53.not = icmp eq i32 %38, 0
  br i1 %tobool53.not, label %if.end45.for.inc_crit_edge, label %if.then54

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %mul56 = shl nuw i32 %indvars.iv, 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i, align 4
  %add57 = and i32 %mul56, 254
  %conv5.i320 = or i32 %add57, 1
  %add6.i321 = add i32 %40, %conv5.i320
  %and.i14.i322 = and i32 %add6.i321, 1048575
  %add.i15.i323 = or i32 %and.i14.i322, -18874368
  %41 = inttoptr i32 %add.i15.i323 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx62 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 13, i32 %indvars.iv
  %43 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx62, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then54, %if.end45.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %44 = ptrtoint ptr %fannr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fannr, align 4
  %46 = zext i8 %45 to i32
  %cmp8 = icmp ult i32 %indvars.iv.next, %46
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.cond64.preheader_crit_edge

for.inc.for.cond64.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond64.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

pc87360_write_value.exit:                         ; preds = %for.inc116.pc87360_write_value.exit_crit_edge, %pc87360_write_value.exit.lr.ph
  %indvars.iv513 = phi i32 [ 0, %pc87360_write_value.exit.lr.ph ], [ %indvars.iv.next514, %for.inc116.pc87360_write_value.exit_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock.i325, i32 noundef 0) #8
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %48, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %49 = inttoptr i32 %add.i.i to ptr
  %50 = trunc i32 %indvars.iv513 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %50) #8, !srcloc !539
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %add6.i327 = add i32 %52, 10
  %and.i14.i328 = and i32 %add6.i327, 1048575
  %add.i15.i329 = or i32 %and.i14.i328, -18874368
  %53 = inttoptr i32 %add.i15.i329 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i325) #8
  %arrayidx73 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 20, i32 %indvars.iv513
  %55 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx73, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i325, i32 noundef 0) #8
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  %add.i334 = add i32 %57, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i335 = and i32 %add.i334, 1048575
  %add.i.i336 = or i32 %and.i.i335, -18874368
  %58 = inttoptr i32 %add.i.i336 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %50) #8, !srcloc !539
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %add6.i339 = add i32 %60, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i340 = and i32 %add6.i339, 1048575
  %add.i14.i341 = or i32 %and.i13.i340, -18874368
  %61 = inttoptr i32 %add.i14.i341 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %54) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i325) #8
  %62 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx73, align 1
  %64 = and i8 %63, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %64)
  %cmp82 = icmp eq i8 %64, -127
  br i1 %cmp82, label %pc87360_read_value.exit354, label %pc87360_write_value.exit.if.end89_crit_edge

pc87360_write_value.exit.if.end89_crit_edge:      ; preds = %pc87360_write_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

pc87360_read_value.exit354:                       ; preds = %pc87360_write_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock.i325, i32 noundef 0) #8
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %add.i345 = add i32 %66, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i346 = and i32 %add.i345, 1048575
  %add.i.i347 = or i32 %and.i.i346, -18874368
  %67 = inttoptr i32 %add.i.i347 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %50) #8, !srcloc !539
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %add6.i350 = add i32 %69, 11
  %and.i14.i351 = and i32 %add6.i350, 1048575
  %add.i15.i352 = or i32 %and.i14.i351, -18874368
  %70 = inttoptr i32 %add.i15.i352 to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i325) #8
  %arrayidx88 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 16, i32 %indvars.iv513
  %72 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx88, align 1
  br label %if.end89

if.end89:                                         ; preds = %pc87360_read_value.exit354, %pc87360_write_value.exit.if.end89_crit_edge
  %73 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx73, align 1
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool95.not = icmp eq i8 %75, 0
  br i1 %tobool95.not, label %if.end89.for.inc116_crit_edge, label %pc87360_read_value.exit380

if.end89.for.inc116_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

pc87360_read_value.exit380:                       ; preds = %if.end89
  tail call void @mutex_lock_nested(ptr noundef %lock.i325, i32 noundef 0) #8
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i, align 4
  %add.i358 = add i32 %77, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i359 = and i32 %add.i358, 1048575
  %add.i.i360 = or i32 %and.i.i359, -18874368
  %78 = inttoptr i32 %add.i.i360 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %50) #8, !srcloc !539
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %add6.i363 = add i32 %80, 13
  %and.i14.i364 = and i32 %add6.i363, 1048575
  %add.i15.i365 = or i32 %and.i14.i364, -18874368
  %81 = inttoptr i32 %add.i15.i365 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i325) #8
  %arrayidx100 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 17, i32 %indvars.iv513
  %83 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx100, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i325, i32 noundef 0) #8
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %add.i371 = add i32 %85, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i372 = and i32 %add.i371, 1048575
  %add.i.i373 = or i32 %and.i.i372, -18874368
  %86 = inttoptr i32 %add.i.i373 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %50) #8, !srcloc !539
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i, align 4
  %add6.i376 = add i32 %88, 12
  %and.i14.i377 = and i32 %add6.i376, 1048575
  %add.i15.i378 = or i32 %and.i14.i377, -18874368
  %89 = inttoptr i32 %add.i15.i378 to ptr
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %89) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i325) #8
  %arrayidx104 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 18, i32 %indvars.iv513
  %91 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx104, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %indvars.iv513)
  %cmp106 = icmp ugt i32 %indvars.iv513, 10
  br i1 %cmp106, label %pc87360_read_value.exit393, label %pc87360_read_value.exit380.for.inc116_crit_edge

pc87360_read_value.exit380.for.inc116_crit_edge:  ; preds = %pc87360_read_value.exit380
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

pc87360_read_value.exit393:                       ; preds = %pc87360_read_value.exit380
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock.i325, i32 noundef 0) #8
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i, align 4
  %add.i384 = add i32 %93, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i385 = and i32 %add.i384, 1048575
  %add.i.i386 = or i32 %and.i.i385, -18874368
  %94 = inttoptr i32 %add.i.i386 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %50) #8, !srcloc !539
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %add6.i389 = add i32 %96, 14
  %and.i14.i390 = and i32 %add6.i389, 1048575
  %add.i15.i391 = or i32 %and.i14.i390, -18874368
  %97 = inttoptr i32 %add.i15.i391 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i325) #8
  %sub112 = add nsw i32 %indvars.iv513, -11
  %arrayidx113 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 19, i32 %sub112
  %99 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx113, align 1
  br label %for.inc116

for.inc116:                                       ; preds = %pc87360_read_value.exit393, %pc87360_read_value.exit380.for.inc116_crit_edge, %if.end89.for.inc116_crit_edge
  %indvars.iv.next514 = add nuw nsw i32 %indvars.iv513, 1
  %100 = ptrtoint ptr %innr to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %innr, align 1
  %102 = zext i8 %101 to i32
  %cmp67 = icmp ult i32 %indvars.iv.next514, %102
  br i1 %cmp67, label %for.inc116.pc87360_write_value.exit_crit_edge, label %for.end118

for.inc116.pc87360_write_value.exit_crit_edge:    ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

for.end118:                                       ; preds = %for.inc116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %phi.cmp = icmp eq i8 %101, 0
  br i1 %phi.cmp, label %for.end118.if.end131_crit_edge, label %if.then121

for.end118.if.end131_crit_edge:                   ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

if.then121:                                       ; preds = %for.end118
  %lock.i394 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i394, i32 noundef 0) #8
  %arrayidx4.i395 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %103 = ptrtoint ptr %arrayidx4.i395 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx4.i395, align 4
  %and.i14.i396 = and i32 %104, 1048575
  %add.i15.i397 = or i32 %and.i14.i396, -18874368
  %105 = inttoptr i32 %add.i15.i397 to ptr
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i398 = zext i8 %106 to i16
  tail call void @mutex_unlock(ptr noundef %lock.i394) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i394, i32 noundef 0) #8
  %107 = ptrtoint ptr %arrayidx4.i395 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx4.i395, align 4
  %add6.i401 = add i32 %108, 1
  %and.i14.i402 = and i32 %add6.i401, 1048575
  %add.i15.i403 = or i32 %and.i14.i402, -18874368
  %109 = inttoptr i32 %add.i15.i403 to ptr
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  %conv7.i404 = zext i8 %110 to i16
  tail call void @mutex_unlock(ptr noundef %lock.i394) #8
  %and124 = shl nuw i16 %conv7.i404, 8
  %shl = and i16 %and124, 1792
  %or = or i16 %shl, %conv7.i398
  %in_alarms = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 21
  %111 = ptrtoint ptr %in_alarms to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %or, ptr %in_alarms, align 4
  %vid_conf = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 22
  %112 = ptrtoint ptr %vid_conf to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %vid_conf, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %113)
  %tobool128.not = icmp ult i8 %113, 32
  br i1 %tobool128.not, label %if.then121.cond.end_crit_edge, label %cond.true

if.then121.cond.end_crit_edge:                    ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock.i394, i32 noundef 0) #8
  %114 = ptrtoint ptr %arrayidx4.i395 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx4.i395, align 4
  %add6.i407 = add i32 %115, 6
  %and.i14.i408 = and i32 %add6.i407, 1048575
  %add.i15.i409 = or i32 %and.i14.i408, -18874368
  %116 = inttoptr i32 %add.i15.i409 to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i394) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then121.cond.end_crit_edge
  %cond = phi i8 [ %117, %cond.true ], [ 31, %if.then121.cond.end_crit_edge ]
  %vid = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 24
  %118 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %cond, ptr %vid, align 4
  br label %if.end131

if.end131:                                        ; preds = %cond.end, %for.end118.if.end131_crit_edge, %for.cond64.preheader.if.end131_crit_edge
  %tempnr = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 9
  %119 = ptrtoint ptr %tempnr to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %tempnr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp135505.not = icmp eq i8 %120, 0
  br i1 %cmp135505.not, label %if.end131.if.end187_crit_edge, label %pc87360_write_value.exit435.lr.ph

if.end131.if.end187_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

pc87360_write_value.exit435.lr.ph:                ; preds = %if.end131
  %lock.i411 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  %arrayidx.i413 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  br label %pc87360_write_value.exit435

pc87360_write_value.exit435:                      ; preds = %for.inc178.pc87360_write_value.exit435_crit_edge, %pc87360_write_value.exit435.lr.ph
  %indvars.iv515 = phi i32 [ 0, %pc87360_write_value.exit435.lr.ph ], [ %indvars.iv.next516, %for.inc178.pc87360_write_value.exit435_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock.i411, i32 noundef 0) #8
  %121 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i413, align 4
  %add.i414 = add i32 %122, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i415 = and i32 %add.i414, 1048575
  %add.i.i416 = or i32 %and.i.i415, -18874368
  %123 = inttoptr i32 %add.i.i416 to ptr
  %124 = trunc i32 %indvars.iv515 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 %124) #8, !srcloc !539
  %125 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i413, align 4
  %add6.i419 = add i32 %126, 10
  %and.i14.i420 = and i32 %add6.i419, 1048575
  %add.i15.i421 = or i32 %and.i14.i420, -18874368
  %127 = inttoptr i32 %add.i15.i421 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i411) #8
  %arrayidx141 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 29, i32 %indvars.iv515
  %129 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx141, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i411, i32 noundef 0) #8
  %130 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx.i413, align 4
  %add.i427 = add i32 %131, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i428 = and i32 %add.i427, 1048575
  %add.i.i429 = or i32 %and.i.i428, -18874368
  %132 = inttoptr i32 %add.i.i429 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %124) #8, !srcloc !539
  %133 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i413, align 4
  %add6.i432 = add i32 %134, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i433 = and i32 %add6.i432, 1048575
  %add.i14.i434 = or i32 %and.i13.i433, -18874368
  %135 = inttoptr i32 %add.i14.i434 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 %128) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i411) #8
  %136 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx141, align 1
  %138 = and i8 %137, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %138)
  %cmp150 = icmp eq i8 %138, -127
  br i1 %cmp150, label %pc87360_read_value.exit448, label %pc87360_write_value.exit435.if.end157_crit_edge

pc87360_write_value.exit435.if.end157_crit_edge:  ; preds = %pc87360_write_value.exit435
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

pc87360_read_value.exit448:                       ; preds = %pc87360_write_value.exit435
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock.i411, i32 noundef 0) #8
  %139 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i413, align 4
  %add.i439 = add i32 %140, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i440 = and i32 %add.i439, 1048575
  %add.i.i441 = or i32 %and.i.i440, -18874368
  %141 = inttoptr i32 %add.i.i441 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %141, i8 %124) #8, !srcloc !539
  %142 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i413, align 4
  %add6.i444 = add i32 %143, 11
  %and.i14.i445 = and i32 %add6.i444, 1048575
  %add.i15.i446 = or i32 %and.i14.i445, -18874368
  %144 = inttoptr i32 %add.i15.i446 to ptr
  %145 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %144) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i411) #8
  %arrayidx156 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 25, i32 %indvars.iv515
  %146 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx156, align 1
  br label %if.end157

if.end157:                                        ; preds = %pc87360_read_value.exit448, %pc87360_write_value.exit435.if.end157_crit_edge
  %147 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx141, align 1
  %149 = and i8 %148, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool163.not = icmp eq i8 %149, 0
  br i1 %tobool163.not, label %if.end157.for.inc178_crit_edge, label %pc87360_read_value.exit487

if.end157.for.inc178_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc178

pc87360_read_value.exit487:                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %lock.i411, i32 noundef 0) #8
  %150 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i413, align 4
  %add.i452 = add i32 %151, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i453 = and i32 %add.i452, 1048575
  %add.i.i454 = or i32 %and.i.i453, -18874368
  %152 = inttoptr i32 %add.i.i454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %152, i8 %124) #8, !srcloc !539
  %153 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i413, align 4
  %add6.i457 = add i32 %154, 13
  %and.i14.i458 = and i32 %add6.i457, 1048575
  %add.i15.i459 = or i32 %and.i14.i458, -18874368
  %155 = inttoptr i32 %add.i15.i459 to ptr
  %156 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %155) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i411) #8
  %arrayidx168 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 26, i32 %indvars.iv515
  %157 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx168, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i411, i32 noundef 0) #8
  %158 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i413, align 4
  %add.i465 = add i32 %159, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i466 = and i32 %add.i465, 1048575
  %add.i.i467 = or i32 %and.i.i466, -18874368
  %160 = inttoptr i32 %add.i.i467 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %160, i8 %124) #8, !srcloc !539
  %161 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i413, align 4
  %add6.i470 = add i32 %162, 12
  %and.i14.i471 = and i32 %add6.i470, 1048575
  %add.i15.i472 = or i32 %and.i14.i471, -18874368
  %163 = inttoptr i32 %add.i15.i472 to ptr
  %164 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %163) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i411) #8
  %arrayidx172 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 27, i32 %indvars.iv515
  %165 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %arrayidx172, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i411, i32 noundef 0) #8
  %166 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i413, align 4
  %add.i478 = add i32 %167, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i.i479 = and i32 %add.i478, 1048575
  %add.i.i480 = or i32 %and.i.i479, -18874368
  %168 = inttoptr i32 %add.i.i480 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %168, i8 %124) #8, !srcloc !539
  %169 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i413, align 4
  %add6.i483 = add i32 %170, 14
  %and.i14.i484 = and i32 %add6.i483, 1048575
  %add.i15.i485 = or i32 %and.i14.i484, -18874368
  %171 = inttoptr i32 %add.i15.i485 to ptr
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %171) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i411) #8
  %arrayidx176 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 28, i32 %indvars.iv515
  %173 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx176, align 1
  br label %for.inc178

for.inc178:                                       ; preds = %pc87360_read_value.exit487, %if.end157.for.inc178_crit_edge
  %indvars.iv.next516 = add nuw nsw i32 %indvars.iv515, 1
  %174 = ptrtoint ptr %tempnr to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %tempnr, align 2
  %176 = zext i8 %175 to i32
  %cmp135 = icmp ult i32 %indvars.iv.next516, %176
  br i1 %cmp135, label %for.inc178.pc87360_write_value.exit435_crit_edge, label %for.end180

for.inc178.pc87360_write_value.exit435_crit_edge: ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit435

for.end180:                                       ; preds = %for.inc178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %phi.cmp517 = icmp eq i8 %175, 0
  br i1 %phi.cmp517, label %for.end180.if.end187_crit_edge, label %if.then183

for.end180.if.end187_crit_edge:                   ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then183:                                       ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i488 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i488, i32 noundef 0) #8
  %arrayidx4.i489 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %177 = ptrtoint ptr %arrayidx4.i489 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx4.i489, align 4
  %and.i14.i490 = and i32 %178, 1048575
  %add.i15.i491 = or i32 %and.i14.i490, -18874368
  %179 = inttoptr i32 %add.i15.i491 to ptr
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %179) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !536
  tail call void @mutex_unlock(ptr noundef %lock.i488) #8
  %conv186 = and i8 %180, 63
  %temp_alarms = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 30
  %181 = ptrtoint ptr %temp_alarms to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv186, ptr %temp_alarms, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %for.end180.if.end187_crit_edge, %if.end131.if.end187_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %182 = load volatile i32, ptr @jiffies, align 128
  %183 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %last_updated, align 4
  %valid189 = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 4
  %184 = ptrtoint ptr %valid189 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %valid189, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.end187, %lor.lhs.false.if.end190_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc87360_autodiv(ptr noundef %dev, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 11, i32 %nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 12, i32 %nr
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 10, i32 %nr
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %8)
  %cmp = icmp ugt i8 %8, -33
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %while.cond.preheader

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.cond.preheader:                             ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool42.not150 = icmp sgt i8 %10, -1
  br i1 %tobool42.not150, label %land.lhs.true.lr.ph, label %while.cond.preheader.if.end93_crit_edge

while.cond.preheader.if.end93_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true.lr.ph:                              ; preds = %while.cond.preheader
  %add89 = add i32 %nr, 1
  br label %land.lhs.true

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = and i8 %5, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %11)
  %cmp9.not = icmp eq i8 %11, 96
  br i1 %cmp9.not, label %if.then.if.end93_crit_edge, label %if.then11

if.then.if.end93_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i8 %5, 32
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %add, ptr %arrayidx1, align 1
  %13 = lshr i8 %3, 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx, align 1
  %arrayidx21 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 10, i32 %nr
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  %17 = lshr i8 %16, 1
  store i8 %17, ptr %arrayidx21, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_autodiv.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_autodiv, %if.end93)) #8
          to label %if.then30 [label %if.end93], !srcloc !537

if.then30:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1, align 1
  %20 = lshr i8 %19, 5
  %21 = and i8 %20, 3
  %and35 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 1, %and35
  %add36 = add i32 %nr, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_autodiv.__UNIQUE_ID_ddebug204, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %shl, i32 noundef %add36) #8
  br label %if.end93

land.lhs.true:                                    ; preds = %do.end92.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %22 = phi i8 [ %10, %land.lhs.true.lr.ph ], [ %36, %do.end92.land.lhs.true_crit_edge ]
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %24)
  %cmp46 = icmp ult i8 %24, 85
  br i1 %cmp46, label %land.rhs, label %land.lhs.true.if.end93_crit_edge

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.rhs:                                         ; preds = %land.lhs.true
  %25 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1, align 1
  %27 = and i8 %26, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp52.not = icmp eq i8 %27, 0
  br i1 %cmp52.not, label %land.rhs.if.end93_crit_edge, label %while.body

land.rhs.if.end93_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

while.body:                                       ; preds = %land.rhs
  %sub = add i8 %26, -32
  %28 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %sub, ptr %arrayidx1, align 1
  %shl61 = shl nuw i8 %22, 1
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %shl61, ptr %arrayidx, align 1
  %shl66 = shl nuw i8 %24, 1
  %30 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %shl66, ptr %arrayidx2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_autodiv.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_autodiv, %do.end92)) #8
          to label %if.then82 [label %do.end92], !srcloc !537

if.then82:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1, align 1
  %33 = lshr i8 %32, 5
  %34 = and i8 %33, 3
  %and87 = zext i8 %34 to i32
  %shl88 = shl nuw nsw i32 1, %and87
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87360_autodiv.__UNIQUE_ID_ddebug205, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %shl88, i32 noundef %add89) #8
  br label %do.end92

do.end92:                                         ; preds = %if.then82, %while.body
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %tobool42.not = icmp sgt i8 %36, -1
  br i1 %tobool42.not, label %do.end92.land.lhs.true_crit_edge, label %do.end92.if.end93_crit_edge

do.end92.if.end93_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.end92.land.lhs.true_crit_edge:                 ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end93:                                         ; preds = %do.end92.if.end93_crit_edge, %land.rhs.if.end93_crit_edge, %land.lhs.true.if.end93_crit_edge, %if.then30, %if.then11, %if.then.if.end93_crit_edge, %while.cond.preheader.if.end93_crit_edge
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %38)
  %cmp98.not = icmp eq i8 %3, %38
  br i1 %cmp98.not, label %if.end93.if.end105_crit_edge, label %if.then100

if.end93.if.end105_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %39 = mul i32 %nr, 3
  %conv102 = add i32 %39, 6
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 0
  %40 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i = and i32 %conv102, 255
  %add6.i = add i32 %41, %conv5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  tail call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %42 = inttoptr i32 %add.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %38) #8, !srcloc !539
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end93.if.end105_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_status_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end.cond.end13_crit_edge, label %cond.false

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false:                                       ; preds = %if.end
  %mul = shl i32 %4, 8
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_vref, align 2
  %conv = zext i16 %6 to i32
  %mul2 = mul nuw nsw i32 %conv, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp3.not = icmp slt i32 %mul, %mul2
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end13_crit_edge

cond.false.cond.end13_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div35 = lshr i32 %conv, 1
  %add = add i32 %div35, %mul
  %div12 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div12 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false6, %cond.false.cond.end13_crit_edge, %if.end.cond.end13_crit_edge
  %cond14 = phi i8 [ 0, %if.end.cond.end13_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end13_crit_edge ]
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 17, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond14, ptr %arrayidx, align 1
  %10 = load i32, ptr %index, align 4
  %conv17 = trunc i32 %10 to i8
  %arrayidx20 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 17, i32 %10
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.not.i = icmp eq i8 %conv17, -1
  br i1 %cmp.not.i, label %cond.end13.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end13.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv17) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end13.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %17, 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %18 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %12) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end.cond.end13_crit_edge, label %cond.false

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false:                                       ; preds = %if.end
  %mul = shl i32 %4, 8
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_vref, align 2
  %conv = zext i16 %6 to i32
  %mul2 = mul nuw nsw i32 %conv, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp3.not = icmp slt i32 %mul, %mul2
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end13_crit_edge

cond.false.cond.end13_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div35 = lshr i32 %conv, 1
  %add = add i32 %div35, %mul
  %div12 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div12 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false6, %cond.false.cond.end13_crit_edge, %if.end.cond.end13_crit_edge
  %cond14 = phi i8 [ 0, %if.end.cond.end13_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end13_crit_edge ]
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 18, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond14, ptr %arrayidx, align 1
  %10 = load i32, ptr %index, align 4
  %conv17 = trunc i32 %10 to i8
  %arrayidx20 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 18, i32 %10
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.not.i = icmp eq i8 %conv17, -1
  br i1 %cmp.not.i, label %cond.end13.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end13.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv17) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end13.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %17, 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %18 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %12) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 4
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_in_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %in_alarms = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %in_alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in_alarms, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_input_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_status_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_min_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end.cond.end13_crit_edge, label %cond.false

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false:                                       ; preds = %if.end
  %mul = shl i32 %4, 8
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_vref, align 2
  %conv = zext i16 %6 to i32
  %mul2 = mul nuw nsw i32 %conv, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp3.not = icmp slt i32 %mul, %mul2
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end13_crit_edge

cond.false.cond.end13_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div35 = lshr i32 %conv, 1
  %add = add i32 %div35, %mul
  %div12 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div12 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false6, %cond.false.cond.end13_crit_edge, %if.end.cond.end13_crit_edge
  %cond14 = phi i8 [ 0, %if.end.cond.end13_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end13_crit_edge ]
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 17, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond14, ptr %arrayidx, align 1
  %10 = load i32, ptr %index, align 4
  %conv17 = trunc i32 %10 to i8
  %arrayidx20 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 17, i32 %10
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.not.i = icmp eq i8 %conv17, -1
  br i1 %cmp.not.i, label %cond.end13.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end13.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv17) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end13.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %17, 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %18 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %12) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_max_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end.cond.end13_crit_edge, label %cond.false

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false:                                       ; preds = %if.end
  %mul = shl i32 %4, 8
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_vref, align 2
  %conv = zext i16 %6 to i32
  %mul2 = mul nuw nsw i32 %conv, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp3.not = icmp slt i32 %mul, %mul2
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end13_crit_edge

cond.false.cond.end13_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div35 = lshr i32 %conv, 1
  %add = add i32 %div35, %mul
  %div12 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div12 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false6, %cond.false.cond.end13_crit_edge, %if.end.cond.end13_crit_edge
  %cond14 = phi i8 [ 0, %if.end.cond.end13_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end13_crit_edge ]
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 18, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond14, ptr %arrayidx, align 1
  %10 = load i32, ptr %index, align 4
  %conv17 = trunc i32 %10 to i8
  %arrayidx20 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 18, i32 %10
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.not.i = icmp eq i8 %conv17, -1
  br i1 %cmp.not.i, label %cond.end13.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end13.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv17) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end13.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %17, 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %18 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %12) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_crit_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %sub = add i32 %1, -11
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 19, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_vref, align 2
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %add = add nuw nsw i32 %mul, 128
  %div4 = lshr i32 %add, 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %div4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end.cond.end13_crit_edge, label %cond.false

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false:                                       ; preds = %if.end
  %mul = shl i32 %4, 8
  %in_vref = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %in_vref to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_vref, align 2
  %conv = zext i16 %6 to i32
  %mul2 = mul nuw nsw i32 %conv, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul2)
  %cmp3.not = icmp slt i32 %mul, %mul2
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end13_crit_edge

cond.false.cond.end13_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end13

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div36 = lshr i32 %conv, 1
  %add = add i32 %div36, %mul
  %div12 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div12 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false6, %cond.false.cond.end13_crit_edge, %if.end.cond.end13_crit_edge
  %cond14 = phi i8 [ 0, %if.end.cond.end13_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end13_crit_edge ]
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %sub = add i32 %8, -11
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 19, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond14, ptr %arrayidx, align 1
  %10 = load i32, ptr %index, align 4
  %conv17 = trunc i32 %10 to i8
  %sub20 = add i32 %10, -11
  %arrayidx21 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 19, i32 %sub20
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.not.i = icmp eq i8 %conv17, -1
  br i1 %cmp.not.i, label %cond.end13.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end13.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv17) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end13.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %17, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %18 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %12) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_min_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_max_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_crit_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 25, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_status_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 29, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 26, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -55000, i32 %4)
  %cmp = icmp slt i32 %4, -55000
  br i1 %cmp, label %if.end.cond.end11_crit_edge, label %cond.false

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 127000, i32 %4)
  %cmp2 = icmp sgt i32 %4, 127000
  br i1 %cmp2, label %cond.false.cond.end11_crit_edge, label %cond.false4

cond.false.cond.end11_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #10
  %5 = trunc i32 %4 to i16
  %div29.lhs.trunc = sub i16 500, %5
  %div2930 = udiv i16 %div29.lhs.trunc, 1000
  %div29.zext = zext i16 %div2930 to i32
  %div29.neg = sub nsw i32 0, %div29.zext
  br label %cond.end11

cond.false7:                                      ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %4, 500
  %div831 = udiv i32 %add, 1000
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %cond.true6, %cond.false.cond.end11_crit_edge, %if.end.cond.end11_crit_edge
  %cond12 = phi i32 [ -55, %if.end.cond.end11_crit_edge ], [ 127, %cond.false.cond.end11_crit_edge ], [ %div29.neg, %cond.true6 ], [ %div831, %cond.false7 ]
  %conv = trunc i32 %cond12 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 26, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %9 = load i32, ptr %index, align 4
  %conv14 = trunc i32 %9 to i8
  %arrayidx17 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 26, i32 %9
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv14)
  %cmp.not.i = icmp eq i8 %conv14, -1
  br i1 %cmp.not.i, label %cond.end11.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end11.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv14) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end11.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %16, 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %17 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %11) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -55000, i32 %4)
  %cmp = icmp slt i32 %4, -55000
  br i1 %cmp, label %if.end.cond.end11_crit_edge, label %cond.false

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 127000, i32 %4)
  %cmp2 = icmp sgt i32 %4, 127000
  br i1 %cmp2, label %cond.false.cond.end11_crit_edge, label %cond.false4

cond.false.cond.end11_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #10
  %5 = trunc i32 %4 to i16
  %div29.lhs.trunc = sub i16 500, %5
  %div2930 = udiv i16 %div29.lhs.trunc, 1000
  %div29.zext = zext i16 %div2930 to i32
  %div29.neg = sub nsw i32 0, %div29.zext
  br label %cond.end11

cond.false7:                                      ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %4, 500
  %div831 = udiv i32 %add, 1000
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %cond.true6, %cond.false.cond.end11_crit_edge, %if.end.cond.end11_crit_edge
  %cond12 = phi i32 [ -55, %if.end.cond.end11_crit_edge ], [ 127, %cond.false.cond.end11_crit_edge ], [ %div29.neg, %cond.true6 ], [ %div831, %cond.false7 ]
  %conv = trunc i32 %cond12 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 27, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %9 = load i32, ptr %index, align 4
  %conv14 = trunc i32 %9 to i8
  %arrayidx17 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 27, i32 %9
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv14)
  %cmp.not.i = icmp eq i8 %conv14, -1
  br i1 %cmp.not.i, label %cond.end11.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end11.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv14) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end11.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %16, 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %17 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %11) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 28, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -55000, i32 %4)
  %cmp = icmp slt i32 %4, -55000
  br i1 %cmp, label %if.end.cond.end11_crit_edge, label %cond.false

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 127000, i32 %4)
  %cmp2 = icmp sgt i32 %4, 127000
  br i1 %cmp2, label %cond.false.cond.end11_crit_edge, label %cond.false4

cond.false.cond.end11_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false4:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #10
  %5 = trunc i32 %4 to i16
  %div29.lhs.trunc = sub i16 500, %5
  %div2930 = udiv i16 %div29.lhs.trunc, 1000
  %div29.zext = zext i16 %div2930 to i32
  %div29.neg = sub nsw i32 0, %div29.zext
  br label %cond.end11

cond.false7:                                      ; preds = %cond.false4
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %4, 500
  %div831 = udiv i32 %add, 1000
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %cond.true6, %cond.false.cond.end11_crit_edge, %if.end.cond.end11_crit_edge
  %cond12 = phi i32 [ -55, %if.end.cond.end11_crit_edge ], [ 127, %cond.false.cond.end11_crit_edge ], [ %div29.neg, %cond.true6 ], [ %div831, %cond.false7 ]
  %conv = trunc i32 %cond12 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 28, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %9 = load i32, ptr %index, align 4
  %conv14 = trunc i32 %9 to i8
  %arrayidx17 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 28, i32 %9
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv14)
  %cmp.not.i = icmp eq i8 %conv14, -1
  br i1 %cmp.not.i, label %cond.end11.pc87360_write_value.exit_crit_edge, label %if.then.i

cond.end11.pc87360_write_value.exit_crit_edge:    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc87360_write_value.exit

if.then.i:                                        ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv14) #8, !srcloc !539
  br label %pc87360_write_value.exit

pc87360_write_value.exit:                         ; preds = %if.then.i, %cond.end11.pc87360_write_value.exit_crit_edge
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %16, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %17 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %11) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pc87360_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pc87360_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 29, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 29, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 29, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_fault_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 29, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 6
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_temp_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %temp_alarms = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %temp_alarms to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_alarms, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_input_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx7 = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 3
  %and = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, %and
  %div = udiv i32 480000, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %cond)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_status_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 7
  %and = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %5 = and i8 %4, 3
  %and = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %and
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx7 = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 3
  %and = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, %and
  %div = udiv i32 480000, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %cond)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %fan_min = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fan_min) #8
  %2 = ptrtoint ptr %fan_min to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fan_min, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %fan_min) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %fan_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fan_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %4)
  %cmp = icmp slt i32 %4, 101
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %fan_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fan_min, align 4
  %index585 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  br label %while.end

cond.end:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 12, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 3
  %and = zext i8 %11 to i32
  %mul = shl i32 %4, %and
  %div = sdiv i32 480000, %mul
  %12 = ptrtoint ptr %fan_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %fan_min, align 4
  %index5 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div)
  %cmp282 = icmp sgt i32 %div, 255
  br i1 %cmp282, label %cond.end.land.rhs_crit_edge, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cond.end.land.rhs_crit_edge:                      ; preds = %cond.end
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %cond.end.land.rhs_crit_edge
  %13 = phi i32 [ %.pr, %while.body.land.rhs_crit_edge ], [ %div, %cond.end.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index5, align 4
  %arrayidx6 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 12, i32 %15
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6, align 1
  %18 = and i8 %17, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %18)
  %cmp9.not = icmp eq i8 %18, 96
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %shr1180 = lshr i32 %13, 1
  %19 = ptrtoint ptr %fan_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr1180, ptr %fan_min, align 4
  %arrayidx13 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 10, i32 %15
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 1
  %22 = lshr i8 %21, 1
  store i8 %22, ptr %arrayidx13, align 1
  %23 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index5, align 4
  %arrayidx19 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 12, i32 %24
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19, align 1
  %add = add i8 %26, 32
  store i8 %add, ptr %arrayidx19, align 1
  %.pr = load i32, ptr %fan_min, align 4
  %cmp2 = icmp sgt i32 %.pr, 255
  br i1 %cmp2, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %cond.end.while.end_crit_edge, %cond.end.thread
  %index587 = phi ptr [ %index5, %cond.end.while.end_crit_edge ], [ %index585, %cond.end.thread ], [ %index5, %while.body.while.end_crit_edge ], [ %index5, %land.rhs.while.end_crit_edge ]
  %.lcssa = phi i32 [ %div, %cond.end.while.end_crit_edge ], [ 0, %cond.end.thread ], [ %13, %land.rhs.while.end_crit_edge ], [ %.pr, %while.body.while.end_crit_edge ]
  %27 = call i32 @llvm.smin.i32(i32 %.lcssa, i32 255)
  %28 = trunc i32 %27 to i8
  %29 = ptrtoint ptr %index587 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index587, align 4
  %arrayidx31 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 11, i32 %30
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %arrayidx31, align 1
  %32 = load i32, ptr %index587, align 4
  %33 = mul i32 %32, 3
  %conv35 = add i32 %33, 6
  %arrayidx38 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 11, i32 %32
  %34 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 0
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i = and i32 %conv35, 255
  %add6.i = add i32 %37, %conv5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %38 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %35) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %39 = ptrtoint ptr %index587 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index587, align 4
  %41 = mul i32 %40, 3
  %conv42 = add i32 %41, 8
  %arrayidx45 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 12, i32 %40
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx45, align 1
  %44 = and i8 %43, -7
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %45 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i76 = and i32 %conv42, 255
  %add6.i77 = add i32 %46, %conv5.i76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i78 = and i32 %add6.i77, 1048575
  %add.i14.i79 = or i32 %and.i13.i78, -18874368
  %47 = inttoptr i32 %add.i14.i79 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %44) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %while.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fan_min) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87360_update_device(ptr noundef %dev)
  %fan_conf = getelementptr inbounds %struct.pc87360_data, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %fan_conf to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fan_conf, align 4
  %conv = zext i16 %1 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %mul = mul i32 %3, 3
  %add = add i32 %mul, 4
  %4 = shl nuw i32 1, %add
  %5 = and i32 %4, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %arrayidx5 = getelementptr %struct.pc87360_data, ptr %call, i32 0, i32 13, i32 %3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %8 = sext i1 %tobool.not to i8
  %cond.in = xor i8 %7, %8
  %cond = zext i8 %cond.in to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !541
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %fan_conf = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %fan_conf to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fan_conf, align 4
  %conv = zext i16 %6 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %mul = mul i32 %8, 3
  %add = add i32 %mul, 4
  %9 = shl nuw i32 1, %add
  %10 = and i32 %9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %sub.i = sub i32 255, %4
  %spec.select.i = select i1 %tobool.not.i, i32 %4, i32 %sub.i
  %11 = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 255) #8
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0) #8
  %13 = trunc i32 %12 to i8
  %arrayidx = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 13, i32 %8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %17 = shl i32 %16, 1
  %arrayidx10 = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 13, i32 %16
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10, align 1
  %lock.i = getelementptr inbounds %struct.pc87360_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %arrayidx4.i = getelementptr %struct.pc87360_data, ptr %1, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %conv7 = and i32 %17, 254
  %conv5.i = or i32 %conv7, 1
  %add6.i = add i32 %conv5.i, %21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !538
  call void @arm_heavy_mb() #8
  %and.i13.i = and i32 %add6.i, 1048575
  %add.i14.i = or i32 %and.i13.i, -18874368
  %22 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %19) #8, !srcloc !539
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.174, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pc87360_find(i32 noundef %sioaddr) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %0 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 32) #8, !srcloc !539
  %add1.i = add i32 %sioaddr, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %2 = inttoptr i32 %add3.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  %conv6.i = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv6.i, %cond.false ]
  %trunc = trunc i32 %cond to i16
  %switch.tableidx = add i16 %trunc, -225
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 9
  br i1 %4, label %switch.hole_check, label %cond.end.sw.default_crit_edge

cond.end.sw.default_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %cond.end.sw.default_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !544
  tail call void @arm_heavy_mb() #8
  %and.i7 = and i32 %sioaddr, 1048575
  %add.i8 = or i32 %and.i7, -18874368
  %5 = inttoptr i32 %add.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 2) #8, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !545
  tail call void @arm_heavy_mb() #8
  %add3.i9 = add i32 %sioaddr, 1
  %and4.i = and i32 %add3.i9, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %6 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 2) #8, !srcloc !539
  br label %cleanup

switch.hole_check:                                ; preds = %cond.end
  %switch.shifted = lshr i16 409, %switch.tableidx
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %8 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.pc87360_find, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv5 = trunc i32 %cond to i8
  store i8 %conv5, ptr @devid, align 1
  %and.i10 = and i32 %sioaddr, 1048575
  %add.i11 = or i32 %and.i10, -18874368
  %10 = inttoptr i32 %add.i11 to ptr
  %add4.i = add i32 %sioaddr, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %11 = inttoptr i32 %add6.i to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup
  %i.062 = phi i32 [ 0, %switch.lookup ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i8], ptr @logdev, i32 0, i32 %i.062
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !546
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 7) #8, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !547
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %13) #8, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 48) #8, !srcloc !539
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = zext i8 %13 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %conv13) #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 96) #8, !srcloc !539
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  %conv6.i23 = zext i8 %16 to i16
  %shl = shl nuw i16 %conv6.i23, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 97) #8, !srcloc !539
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  %conv6.i29 = zext i8 %17 to i16
  %or = or i16 %shl, %conv6.i29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %tobool18.not = icmp eq i16 %or, 0
  br i1 %tobool18.not, label %do.end22, label %if.end27

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv25 = zext i8 %13 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %conv25) #12
  br label %for.inc

if.end27:                                         ; preds = %if.end
  %arrayidx28 = getelementptr i16, ptr @extra_isa, i32 %i.062
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or, ptr %arrayidx28, align 2
  %19 = zext i32 %i.062 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %i.062, label %if.end27.for.inc_crit_edge [
    i32 0, label %if.then31
    i32 1, label %if.then110
  ]

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then31:                                        ; preds = %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -16) #8, !srcloc !539
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  store i8 %20, ptr @confreg.0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -15) #8, !srcloc !539
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  store i8 %21, ptr @confreg.1, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_find.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_find, %do.body55)) #8
          to label %if.then43 [label %do.body55], !srcloc !537

if.then43:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %22 = load i8, ptr @confreg.0, align 1
  %conv44 = zext i8 %22 to i32
  %23 = lshr i32 %conv44, 2
  %and45 = and i32 %23, 1
  %24 = lshr i32 %conv44, 3
  %and48 = and i32 %24, 1
  %25 = lshr i32 %conv44, 4
  %and51 = and i32 %25, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pc87360_find.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.186, i32 noundef 1, i32 noundef %and45, i32 noundef %and48, i32 noundef %and51) #8
  br label %do.body55

do.body55:                                        ; preds = %if.then43, %if.then31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_find.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_find, %do.body82)) #8
          to label %if.then69 [label %do.body82], !srcloc !537

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %26 = load i8, ptr @confreg.0, align 1
  %conv70 = zext i8 %26 to i32
  %27 = lshr i32 %conv70, 5
  %and72 = and i32 %27, 1
  %28 = lshr i32 %conv70, 6
  %and75 = and i32 %28, 1
  %29 = lshr i32 %conv70, 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pc87360_find.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.186, i32 noundef 2, i32 noundef %and72, i32 noundef %and75, i32 noundef %29) #8
  br label %do.body82

do.body82:                                        ; preds = %if.then69, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87360_find.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87360_find, %for.inc)) #8
          to label %if.then96 [label %for.inc], !srcloc !537

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %30 = load i8, ptr @confreg.1, align 1
  %conv97 = zext i8 %30 to i32
  %and98 = and i32 %conv97, 1
  %31 = lshr i32 %conv97, 1
  %and101 = and i32 %31, 1
  %32 = lshr i32 %conv97, 2
  %and104 = and i32 %32, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pc87360_find.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.186, i32 noundef 3, i32 noundef %and98, i32 noundef %and101, i32 noundef %and104) #8
  br label %for.inc

if.then110:                                       ; preds = %if.end27
  %33 = load i8, ptr @devid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %33)
  %cmp112 = icmp eq i8 %33, -23
  br i1 %cmp112, label %if.then114, label %if.then110.for.inc_crit_edge

if.then110.for.inc_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then114:                                       ; preds = %if.then110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 43) #8, !srcloc !539
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  store i8 %34, ptr @confreg.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !542
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 37) #8, !srcloc !539
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #8, !srcloc !535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !543
  store i8 %35, ptr @confreg.3, align 1
  %36 = load i8, ptr @confreg.2, align 1
  %37 = and i8 %36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool121.not = icmp eq i8 %37, 0
  br i1 %tobool121.not, label %if.then114.if.end128_crit_edge, label %do.end125

if.then114.if.end128_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

do.end125:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #12
  br label %if.end128

if.end128:                                        ; preds = %do.end125, %if.then114.if.end128_crit_edge
  %38 = load i8, ptr @confreg.3, align 1
  %conv129 = zext i8 %38 to i32
  %and130 = and i32 %conv129, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end128.for.inc_crit_edge, label %do.end135

if.end128.for.inc_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %39 = lshr i32 %conv129, 5
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %39) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end135, %if.end128.for.inc_crit_edge, %if.then110.for.inc_crit_edge, %if.then96, %do.body82, %if.end27.for.inc_crit_edge, %do.end22, %do.end
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !544
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 2) #8, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !545
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 2) #8, !srcloc !539
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default
  %retval.0 = phi i32 [ -19, %sw.default ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pc87360_device_add(i16 noundef zeroext %address) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca [3 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %res) #8
  %conv = zext i16 %address to i32
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv) #8
  store ptr %call, ptr @pdev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %res, i32 0, i32 96)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.058 = phi i32 [ 0, %if.end ], [ %inc19, %for.inc.for.body_crit_edge ]
  %res_count.057 = phi i32 [ 0, %if.end ], [ %res_count.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i16], ptr @extra_isa, i32 0, i32 %i.058
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool3.not = icmp eq i16 %2, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i16 %2 to i32
  %arrayidx8 = getelementptr [3 x %struct.resource], ptr %res, i32 0, i32 %res_count.057
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv7, ptr %arrayidx8, align 4
  %sub = add nuw nsw i32 %conv7, 15
  %end = getelementptr [3 x %struct.resource], ptr %res, i32 0, i32 %res_count.057, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %end, align 4
  %name = getelementptr [3 x %struct.resource], ptr %res, i32 0, i32 %res_count.057, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 4
  %flags = getelementptr [3 x %struct.resource], ptr %res, i32 0, i32 %res_count.057, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %flags, align 4
  %inc = add i32 %res_count.057, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %res_count.1 = phi i32 [ %inc, %if.end5 ], [ %res_count.057, %for.body.for.inc_crit_edge ]
  %inc19 = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc19, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call21 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %res, i32 noundef %res_count.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef %call21) #12
  br label %exit_device_put

if.end29:                                         ; preds = %for.end
  %7 = load ptr, ptr @pdev, align 4
  %call30 = call i32 @platform_device_add(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %do.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %call30) #12
  br label %exit_device_put

exit_device_put:                                  ; preds = %do.end35, %do.end26
  %err.0 = phi i32 [ %call21, %do.end26 ], [ %call30, %do.end35 ]
  %8 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end29.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end29.cleanup_crit_edge ], [ %err.0, %exit_device_put ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !69, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91, !92, !94, !95, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !273, !275, !276, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !475, !477, !479, !480, !481, !482, !484, !485, !486, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !503, !505, !506, !507, !509, !510, !511, !513, !515, !516, !517, !518, !520, !521, !522, !524, !525}
!llvm.module.flags = !{!526, !527, !528, !529, !530, !531, !532, !533}
!llvm.ident = !{!534}

!0 = !{ptr @__param_init, !1, !"__param_init", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pc87360.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_inittype183, !1, !"__UNIQUE_ID_inittype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_init184, !4, !"__UNIQUE_ID_init184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pc87360.c", i32 45, i32 1}
!5 = !{ptr @__param_force_id, !6, !"__param_force_id", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pc87360.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_force_idtype185, !6, !"__UNIQUE_ID_force_idtype185", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_force_id186, !9, !"__UNIQUE_ID_force_id186", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/pc87360.c", i32 54, i32 1}
!10 = !{ptr @__UNIQUE_ID_author207, !11, !"__UNIQUE_ID_author207", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pc87360.c", i32 1781, i32 1}
!12 = !{ptr @__UNIQUE_ID_description208, !13, !"__UNIQUE_ID_description208", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pc87360.c", i32 1782, i32 1}
!14 = !{ptr @__UNIQUE_ID_file209, !15, !"__UNIQUE_ID_file209", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pc87360.c", i32 1783, i32 1}
!16 = !{ptr @__UNIQUE_ID_license210, !15, !"__UNIQUE_ID_license210", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_pc87360__211_1785_pc87360_init6, !18, !"__initcall__kmod_pc87360__211_1785_pc87360_init6", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/pc87360.c", i32 1785, i32 1}
!19 = !{ptr @__exitcall_pc87360_exit, !20, !"__exitcall_pc87360_exit", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/pc87360.c", i32 1786, i32 1}
!21 = !{ptr @pdev, !22, !"pdev", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/pc87360.c", i32 39, i32 32}
!23 = !{ptr @force_id, !24, !"force_id", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/pc87360.c", i32 52, i32 23}
!25 = !{ptr @__param_str_init, !1, !"__param_str_init", i1 false, i1 false}
!26 = !{ptr @init, !27, !"init", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pc87360.c", i32 43, i32 12}
!28 = !{ptr @__param_str_force_id, !6, !"__param_str_force_id", i1 false, i1 false}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/pc87360.c", i32 234, i32 11}
!31 = !{ptr @pc87360_driver, !32, !"pc87360_driver", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/pc87360.c", i32 232, i32 31}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pc87360.c", i32 1212, i32 10}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/pc87360.c", i32 1216, i32 10}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/pc87360.c", i32 1220, i32 10}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/pc87360.c", i32 1226, i32 10}
!41 = !{ptr @pc87360_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/pc87360.c", i32 1234, i32 2}
!43 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pc87360_probe.__key.6, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/pc87360.c", i32 1235, i32 2}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/pc87360.c", i32 1243, i32 4}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pc87360_probe._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @pc87360_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/pc87360.c", i32 1267, i32 3}
!57 = !{ptr @pc87360_probe.__UNIQUE_ID_ddebug190, !56, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!58 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @devid, !61, !"devid", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/pc87360.c", i32 38, i32 11}
!62 = !{ptr @extra_isa, !63, !"extra_isa", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/pc87360.c", i32 40, i32 23}
!64 = distinct !{null, !65, !"confreg", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/pc87360.c", i32 41, i32 11}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/pc87360.c", i32 1407, i32 3}
!68 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pc87360_init_device._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @pc87360_init_device._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/pc87360.c", i32 1418, i32 3}
!74 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug191, !73, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/pc87360.c", i32 1422, i32 5}
!77 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug192, !76, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/pc87360.c", i32 1435, i32 2}
!80 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug193, !79, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/pc87360.c", i32 1441, i32 3}
!83 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug194, !82, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pc87360.c", i32 1443, i32 2}
!86 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug195, !85, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!87 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug196, !88, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/pc87360.c", i32 1449, i32 3}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/pc87360.c", i32 1453, i32 5}
!91 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug197, !90, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/pc87360.c", i32 1472, i32 6}
!94 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug198, !93, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!95 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug199, !96, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/pc87360.c", i32 1482, i32 6}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/pc87360.c", i32 1496, i32 3}
!99 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug200, !98, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/pc87360.c", i32 1498, i32 4}
!102 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug201, !101, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/pc87360.c", i32 1509, i32 3}
!105 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug202, !104, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/pc87360.c", i32 1511, i32 4}
!108 = !{ptr @pc87360_init_device.__UNIQUE_ID_ddebug203, !107, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!109 = !{ptr @pc8736x_vin_group, !110, !"pc8736x_vin_group", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/pc87360.c", i32 639, i32 37}
!111 = !{ptr @pc8736x_vin_attr_array, !112, !"pc8736x_vin_attr_array", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/pc87360.c", i32 622, i32 26}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/pc87360.c", i32 466, i32 2}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/pc87360.c", i32 467, i32 2}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/pc87360.c", i32 468, i32 2}
!119 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/pc87360.c", i32 469, i32 2}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/pc87360.c", i32 470, i32 2}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/pc87360.c", i32 471, i32 2}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/pc87360.c", i32 472, i32 2}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/pc87360.c", i32 473, i32 2}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/pc87360.c", i32 474, i32 2}
!131 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/pc87360.c", i32 475, i32 2}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/pc87360.c", i32 476, i32 2}
!135 = !{ptr @in_input, !136, !"in_input", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/pc87360.c", i32 465, i32 39}
!137 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/pc87360.c", i32 397, i32 22}
!139 = !{ptr @.str.42, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/pc87360.c", i32 1582, i32 3}
!141 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @pc87360_update_device.__UNIQUE_ID_ddebug206, !140, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!143 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/pc87360.c", i32 1547, i32 4}
!145 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @pc87360_autodiv.__UNIQUE_ID_ddebug204, !144, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/pc87360.c", i32 1559, i32 4}
!149 = !{ptr @pc87360_autodiv.__UNIQUE_ID_ddebug205, !148, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/pc87360.c", i32 479, i32 2}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/pc87360.c", i32 480, i32 2}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/pc87360.c", i32 481, i32 2}
!156 = !{ptr @.str.50, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/pc87360.c", i32 482, i32 2}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/pc87360.c", i32 483, i32 2}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/pc87360.c", i32 484, i32 2}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/pc87360.c", i32 485, i32 2}
!164 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/pc87360.c", i32 486, i32 2}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/pc87360.c", i32 487, i32 2}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/pc87360.c", i32 488, i32 2}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/pc87360.c", i32 489, i32 2}
!172 = !{ptr @in_status, !173, !"in_status", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/pc87360.c", i32 478, i32 39}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/pc87360.c", i32 492, i32 2}
!176 = !{ptr @.str.59, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/pc87360.c", i32 493, i32 2}
!178 = !{ptr @.str.60, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/pc87360.c", i32 494, i32 2}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/pc87360.c", i32 495, i32 2}
!182 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/pc87360.c", i32 496, i32 2}
!184 = !{ptr @.str.63, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/pc87360.c", i32 497, i32 2}
!186 = !{ptr @.str.64, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/pc87360.c", i32 498, i32 2}
!188 = !{ptr @.str.65, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/pc87360.c", i32 499, i32 2}
!190 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/pc87360.c", i32 500, i32 2}
!192 = !{ptr @.str.67, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/pc87360.c", i32 501, i32 2}
!194 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/pc87360.c", i32 502, i32 2}
!196 = !{ptr @in_min, !197, !"in_min", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/pc87360.c", i32 491, i32 39}
!198 = !{ptr @.str.69, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/pc87360.c", i32 505, i32 2}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/pc87360.c", i32 506, i32 2}
!202 = !{ptr @.str.71, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/pc87360.c", i32 507, i32 2}
!204 = !{ptr @.str.72, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/pc87360.c", i32 508, i32 2}
!206 = !{ptr @.str.73, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/pc87360.c", i32 509, i32 2}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/pc87360.c", i32 510, i32 2}
!210 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/pc87360.c", i32 511, i32 2}
!212 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/pc87360.c", i32 512, i32 2}
!214 = !{ptr @.str.77, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/pc87360.c", i32 513, i32 2}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/pc87360.c", i32 514, i32 2}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/pc87360.c", i32 515, i32 2}
!220 = !{ptr @in_max, !221, !"in_max", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/pc87360.c", i32 504, i32 39}
!222 = !{ptr @.str.80, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/pc87360.c", i32 547, i32 2}
!224 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/pc87360.c", i32 548, i32 2}
!226 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hwmon/pc87360.c", i32 549, i32 2}
!228 = !{ptr @.str.83, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/pc87360.c", i32 550, i32 2}
!230 = !{ptr @.str.84, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/pc87360.c", i32 551, i32 2}
!232 = !{ptr @.str.85, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/pc87360.c", i32 552, i32 2}
!234 = !{ptr @.str.86, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/pc87360.c", i32 553, i32 2}
!236 = !{ptr @.str.87, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/pc87360.c", i32 554, i32 2}
!238 = !{ptr @.str.88, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/pc87360.c", i32 555, i32 2}
!240 = !{ptr @.str.89, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/pc87360.c", i32 556, i32 2}
!242 = !{ptr @.str.90, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/pc87360.c", i32 557, i32 2}
!244 = !{ptr @in_min_alarm, !245, !"in_min_alarm", i1 false, i1 false}
!245 = !{!"../drivers/hwmon/pc87360.c", i32 546, i32 39}
!246 = !{ptr @.str.91, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/pc87360.c", i32 560, i32 2}
!248 = !{ptr @.str.92, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/pc87360.c", i32 561, i32 2}
!250 = !{ptr @.str.93, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/pc87360.c", i32 562, i32 2}
!252 = !{ptr @.str.94, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/pc87360.c", i32 563, i32 2}
!254 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/pc87360.c", i32 564, i32 2}
!256 = !{ptr @.str.96, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hwmon/pc87360.c", i32 565, i32 2}
!258 = !{ptr @.str.97, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/pc87360.c", i32 566, i32 2}
!260 = !{ptr @.str.98, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/pc87360.c", i32 567, i32 2}
!262 = !{ptr @.str.99, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/pc87360.c", i32 568, i32 2}
!264 = !{ptr @.str.100, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/pc87360.c", i32 569, i32 2}
!266 = !{ptr @.str.101, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/pc87360.c", i32 570, i32 2}
!268 = !{ptr @in_max_alarm, !269, !"in_max_alarm", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/pc87360.c", i32 559, i32 39}
!270 = !{ptr @.str.102, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/pc87360.c", i32 587, i32 8}
!272 = !{ptr @dev_attr_cpu0_vid, !271, !"dev_attr_cpu0_vid", i1 false, i1 false}
!273 = !{ptr @.str.103, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/pc87360.c", i32 612, i32 8}
!275 = !{ptr @dev_attr_vrm, !274, !"dev_attr_vrm", i1 false, i1 false}
!276 = !{ptr @.str.104, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/pc87360.c", i32 620, i32 8}
!278 = !{ptr @dev_attr_alarms_in, !277, !"dev_attr_alarms_in", i1 false, i1 false}
!279 = !{ptr @pc8736x_therm_group, !280, !"pc8736x_therm_group", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/pc87360.c", i32 840, i32 37}
!281 = !{ptr @pc8736x_therm_attr_array, !282, !"pc8736x_therm_attr_array", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/pc87360.c", i32 834, i32 26}
!283 = !{ptr @.str.105, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/hwmon/pc87360.c", i32 750, i32 2}
!285 = !{ptr @.str.106, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/pc87360.c", i32 751, i32 2}
!287 = !{ptr @.str.107, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/pc87360.c", i32 752, i32 2}
!289 = !{ptr @therm_input, !290, !"therm_input", i1 false, i1 false}
!290 = !{!"../drivers/hwmon/pc87360.c", i32 749, i32 39}
!291 = !{ptr @.str.108, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/pc87360.c", i32 755, i32 2}
!293 = !{ptr @.str.109, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/pc87360.c", i32 756, i32 2}
!295 = !{ptr @.str.110, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hwmon/pc87360.c", i32 757, i32 2}
!297 = !{ptr @therm_status, !298, !"therm_status", i1 false, i1 false}
!298 = !{!"../drivers/hwmon/pc87360.c", i32 754, i32 39}
!299 = !{ptr @.str.111, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/hwmon/pc87360.c", i32 760, i32 2}
!301 = !{ptr @.str.112, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hwmon/pc87360.c", i32 761, i32 2}
!303 = !{ptr @.str.113, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/pc87360.c", i32 762, i32 2}
!305 = !{ptr @therm_min, !306, !"therm_min", i1 false, i1 false}
!306 = !{!"../drivers/hwmon/pc87360.c", i32 759, i32 39}
!307 = !{ptr @.str.114, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hwmon/pc87360.c", i32 765, i32 2}
!309 = !{ptr @.str.115, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hwmon/pc87360.c", i32 766, i32 2}
!311 = !{ptr @.str.116, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/hwmon/pc87360.c", i32 767, i32 2}
!313 = !{ptr @therm_max, !314, !"therm_max", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/pc87360.c", i32 764, i32 39}
!315 = !{ptr @.str.117, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hwmon/pc87360.c", i32 770, i32 2}
!317 = !{ptr @.str.118, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/hwmon/pc87360.c", i32 771, i32 2}
!319 = !{ptr @.str.119, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hwmon/pc87360.c", i32 772, i32 2}
!321 = !{ptr @therm_crit, !322, !"therm_crit", i1 false, i1 false}
!322 = !{!"../drivers/hwmon/pc87360.c", i32 769, i32 39}
!323 = !{ptr @.str.120, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hwmon/pc87360.c", i32 809, i32 2}
!325 = !{ptr @.str.121, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/hwmon/pc87360.c", i32 810, i32 2}
!327 = !{ptr @.str.122, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/hwmon/pc87360.c", i32 811, i32 2}
!329 = !{ptr @therm_min_alarm, !330, !"therm_min_alarm", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/pc87360.c", i32 808, i32 39}
!331 = !{ptr @.str.123, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/pc87360.c", i32 814, i32 2}
!333 = !{ptr @.str.124, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/hwmon/pc87360.c", i32 815, i32 2}
!335 = !{ptr @.str.125, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/hwmon/pc87360.c", i32 816, i32 2}
!337 = !{ptr @therm_max_alarm, !338, !"therm_max_alarm", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/pc87360.c", i32 813, i32 39}
!339 = !{ptr @.str.126, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/hwmon/pc87360.c", i32 819, i32 2}
!341 = !{ptr @.str.127, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/hwmon/pc87360.c", i32 820, i32 2}
!343 = !{ptr @.str.128, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/hwmon/pc87360.c", i32 821, i32 2}
!345 = !{ptr @therm_crit_alarm, !346, !"therm_crit_alarm", i1 false, i1 false}
!346 = !{!"../drivers/hwmon/pc87360.c", i32 818, i32 39}
!347 = !{ptr @pc8736x_temp_attr_group, !348, !"pc8736x_temp_attr_group", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/pc87360.c", i32 1071, i32 37}
!349 = !{ptr @pc8736x_temp_attr, !350, !"pc8736x_temp_attr", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/pc87360.c", i32 1065, i32 26}
!351 = !{ptr @.str.129, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/hwmon/pc87360.c", i32 949, i32 2}
!353 = !{ptr @.str.130, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/hwmon/pc87360.c", i32 950, i32 2}
!355 = !{ptr @.str.131, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/hwmon/pc87360.c", i32 951, i32 2}
!357 = !{ptr @temp_input, !358, !"temp_input", i1 false, i1 false}
!358 = !{!"../drivers/hwmon/pc87360.c", i32 948, i32 39}
!359 = !{ptr @.str.132, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/hwmon/pc87360.c", i32 849, i32 22}
!361 = !{ptr @.str.133, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hwmon/pc87360.c", i32 954, i32 2}
!363 = !{ptr @.str.134, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/hwmon/pc87360.c", i32 955, i32 2}
!365 = !{ptr @.str.135, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/hwmon/pc87360.c", i32 956, i32 2}
!367 = !{ptr @temp_status, !368, !"temp_status", i1 false, i1 false}
!368 = !{!"../drivers/hwmon/pc87360.c", i32 953, i32 39}
!369 = !{ptr @.str.136, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/hwmon/pc87360.c", i32 959, i32 2}
!371 = !{ptr @.str.137, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hwmon/pc87360.c", i32 960, i32 2}
!373 = !{ptr @.str.138, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/hwmon/pc87360.c", i32 961, i32 2}
!375 = !{ptr @temp_min, !376, !"temp_min", i1 false, i1 false}
!376 = !{!"../drivers/hwmon/pc87360.c", i32 958, i32 39}
!377 = !{ptr @.str.139, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/pc87360.c", i32 964, i32 2}
!379 = !{ptr @.str.140, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/pc87360.c", i32 965, i32 2}
!381 = !{ptr @.str.141, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/hwmon/pc87360.c", i32 966, i32 2}
!383 = !{ptr @temp_max, !384, !"temp_max", i1 false, i1 false}
!384 = !{!"../drivers/hwmon/pc87360.c", i32 963, i32 39}
!385 = !{ptr @.str.142, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/pc87360.c", i32 969, i32 2}
!387 = !{ptr @.str.143, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/pc87360.c", i32 970, i32 2}
!389 = !{ptr @.str.144, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/hwmon/pc87360.c", i32 971, i32 2}
!391 = !{ptr @temp_crit, !392, !"temp_crit", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/pc87360.c", i32 968, i32 39}
!393 = !{ptr @.str.145, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/hwmon/pc87360.c", i32 1020, i32 2}
!395 = !{ptr @.str.146, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/hwmon/pc87360.c", i32 1021, i32 2}
!397 = !{ptr @.str.147, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/pc87360.c", i32 1022, i32 2}
!399 = !{ptr @temp_min_alarm, !400, !"temp_min_alarm", i1 false, i1 false}
!400 = !{!"../drivers/hwmon/pc87360.c", i32 1019, i32 39}
!401 = !{ptr @.str.148, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/hwmon/pc87360.c", i32 1026, i32 2}
!403 = !{ptr @.str.149, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/hwmon/pc87360.c", i32 1027, i32 2}
!405 = !{ptr @.str.150, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/hwmon/pc87360.c", i32 1028, i32 2}
!407 = !{ptr @temp_max_alarm, !408, !"temp_max_alarm", i1 false, i1 false}
!408 = !{!"../drivers/hwmon/pc87360.c", i32 1025, i32 39}
!409 = !{ptr @.str.151, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/pc87360.c", i32 1032, i32 2}
!411 = !{ptr @.str.152, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/hwmon/pc87360.c", i32 1033, i32 2}
!413 = !{ptr @.str.153, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/hwmon/pc87360.c", i32 1034, i32 2}
!415 = !{ptr @temp_crit_alarm, !416, !"temp_crit_alarm", i1 false, i1 false}
!416 = !{!"../drivers/hwmon/pc87360.c", i32 1031, i32 39}
!417 = !{ptr @.str.154, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/hwmon/pc87360.c", i32 1047, i32 2}
!419 = !{ptr @.str.155, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/hwmon/pc87360.c", i32 1048, i32 2}
!421 = !{ptr @.str.156, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/hwmon/pc87360.c", i32 1049, i32 2}
!423 = !{ptr @temp_fault, !424, !"temp_fault", i1 false, i1 false}
!424 = !{!"../drivers/hwmon/pc87360.c", i32 1046, i32 39}
!425 = !{ptr @.str.157, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/hwmon/pc87360.c", i32 981, i32 8}
!427 = !{ptr @dev_attr_alarms_temp, !426, !"dev_attr_alarms_temp", i1 false, i1 false}
!428 = !{ptr @pc8736x_fan_attr_group, !429, !"pc8736x_fan_attr_group", i1 false, i1 false}
!429 = !{!"../drivers/hwmon/pc87360.c", i32 386, i32 37}
!430 = !{ptr @pc8736x_fan_attr, !431, !"pc8736x_fan_attr", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/pc87360.c", i32 380, i32 26}
!432 = !{ptr @.str.158, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/hwmon/pc87360.c", i32 315, i32 2}
!434 = !{ptr @.str.159, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/hwmon/pc87360.c", i32 316, i32 2}
!436 = !{ptr @.str.160, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/hwmon/pc87360.c", i32 317, i32 2}
!438 = !{ptr @fan_input, !439, !"fan_input", i1 false, i1 false}
!439 = !{!"../drivers/hwmon/pc87360.c", i32 314, i32 39}
!440 = !{ptr @.str.161, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/hwmon/pc87360.c", i32 320, i32 2}
!442 = !{ptr @.str.162, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/hwmon/pc87360.c", i32 321, i32 2}
!444 = !{ptr @.str.163, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/hwmon/pc87360.c", i32 322, i32 2}
!446 = !{ptr @fan_status, !447, !"fan_status", i1 false, i1 false}
!447 = !{!"../drivers/hwmon/pc87360.c", i32 319, i32 39}
!448 = !{ptr @.str.164, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/hwmon/pc87360.c", i32 325, i32 2}
!450 = !{ptr @.str.165, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/hwmon/pc87360.c", i32 326, i32 2}
!452 = !{ptr @.str.166, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/hwmon/pc87360.c", i32 327, i32 2}
!454 = !{ptr @fan_div, !455, !"fan_div", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/pc87360.c", i32 324, i32 39}
!456 = !{ptr @.str.167, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/hwmon/pc87360.c", i32 330, i32 2}
!458 = !{ptr @.str.168, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/hwmon/pc87360.c", i32 331, i32 2}
!460 = !{ptr @.str.169, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/hwmon/pc87360.c", i32 332, i32 2}
!462 = !{ptr @fan_min, !463, !"fan_min", i1 false, i1 false}
!463 = !{!"../drivers/hwmon/pc87360.c", i32 329, i32 39}
!464 = !{ptr @.str.170, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/hwmon/pc87360.c", i32 375, i32 2}
!466 = !{ptr @.str.171, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/hwmon/pc87360.c", i32 376, i32 2}
!468 = !{ptr @.str.172, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/hwmon/pc87360.c", i32 377, i32 2}
!470 = !{ptr @pwm, !471, !"pwm", i1 false, i1 false}
!471 = !{!"../drivers/hwmon/pc87360.c", i32 374, i32 39}
!472 = !{ptr @.str.173, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/hwmon/pc87360.c", i32 1084, i32 8}
!474 = !{ptr @dev_attr_name, !473, !"dev_attr_name", i1 false, i1 false}
!475 = !{ptr @.str.174, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/hwmon/pc87360.c", i32 1081, i32 22}
!477 = !{ptr @.str.175, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/hwmon/pc87360.c", i32 1740, i32 3}
!479 = !{ptr @.str.176, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @pc87360_init._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @pc87360_init._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.178, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/hwmon/pc87360.c", i32 1753, i32 3}
!484 = !{ptr @pc87360_init._entry.177, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @pc87360_init._entry_ptr.179, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.180, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/hwmon/pc87360.c", i32 1124, i32 4}
!488 = !{ptr @.str.181, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @pc87360_find._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @pc87360_find._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.183, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/hwmon/pc87360.c", i32 1131, i32 4}
!493 = !{ptr @pc87360_find._entry.182, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @pc87360_find._entry_ptr.184, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.185, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/hwmon/pc87360.c", i32 1142, i32 4}
!497 = !{ptr @pc87360_find.__UNIQUE_ID_ddebug187, !496, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!498 = !{ptr @.str.186, !496, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @pc87360_find.__UNIQUE_ID_ddebug188, !500, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!500 = !{!"../drivers/hwmon/pc87360.c", i32 1145, i32 4}
!501 = !{ptr @pc87360_find.__UNIQUE_ID_ddebug189, !502, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!502 = !{!"../drivers/hwmon/pc87360.c", i32 1148, i32 4}
!503 = !{ptr @.str.188, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/hwmon/pc87360.c", i32 1163, i32 6}
!505 = !{ptr @pc87360_find._entry.187, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @pc87360_find._entry_ptr.189, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.191, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/hwmon/pc87360.c", i32 1166, i32 6}
!509 = !{ptr @pc87360_find._entry.190, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @pc87360_find._entry_ptr.192, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @logdev, !512, !"logdev", i1 false, i1 false}
!512 = !{!"../drivers/hwmon/pc87360.c", i32 69, i32 17}
!513 = !{ptr @.str.193, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/hwmon/pc87360.c", i32 1692, i32 3}
!515 = !{ptr @.str.194, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @pc87360_device_add._entry, !514, !"_entry", i1 false, i1 false}
!517 = !{ptr @pc87360_device_add._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.196, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/hwmon/pc87360.c", i32 1715, i32 3}
!520 = !{ptr @pc87360_device_add._entry.195, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @pc87360_device_add._entry_ptr.197, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.199, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/hwmon/pc87360.c", i32 1721, i32 3}
!524 = !{ptr @pc87360_device_add._entry.198, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @pc87360_device_add._entry_ptr.200, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{i32 1, !"wchar_size", i32 2}
!527 = !{i32 1, !"min_enum_size", i32 4}
!528 = !{i32 8, !"branch-target-enforcement", i32 0}
!529 = !{i32 8, !"sign-return-address", i32 0}
!530 = !{i32 8, !"sign-return-address-all", i32 0}
!531 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!532 = !{i32 7, !"uwtable", i32 1}
!533 = !{i32 7, !"frame-pointer", i32 2}
!534 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!535 = !{i64 5864794}
!536 = !{i64 2153390980}
!537 = !{i64 2149003899, i64 2149003904, i64 2149003917, i64 2149003961, i64 2149003995, i64 2149004016}
!538 = !{i64 2153392965}
!539 = !{i64 5864399}
!540 = !{i8 0, i8 2}
!541 = !{!"auto-init"}
!542 = !{i64 2153428292}
!543 = !{i64 2153428691}
!544 = !{i64 2153429069}
!545 = !{i64 2153429398}
!546 = !{i64 2153427467}
!547 = !{i64 2153427795}
