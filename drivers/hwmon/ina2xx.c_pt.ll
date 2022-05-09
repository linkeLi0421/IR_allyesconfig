; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ina2xx.c_pt.bc'
source_filename = "../drivers/hwmon/ina2xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ina2xx_config = type { i16, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
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
%struct.ina2xx_data = type { ptr, i32, i32, i32, %struct.mutex, ptr, [3 x ptr] }

@__initcall__kmod_ina2xx__302_724_ina2xx_driver_init6 = internal global ptr @ina2xx_driver_init, section ".initcall6.init", align 4
@ina2xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ina2xx_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ina2xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ina2xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ina2xx_driver_exit = internal global ptr @ina2xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [46 x i8] c"ina2xx.author=Lothar Felten <l-felten@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [33 x i8] c"ina2xx.description=ina2xx driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [33 x i8] c"ina2xx.file=drivers/hwmon/ina2xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [19 x i8] c"ina2xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ina2xx\00", [25 x i8] zeroinitializer }, align 32
@ina2xx_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina219\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina220\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina226\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina230\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ina2xx_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ina219\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ina220\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ina226\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ina230\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ina231\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ina2xx_config = internal constant { [2 x %struct.ina2xx_config], [40 x i8] } { [2 x %struct.ina2xx_config] [%struct.ina2xx_config { i16 14751, i32 4096, i32 6, i32 100, i32 3, i32 4000, i32 20 }, %struct.ina2xx_config { i16 17703, i32 2048, i32 8, i32 400, i32 0, i32 1250, i32 25 }], [40 x i8] zeroinitializer }, align 32
@ina2xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->config_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shunt-resistor\00", [17 x i8] zeroinitializer }, align 32
@ina2xx_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ina2xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ina2xx:653:(&ina2xx_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@ina2xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 655, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ina2xx_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/ina2xx.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ina2xx_probe._entry_ptr = internal global ptr @ina2xx_probe._entry, section ".printk_index", align 4
@ina2xx_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 661, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error configuring the device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ina2xx_probe._entry_ptr.11 = internal global ptr @ina2xx_probe._entry.9, section ".printk_index", align 4
@ina2xx_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ina2xx_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ina226_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ina226_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ina2xx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 675, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"power monitor %s (Rshunt = %li uOhm)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ina2xx_probe._entry_ptr.15 = internal global ptr @ina2xx_probe._entry.12, section ".printk_index", align 4
@ina2xx_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_shunt_resistor, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina2xx_value_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina2xx_value_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina2xx_value_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina2xx_value_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_shunt_resistor = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina2xx_shunt_show, ptr @ina2xx_shunt_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ina2xx_read_reg.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.6, ptr @.str.19, i8 0, i8 53, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ina2xx_read_reg\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Starting register %d read\0A\00", [37 x i8] zeroinitializer }, align 32
@ina2xx_read_reg.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.6, ptr @.str.20, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"read %d, val = 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@ina2xx_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.6, i32 239, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"chip not calibrated, reinitializing\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ina2xx_read_reg._entry_ptr = internal global ptr @ina2xx_read_reg._entry, section ".printk_index", align 4
@ina2xx_read_reg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.6, i32 261, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to reinitialize the chip\0A\00", [63 x i8] zeroinitializer }, align 32
@ina2xx_read_reg._entry_ptr.25 = internal global ptr @ina2xx_read_reg._entry.23, section ".printk_index", align 4
@ina2xx_get_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power1_input\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shunt_resistor\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%li\0A\00", [27 x i8] zeroinitializer }, align 32
@ina226_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @sensor_dev_attr_in0_crit, ptr @sensor_dev_attr_in0_lcrit, ptr @sensor_dev_attr_in0_crit_alarm, ptr @sensor_dev_attr_in0_lcrit_alarm, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in1_lcrit_alarm, ptr @sensor_dev_attr_power1_crit, ptr @sensor_dev_attr_power1_crit_alarm, ptr @sensor_dev_attr_update_interval, ptr null], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_lcrit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alarm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_lcrit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alert_show, ptr @ina226_alert_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_update_interval = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina226_interval_show, ptr @ina226_interval_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_crit\00", [23 x i8] zeroinitializer }, align 32
@ina226_reg_to_alert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ina226_alert_to_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in0_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"in0_lcrit_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in1_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"in1_lcrit_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power1_crit\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power1_crit_alarm\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@ina226_avg_tab = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 4, i32 16, i32 64, i32 128, i32 256, i32 512, i32 1024], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 8, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 8, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"ina2xx_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 715, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 717, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"ina2xx_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 690, i32 49 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"ina2xx_id\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 680, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"ina2xx_config\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 126, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 638, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 640, i32 41 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"ina2xx_regmap_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 97, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 653, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 655, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 661, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"ina2xx_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 593, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"ina226_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 612, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 674, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"ina2xx_attrs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 584, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power1_input\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_shunt_resistor\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 543, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 313, i32 25 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 212, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 220, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 239, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 261, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 555, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 567, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 570, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 578, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 483, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"ina226_attrs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 597, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_crit\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_lcrit\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in0_crit_alarm\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_in0_lcrit_alarm\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_crit\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_lcrit\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in1_crit_alarm\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_in1_lcrit_alarm\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_power1_crit\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_power1_crit_alarm\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_update_interval\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 545, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 547, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 549, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 551, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 557, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 559, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 561, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 563, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 572, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 574, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 581, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"ina226_avg_tab\00", align 1
@___asan_gen_.249 = private constant [26 x i8] c"../drivers/hwmon/ina2xx.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 153, i32 18 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_ina2xx_driver_exit, ptr @__initcall__kmod_ina2xx__302_724_ina2xx_driver_init6, ptr @ina2xx_driver_exit, ptr @ina2xx_probe._entry, ptr @ina2xx_probe._entry.12, ptr @ina2xx_probe._entry.9, ptr @ina2xx_probe._entry_ptr, ptr @ina2xx_probe._entry_ptr.11, ptr @ina2xx_probe._entry_ptr.15, ptr @ina2xx_read_reg._entry, ptr @ina2xx_read_reg._entry.23, ptr @ina2xx_read_reg._entry_ptr, ptr @ina2xx_read_reg._entry_ptr.25, ptr @ina2xx_driver, ptr @.str, ptr @ina2xx_of_match, ptr @ina2xx_id, ptr @ina2xx_config, ptr @ina2xx_probe.__key, ptr @.str.1, ptr @.str.2, ptr @ina2xx_regmap_config, ptr @ina2xx_probe._key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @ina2xx_group, ptr @ina226_group, ptr @.str.13, ptr @.str.14, ptr @ina2xx_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_shunt_resistor, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ina226_attrs, ptr @sensor_dev_attr_in0_crit, ptr @sensor_dev_attr_in0_lcrit, ptr @sensor_dev_attr_in0_crit_alarm, ptr @sensor_dev_attr_in0_lcrit_alarm, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in1_lcrit_alarm, ptr @sensor_dev_attr_power1_crit, ptr @sensor_dev_attr_power1_crit_alarm, ptr @sensor_dev_attr_update_interval, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ina226_avg_tab], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_config to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina226_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_shunt_resistor to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina2xx_read_reg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina226_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_lcrit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_lcrit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_update_interval to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina226_avg_tab to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ina2xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ina2xx_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ina2xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ina2xx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina2xx_probe(ptr noundef %client) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !140
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %3 = ptrtoint ptr %call to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call ptr @i2c_match_id(ptr noundef nonnull @ina2xx_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call4, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chip.0 = phi i32 [ %3, %if.then ], [ %5, %if.else ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr [2 x %struct.ina2xx_config], ptr @ina2xx_config, i32 0, i32 %chip.0
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %call.i, align 4
  %config_lock = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %config_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ina2xx_probe.__key) #6
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then11, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then11:                                        ; preds = %if.end8
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 8
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then14

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11.if.end16_crit_edge
  %storemerge = phi i32 [ %12, %if.then14 ], [ 10000, %if.then11.if.end16_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %val, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end8.if.end17_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %shunt_div.i = getelementptr inbounds %struct.ina2xx_config, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %shunt_div.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shunt_div.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i = icmp sgt i32 %19, 0
  %add.pn.in.v.i = select i1 %cmp1.i, i32 2, i32 -2
  %add.pn.in.i = sdiv i32 %19, %add.pn.in.v.i
  %add.pn.i = add nsw i32 %add.pn.in.i, 1000000000
  %cond.i = sdiv i32 %add.pn.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp8.i = icmp slt i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %15)
  %cmp10.i = icmp ult i32 %cond.i, %15
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %if.end17.ina2xx_set_shunt.exit_crit_edge, label %if.end.i

if.end17.ina2xx_set_shunt.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina2xx_set_shunt.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #6
  %rshunt.i = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %rshunt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %rshunt.i, align 4
  %div153940.i = lshr i32 %15, 1
  %add16.i = add i32 %cond.i, %div153940.i
  %div17.i = udiv i32 %add16.i, %15
  %current_lsb_uA.i = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %current_lsb_uA.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div17.i, ptr %current_lsb_uA.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %power_lsb_factor.i = getelementptr inbounds %struct.ina2xx_config, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %power_lsb_factor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %power_lsb_factor.i, align 4
  %mul.i = mul i32 %25, %div17.i
  %power_lsb_uW.i = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %power_lsb_uW.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i, ptr %power_lsb_uW.i, align 4
  call void @mutex_unlock(ptr noundef %config_lock) #6
  br label %ina2xx_set_shunt.exit

ina2xx_set_shunt.exit:                            ; preds = %if.end.i, %if.end17.ina2xx_set_shunt.exit_crit_edge
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %registers = getelementptr inbounds %struct.ina2xx_config, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %registers, align 4
  store i32 %30, ptr getelementptr inbounds (%struct.regmap_config, ptr @ina2xx_regmap_config, i32 0, i32 19), align 4
  %call20 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ina2xx_regmap_config, ptr noundef nonnull @ina2xx_probe._key, ptr noundef nonnull @.str.3) #6
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end29

do.end26:                                         ; preds = %ina2xx_set_shunt.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #9
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end29:                                         ; preds = %ina2xx_set_shunt.exit
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 4
  %conv.i = zext i16 %38 to i32
  %call.i92 = call i32 @regmap_write(ptr noundef %call20, i32 noundef 0, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %if.end29.do.end35_crit_edge, label %ina2xx_init.exit

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

ina2xx_init.exit:                                 ; preds = %if.end29
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %calibration_value.i.i = getelementptr inbounds %struct.ina2xx_config, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %calibration_value.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %calibration_value.i.i, align 4
  %call.i.i94 = call i32 @regmap_write(ptr noundef %40, i32 noundef 5, i32 noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %cmp31 = icmp slt i32 %call.i.i94, 0
  br i1 %cmp31, label %ina2xx_init.exit.do.end35_crit_edge, label %if.end36

ina2xx_init.exit.do.end35_crit_edge:              ; preds = %ina2xx_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

do.end35:                                         ; preds = %ina2xx_init.exit.do.end35_crit_edge, %if.end29.do.end35_crit_edge
  %retval.0.i96100 = phi i32 [ %call.i.i94, %ina2xx_init.exit.do.end35_crit_edge ], [ %call.i92, %if.end29.do.end35_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i96100) #9
  br label %cleanup

if.end36:                                         ; preds = %ina2xx_init.exit
  %groups = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ina2xx_group, ptr %groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chip.0)
  %cmp38 = icmp eq i32 %chip.0, 1
  br i1 %cmp38, label %if.then39, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42 = getelementptr %struct.ina2xx_data, ptr %call.i, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ina226_group, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call46 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #6
  %cmp.i97 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then48, label %do.end53

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call46 to i32
  br label %cleanup

do.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %rshunt = getelementptr inbounds %struct.ina2xx_data, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %rshunt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rshunt, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %49) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then48, %do.end35, %do.end26, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %do.end26 ], [ -19, %do.end35 ], [ %47, %if.then48 ], [ 0, %do.end53 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina2xx_value_show(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !140
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %call1 = call fastcc i32 @ina2xx_read_reg(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull %regval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %9 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %land.end.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb13.i
    i8 3, label %sw.bb35.i
    i8 4, label %sw.bb37.i
    i8 5, label %if.end.ina2xx_get_value.exit_crit_edge
  ]

if.end.ina2xx_get_value.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina2xx_get_value.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %shunt_div.i = getelementptr inbounds %struct.ina2xx_config, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %shunt_div.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shunt_div.i, align 4
  %sext125.i = shl i32 %8, 16
  %conv2.i = ashr exact i32 %sext125.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sext125.i)
  %cmp.i = icmp slt i32 %sext125.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i = icmp sgt i32 %13, 0
  %cmp6.i = xor i1 %cmp.i, %cmp4.i
  %add.pn.v.v.i = select i1 %cmp6.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %13, %add.pn.v.v.i
  %add.pn.i = add nsw i32 %add.pn.v.i, %conv2.i
  %cond.i = sdiv i32 %add.pn.i, %13
  br label %ina2xx_get_value.exit

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %bus_voltage_shift.i = getelementptr inbounds %struct.ina2xx_config, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bus_voltage_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bus_voltage_shift.i, align 4
  %shr.i = lshr i32 %8, %17
  %bus_voltage_lsb.i = getelementptr inbounds %struct.ina2xx_config, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %bus_voltage_lsb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_voltage_lsb.i, align 4
  %mul.i = mul i32 %shr.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp19.i = icmp sgt i32 %mul.i, 0
  %cond34.in.v.i = select i1 %cmp19.i, i32 500, i32 -500
  %cond34.in.i = add i32 %cond34.in.v.i, %mul.i
  %cond34.i = sdiv i32 %cond34.in.i, 1000
  br label %ina2xx_get_value.exit

sw.bb35.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %power_lsb_uW.i = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %power_lsb_uW.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %power_lsb_uW.i, align 4
  %mul36.i = mul i32 %21, %8
  br label %ina2xx_get_value.exit

sw.bb37.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sext.i = shl i32 %8, 16
  %conv39.i = ashr exact i32 %sext.i, 16
  %current_lsb_uA.i = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %current_lsb_uA.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_lsb_uA.i, align 4
  %mul40.i = mul i32 %23, %conv39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul40.i)
  %cmp44.i = icmp sgt i32 %mul40.i, 0
  %cond59.in.v.i = select i1 %cmp44.i, i32 500, i32 -500
  %cond59.in.i = add i32 %cond59.in.v.i, %mul40.i
  %cond59.i = sdiv i32 %cond59.in.i, 1000
  br label %ina2xx_get_value.exit

land.end.i:                                       ; preds = %if.end
  %.b126.i = load i1, ptr @ina2xx_get_value.__already_done, align 1
  br i1 %.b126.i, label %land.end.i.ina2xx_get_value.exit_crit_edge, label %if.then.i, !prof !141

land.end.i.ina2xx_get_value.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina2xx_get_value.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ina2xx_get_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %ina2xx_get_value.exit

ina2xx_get_value.exit:                            ; preds = %if.then.i, %land.end.i.ina2xx_get_value.exit_crit_edge, %sw.bb37.i, %sw.bb35.i, %sw.bb13.i, %sw.bb.i, %if.end.ina2xx_get_value.exit_crit_edge
  %val.0.i = phi i32 [ %cond59.i, %sw.bb37.i ], [ %mul36.i, %sw.bb35.i ], [ %cond34.i, %sw.bb13.i ], [ %cond.i, %sw.bb.i ], [ %8, %if.end.ina2xx_get_value.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.end.i.ina2xx_get_value.exit_crit_edge ]
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %val.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ina2xx_get_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %ina2xx_get_value.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ina2xx_read_reg(ptr noundef %dev, i32 noundef %reg, ptr noundef %regval) unnamed_addr #2 align 64 {
entry:
  %cal = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ina2xx_read_reg.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ina2xx_read_reg, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !142

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ina2xx_read_reg.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %reg) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %retry.080 = phi i32 [ 5, %do.end ], [ %dec, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %for.body.cleanup48_crit_edge, label %do.body9

for.body.cleanup48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

do.body9:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ina2xx_read_reg.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ina2xx_read_reg, %do.end26)) #6
          to label %if.then23 [label %do.end26], !srcloc !142

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regval, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ina2xx_read_reg.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %reg, i32 noundef %5) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body9
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27 = icmp eq i32 %7, 0
  br i1 %cmp27, label %if.then28, label %do.end26.cleanup48_crit_edge

do.end26.cleanup48_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup48

if.then28:                                        ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cal) #6
  %8 = ptrtoint ptr %cal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cal, align 4, !annotation !140
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_read(ptr noundef %10, i32 noundef 5, ptr noundef nonnull %cal) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then28.cleanup.thread_crit_edge, label %if.end33

if.then28.cleanup.thread_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end33:                                         ; preds = %if.then28
  %11 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp34 = icmp eq i32 %12, 0
  br i1 %cmp34, label %do.end38, label %cleanup.thread77

cleanup.thread77:                                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal) #6
  br label %cleanup48

do.end38:                                         ; preds = %if.end33
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  %conv.i = zext i16 %18 to i32
  %call.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end38.cleanup.thread_crit_edge, label %ina2xx_init.exit

do.end38.cleanup.thread_crit_edge:                ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

ina2xx_init.exit:                                 ; preds = %do.end38
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %calibration_value.i.i = getelementptr inbounds %struct.ina2xx_config, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %calibration_value.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %calibration_value.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 5, i32 noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp40 = icmp slt i32 %call.i.i, 0
  br i1 %cmp40, label %ina2xx_init.exit.cleanup.thread_crit_edge, label %for.inc

ina2xx_init.exit.cleanup.thread_crit_edge:        ; preds = %ina2xx_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %ina2xx_init.exit.cleanup.thread_crit_edge, %do.end38.cleanup.thread_crit_edge, %if.then28.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call.i.i, %ina2xx_init.exit.cleanup.thread_crit_edge ], [ %call30, %if.then28.cleanup.thread_crit_edge ], [ %call.i, %do.end38.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal) #6
  br label %cleanup48

for.inc:                                          ; preds = %ina2xx_init.exit
  call void @msleep(i32 noundef 69) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cal) #6
  %dec = add nsw i32 %retry.080, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.end47, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end47:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %cleanup48

cleanup48:                                        ; preds = %do.end47, %cleanup.thread, %cleanup.thread77, %do.end26.cleanup48_crit_edge, %for.body.cleanup48_crit_edge
  %retval.2 = phi i32 [ -19, %do.end47 ], [ %retval.1.ph, %cleanup.thread ], [ 0, %cleanup.thread77 ], [ 0, %do.end26.cleanup48_crit_edge ], [ %call6, %for.body.cleanup48_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina2xx_shunt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rshunt = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rshunt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rshunt, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina2xx_shunt_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !140
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %shunt_div.i = getelementptr inbounds %struct.ina2xx_config, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %shunt_div.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shunt_div.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp sgt i32 %8, 0
  %add.pn.in.v.i = select i1 %cmp1.i, i32 2, i32 -2
  %add.pn.in.i = sdiv i32 %8, %add.pn.in.v.i
  %add.pn.i = add nsw i32 %add.pn.in.i, 1000000000
  %cond.i = sdiv i32 %add.pn.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8.i = icmp slt i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %4)
  %cmp10.i = icmp ult i32 %cond.i, %4
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %ina2xx_set_shunt.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ina2xx_set_shunt.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %config_lock.i = getelementptr inbounds %struct.ina2xx_data, ptr %2, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %config_lock.i, i32 noundef 0) #6
  %rshunt.i = getelementptr inbounds %struct.ina2xx_data, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %rshunt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %rshunt.i, align 4
  %div153940.i = lshr i32 %4, 1
  %add16.i = add i32 %cond.i, %div153940.i
  %div17.i = udiv i32 %add16.i, %4
  %current_lsb_uA.i = getelementptr inbounds %struct.ina2xx_data, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %current_lsb_uA.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div17.i, ptr %current_lsb_uA.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %power_lsb_factor.i = getelementptr inbounds %struct.ina2xx_config, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %power_lsb_factor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_lsb_factor.i, align 4
  %mul.i = mul i32 %14, %div17.i
  %power_lsb_uW.i = getelementptr inbounds %struct.ina2xx_data, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %power_lsb_uW.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %power_lsb_uW.i, align 4
  call void @mutex_unlock(ptr noundef %config_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ina2xx_set_shunt.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %ina2xx_set_shunt.exit ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina226_alert_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !140
  %config_lock = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.abort_crit_edge

entry.abort_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %10, i32 noundef 7, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.abort_crit_edge

if.then3.abort_crit_edge:                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end8:                                          ; preds = %if.then3
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval, align 4
  %15 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %conv, label %land.end.i [
    i8 15, label %if.end8.sw.bb.i.i_crit_edge
    i8 14, label %if.end8.sw.bb.i.i_crit_edge22
    i8 13, label %if.end8.sw.bb13.i.i_crit_edge
    i8 12, label %if.end8.sw.bb13.i.i_crit_edge23
    i8 11, label %sw.bb35.i.i
  ]

if.end8.sw.bb13.i.i_crit_edge23:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.end8.sw.bb13.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i.i

if.end8.sw.bb.i.i_crit_edge22:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.end8.sw.bb.i.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

land.end.i:                                       ; preds = %if.end8
  %.b40.i = load i1, ptr @ina226_reg_to_alert.__already_done, align 1
  br i1 %.b40.i, label %land.end.i.if.end12_crit_edge, label %if.then.i, !prof !141

land.end.i.if.end12_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ina226_reg_to_alert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 334, i32 noundef 9, ptr noundef null) #6
  br label %if.end12

sw.bb.i.i:                                        ; preds = %if.end8.sw.bb.i.i_crit_edge, %if.end8.sw.bb.i.i_crit_edge22
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %shunt_div.i.i = getelementptr inbounds %struct.ina2xx_config, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %shunt_div.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shunt_div.i.i, align 4
  %conv3742.i = shl i32 %14, 16
  %conv2.i.i = ashr exact i32 %conv3742.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv3742.i)
  %cmp.i.i = icmp slt i32 %conv3742.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.i.i = icmp sgt i32 %19, 0
  %cmp6.i.i = xor i1 %cmp.i.i, %cmp4.i.i
  %add.pn.v.v.i.i = select i1 %cmp6.i.i, i32 2, i32 -2
  %add.pn.v.i.i = sdiv i32 %19, %add.pn.v.v.i.i
  %add.pn.i.i = add nsw i32 %add.pn.v.i.i, %conv2.i.i
  %cond.i.i = sdiv i32 %add.pn.i.i, %19
  br label %if.end12

sw.bb13.i.i:                                      ; preds = %if.end8.sw.bb13.i.i_crit_edge, %if.end8.sw.bb13.i.i_crit_edge23
  %conv3746.i = and i32 %14, 65535
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %bus_voltage_shift.i.i = getelementptr inbounds %struct.ina2xx_config, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %bus_voltage_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_voltage_shift.i.i, align 4
  %shr.i.i = lshr i32 %conv3746.i, %23
  %bus_voltage_lsb.i.i = getelementptr inbounds %struct.ina2xx_config, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %bus_voltage_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_voltage_lsb.i.i, align 4
  %mul.i.i = mul i32 %shr.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp19.i.i = icmp sgt i32 %mul.i.i, 0
  %cond34.in.v.i.i = select i1 %cmp19.i.i, i32 500, i32 -500
  %cond34.in.i.i = add i32 %cond34.in.v.i.i, %mul.i.i
  %cond34.i.i = sdiv i32 %cond34.in.i.i, 1000
  br label %if.end12

sw.bb35.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %conv37.i = and i32 %14, 65535
  %power_lsb_uW.i.i = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %power_lsb_uW.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_lsb_uW.i.i, align 4
  %mul36.i.i = mul i32 %27, %conv37.i
  br label %if.end12

if.end12:                                         ; preds = %sw.bb35.i.i, %sw.bb13.i.i, %sw.bb.i.i, %if.then.i, %land.end.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %val.0 = phi i32 [ 0, %if.end.if.end12_crit_edge ], [ 0, %if.then.i ], [ 0, %land.end.i.if.end12_crit_edge ], [ %mul36.i.i, %sw.bb35.i.i ], [ %cond34.i.i, %sw.bb13.i.i ], [ %cond.i.i, %sw.bb.i.i ]
  %call13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %val.0) #6
  br label %abort

abort:                                            ; preds = %if.end12, %if.then3.abort_crit_edge, %entry.abort_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.abort_crit_edge ], [ %call5, %if.then3.abort_crit_edge ], [ %call13, %if.end12 ]
  call void @mutex_unlock(ptr noundef %config_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina226_alert_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !140
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_lock = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i40 = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 6, i32 noundef 64512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp3 = icmp slt i32 %call.i40, 0
  br i1 %cmp3, label %if.end.abort_crit_edge, label %if.end5

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %conv, label %land.end.i [
    i8 15, label %if.end5.sw.bb.i_crit_edge
    i8 14, label %if.end5.sw.bb.i_crit_edge42
    i8 13, label %if.end5.sw.bb10.i_crit_edge
    i8 12, label %if.end5.sw.bb10.i_crit_edge43
    i8 11, label %sw.bb43.i
  ]

if.end5.sw.bb10.i_crit_edge43:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

if.end5.sw.bb10.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

if.end5.sw.bb.i_crit_edge42:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end5.sw.bb.i_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end5.sw.bb.i_crit_edge, %if.end5.sw.bb.i_crit_edge42
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %shunt_div.i = getelementptr inbounds %struct.ina2xx_config, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %shunt_div.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shunt_div.i, align 4
  %mul.i = mul i32 %15, %10
  %16 = call i32 @llvm.smax.i32(i32 %mul.i, i32 -32768) #6
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 32767) #6
  br label %ina226_alert_to_reg.exit

sw.bb10.i:                                        ; preds = %if.end5.sw.bb10.i_crit_edge, %if.end5.sw.bb10.i_crit_edge43
  %mul11.i = mul i32 %10, 1000
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %bus_voltage_shift.i = getelementptr inbounds %struct.ina2xx_config, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bus_voltage_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_voltage_shift.i, align 4
  %shl.i = shl i32 %mul11.i, %21
  %bus_voltage_lsb.i = getelementptr inbounds %struct.ina2xx_config, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %bus_voltage_lsb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_voltage_lsb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl.i)
  %cmp15.i = icmp slt i32 %shl.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17.i = icmp sgt i32 %23, 0
  %cmp19.i = xor i1 %cmp15.i, %cmp17.i
  %add.pn.v.v.i = select i1 %cmp19.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %23, %add.pn.v.v.i
  %add.pn.i = add i32 %add.pn.v.i, %shl.i
  %cond27.i = sdiv i32 %add.pn.i, %23
  %24 = call i32 @llvm.smax.i32(i32 %cond27.i, i32 0) #6
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 32767) #6
  br label %ina226_alert_to_reg.exit

sw.bb43.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %power_lsb_uW.i = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %power_lsb_uW.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_lsb_uW.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp47.i = icmp slt i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp49.i = icmp sgt i32 %27, 0
  %cmp51.i = xor i1 %cmp47.i, %cmp49.i
  %div54.pn.v.i = select i1 %cmp51.i, i32 2, i32 -2
  %div54.pn.i = sdiv i32 %27, %div54.pn.v.i
  %add55.pn.i = add i32 %div54.pn.i, %10
  %cond62.i = sdiv i32 %add55.pn.i, %27
  %28 = call i32 @llvm.smax.i32(i32 %cond62.i, i32 0) #6
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 65535) #6
  br label %ina226_alert_to_reg.exit

land.end.i:                                       ; preds = %if.end5
  %.b147.i = load i1, ptr @ina226_alert_to_reg.__already_done, align 1
  br i1 %.b147.i, label %land.end.i.ina226_alert_to_reg.exit_crit_edge, label %if.then.i, !prof !141

land.end.i.ina226_alert_to_reg.exit_crit_edge:    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_alert_to_reg.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ina226_alert_to_reg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 362, i32 noundef 9, ptr noundef null) #6
  br label %ina226_alert_to_reg.exit

ina226_alert_to_reg.exit:                         ; preds = %if.then.i, %land.end.i.ina226_alert_to_reg.exit_crit_edge, %sw.bb43.i, %sw.bb10.i, %sw.bb.i
  %retval.0.i = phi i32 [ %29, %sw.bb43.i ], [ %25, %sw.bb10.i ], [ %17, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %land.end.i.ina226_alert_to_reg.exit_crit_edge ]
  %sext = shl i32 %retval.0.i, 16
  %conv8 = ashr exact i32 %sext, 16
  %call9 = call i32 @regmap_write(ptr noundef %6, i32 noundef 7, i32 noundef %conv8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %ina226_alert_to_reg.exit.abort_crit_edge, label %if.end13

ina226_alert_to_reg.exit.abort_crit_edge:         ; preds = %ina226_alert_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end13:                                         ; preds = %ina226_alert_to_reg.exit
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp14.not = icmp eq i32 %31, 0
  br i1 %cmp14.not, label %if.end13.if.end24_crit_edge, label %if.then16

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16:                                        ; preds = %if.end13
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %35
  %call.i41 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 6, i32 noundef 64512, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp20 = icmp slt i32 %call.i41, 0
  br i1 %cmp20, label %if.then16.abort_crit_edge, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16.abort_crit_edge:                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  br label %abort

abort:                                            ; preds = %if.end24, %if.then16.abort_crit_edge, %ina226_alert_to_reg.exit.abort_crit_edge, %if.end.abort_crit_edge
  %ret.0 = phi i32 [ %call.i40, %if.end.abort_crit_edge ], [ %call9, %ina226_alert_to_reg.exit.abort_crit_edge ], [ %call.i41, %if.then16.abort_crit_edge ], [ %count, %if.end24 ]
  call void @mutex_unlock(ptr noundef %config_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %abort, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %abort ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina226_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !140
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and3 = lshr i32 %6, 4
  %and3.lobit = and i32 %and3, 1
  %9 = select i1 %tobool2.not, i32 0, i32 %and3.lobit
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina226_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !140
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %7 = lshr i32 %6, 9
  %8 = and i32 %7, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @ina226_avg_tab, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %10, 2200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 1000
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %cond.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina226_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !140
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.ina2xx_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %mul.i = mul i32 %4, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 1100, i32 -1100
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8799, i32 %cond.in.i)
  %cmp32.not.i = icmp sgt i32 %cond.in.i, 8799
  br i1 %cmp32.not.i, label %for.cond.1.i, label %if.end5.ina226_interval_to_reg.exit_crit_edge

if.end5.ina226_interval_to_reg.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_interval_to_reg.exit

for.cond.1.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24199, i32 %cond.in.i)
  %cmp32.not.1.i = icmp ugt i32 %cond.in.i, 24199
  br i1 %cmp32.not.1.i, label %for.cond.2.i, label %for.cond.1.i.ina226_interval_to_reg.exit_crit_edge

for.cond.1.i.ina226_interval_to_reg.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_interval_to_reg.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90199, i32 %cond.in.i)
  %cmp32.not.2.i = icmp ugt i32 %cond.in.i, 90199
  br i1 %cmp32.not.2.i, label %for.cond.3.i, label %for.cond.2.i.ina226_interval_to_reg.exit_crit_edge

for.cond.2.i.ina226_interval_to_reg.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_interval_to_reg.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 213399, i32 %cond.in.i)
  %cmp32.not.3.i = icmp ugt i32 %cond.in.i, 213399
  br i1 %cmp32.not.3.i, label %for.cond.4.i, label %for.cond.3.i.ina226_interval_to_reg.exit_crit_edge

for.cond.3.i.ina226_interval_to_reg.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_interval_to_reg.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 424599, i32 %cond.in.i)
  %cmp32.not.4.i = icmp ugt i32 %cond.in.i, 424599
  br i1 %cmp32.not.4.i, label %for.cond.5.i, label %for.cond.4.i.ina226_interval_to_reg.exit_crit_edge

for.cond.4.i.ina226_interval_to_reg.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_interval_to_reg.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 846999, i32 %cond.in.i)
  %cmp32.not.5.i = icmp ugt i32 %cond.in.i, 846999
  br i1 %cmp32.not.5.i, label %for.cond.6.i, label %for.cond.5.i.ina226_interval_to_reg.exit_crit_edge

for.cond.5.i.ina226_interval_to_reg.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ina226_interval_to_reg.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1691799, i32 %cond.in.i)
  %cmp32.not.6.i = icmp ugt i32 %cond.in.i, 1691799
  %phi.cast = select i1 %cmp32.not.6.i, i32 3584, i32 3072
  br label %ina226_interval_to_reg.exit

ina226_interval_to_reg.exit:                      ; preds = %for.cond.6.i, %for.cond.5.i.ina226_interval_to_reg.exit_crit_edge, %for.cond.4.i.ina226_interval_to_reg.exit_crit_edge, %for.cond.3.i.ina226_interval_to_reg.exit_crit_edge, %for.cond.2.i.ina226_interval_to_reg.exit_crit_edge, %for.cond.1.i.ina226_interval_to_reg.exit_crit_edge, %if.end5.ina226_interval_to_reg.exit_crit_edge
  %__fc_i.0.lcssa.i = phi i32 [ 0, %if.end5.ina226_interval_to_reg.exit_crit_edge ], [ 512, %for.cond.1.i.ina226_interval_to_reg.exit_crit_edge ], [ 1024, %for.cond.2.i.ina226_interval_to_reg.exit_crit_edge ], [ 1536, %for.cond.3.i.ina226_interval_to_reg.exit_crit_edge ], [ 2048, %for.cond.4.i.ina226_interval_to_reg.exit_crit_edge ], [ 2560, %for.cond.5.i.ina226_interval_to_reg.exit_crit_edge ], [ %phi.cast, %for.cond.6.i ]
  %call.i17 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 3584, i32 noundef %__fc_i.0.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp8 = icmp slt i32 %call.i17, 0
  %call7.count = select i1 %cmp8, i32 %call.i17, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %ina226_interval_to_reg.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call7.count, %ina226_interval_to_reg.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !91, !93, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_ina2xx__302_724_ina2xx_driver_init6, !1, !"__initcall__kmod_ina2xx__302_724_ina2xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ina2xx.c", i32 724, i32 1}
!2 = !{ptr @__exitcall_ina2xx_driver_exit, !1, !"__exitcall_ina2xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ina2xx.c", i32 726, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ina2xx.c", i32 727, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ina2xx.c", i32 728, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ina2xx.c", i32 717, i32 11}
!12 = !{ptr @ina2xx_driver, !13, !"ina2xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ina2xx.c", i32 715, i32 26}
!14 = !{ptr @ina2xx_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ina2xx.c", i32 638, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ina2xx.c", i32 640, i32 41}
!19 = !{ptr @ina2xx_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ina2xx.c", i32 653, i32 17}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ina2xx.c", i32 655, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ina2xx_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ina2xx_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/ina2xx.c", i32 661, i32 3}
!32 = !{ptr @ina2xx_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ina2xx_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ina2xx.c", i32 674, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ina2xx_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ina2xx_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ina2xx_config, !40, !"ina2xx_config", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/ina2xx.c", i32 126, i32 35}
!41 = !{ptr @ina2xx_regmap_config, !42, !"ina2xx_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ina2xx.c", i32 97, i32 29}
!43 = !{ptr @ina2xx_group, !44, !"ina2xx_group", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ina2xx.c", i32 593, i32 37}
!45 = !{ptr @ina2xx_attrs, !46, !"ina2xx_attrs", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ina2xx.c", i32 584, i32 26}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ina2xx.c", i32 543, i32 8}
!49 = !{ptr @sensor_dev_attr_in0_input, !48, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/ina2xx.c", i32 313, i32 25}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/ina2xx.c", i32 212, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ina2xx_read_reg.__UNIQUE_ID_ddebug288, !53, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/ina2xx.c", i32 220, i32 3}
!58 = !{ptr @ina2xx_read_reg.__UNIQUE_ID_ddebug289, !57, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/ina2xx.c", i32 239, i32 5}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ina2xx_read_reg._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ina2xx_read_reg._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/ina2xx.c", i32 261, i32 2}
!66 = !{ptr @ina2xx_read_reg._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ina2xx_read_reg._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/ina2xx.c", i32 293, i32 3}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/ina2xx.c", i32 555, i32 8}
!72 = !{ptr @sensor_dev_attr_in1_input, !71, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/ina2xx.c", i32 567, i32 8}
!75 = !{ptr @sensor_dev_attr_curr1_input, !74, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/ina2xx.c", i32 570, i32 8}
!78 = !{ptr @sensor_dev_attr_power1_input, !77, !"sensor_dev_attr_power1_input", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/ina2xx.c", i32 578, i32 8}
!81 = !{ptr @sensor_dev_attr_shunt_resistor, !80, !"sensor_dev_attr_shunt_resistor", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/ina2xx.c", i32 483, i32 25}
!84 = !{ptr @ina226_group, !85, !"ina226_group", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/ina2xx.c", i32 612, i32 37}
!86 = !{ptr @ina226_attrs, !87, !"ina226_attrs", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/ina2xx.c", i32 597, i32 26}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/ina2xx.c", i32 545, i32 8}
!90 = !{ptr @sensor_dev_attr_in0_crit, !89, !"sensor_dev_attr_in0_crit", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/ina2xx.c", i32 334, i32 3}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/ina2xx.c", i32 362, i32 3}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/ina2xx.c", i32 547, i32 8}
!97 = !{ptr @sensor_dev_attr_in0_lcrit, !96, !"sensor_dev_attr_in0_lcrit", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/ina2xx.c", i32 549, i32 8}
!100 = !{ptr @sensor_dev_attr_in0_crit_alarm, !99, !"sensor_dev_attr_in0_crit_alarm", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/ina2xx.c", i32 551, i32 8}
!103 = !{ptr @sensor_dev_attr_in0_lcrit_alarm, !102, !"sensor_dev_attr_in0_lcrit_alarm", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/ina2xx.c", i32 557, i32 8}
!106 = !{ptr @sensor_dev_attr_in1_crit, !105, !"sensor_dev_attr_in1_crit", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/ina2xx.c", i32 559, i32 8}
!109 = !{ptr @sensor_dev_attr_in1_lcrit, !108, !"sensor_dev_attr_in1_lcrit", i1 false, i1 false}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/ina2xx.c", i32 561, i32 8}
!112 = !{ptr @sensor_dev_attr_in1_crit_alarm, !111, !"sensor_dev_attr_in1_crit_alarm", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/ina2xx.c", i32 563, i32 8}
!115 = !{ptr @sensor_dev_attr_in1_lcrit_alarm, !114, !"sensor_dev_attr_in1_lcrit_alarm", i1 false, i1 false}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/ina2xx.c", i32 572, i32 8}
!118 = !{ptr @sensor_dev_attr_power1_crit, !117, !"sensor_dev_attr_power1_crit", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/ina2xx.c", i32 574, i32 8}
!121 = !{ptr @sensor_dev_attr_power1_crit_alarm, !120, !"sensor_dev_attr_power1_crit_alarm", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/ina2xx.c", i32 581, i32 8}
!124 = !{ptr @sensor_dev_attr_update_interval, !123, !"sensor_dev_attr_update_interval", i1 false, i1 false}
!125 = !{ptr @ina226_avg_tab, !126, !"ina226_avg_tab", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/ina2xx.c", i32 153, i32 18}
!127 = !{ptr @ina2xx_of_match, !128, !"ina2xx_of_match", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/ina2xx.c", i32 690, i32 49}
!129 = !{ptr @ina2xx_id, !130, !"ina2xx_id", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/ina2xx.c", i32 680, i32 35}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2148708691, i64 2148708696, i64 2148708709, i64 2148708753, i64 2148708787, i64 2148708808}
