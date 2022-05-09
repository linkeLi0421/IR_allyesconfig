; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_therm.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_therm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.w1_therm_family_converter = type { i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.w1_therm_family_data = type { [9 x i8], %struct.atomic_t, i32, i32, i32, i32, i32, ptr }
%struct.therm_info = type { [9 x i8], i8, i8 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__param_str_strong_pullup = internal constant [23 x i8] c"w1_therm.strong_pullup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@w1_strong_pullup = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_strong_pullup = internal constant %struct.kernel_param { ptr @__param_str_strong_pullup, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @w1_strong_pullup } }, section "__param", align 4
@__UNIQUE_ID_strong_pulluptype183 = internal constant [36 x i8] c"w1_therm.parmtype=strong_pullup:int\00", section ".modinfo", align 1
@w1_therm_families = internal global { [5 x %struct.w1_therm_family_converter], [32 x i8] } { [5 x %struct.w1_therm_family_converter] [%struct.w1_therm_family_converter { i8 0, i16 0, ptr @w1_therm_family_DS18S20, ptr @w1_DS18S20_convert_temp, ptr @w1_DS18S20_convert_time, ptr null, ptr null, ptr @w1_DS18S20_write_data, i8 1 }, %struct.w1_therm_family_converter { i8 0, i16 0, ptr @w1_therm_family_DS1822, ptr @w1_DS18B20_convert_temp, ptr @w1_DS18B20_convert_time, ptr @w1_DS18B20_set_resolution, ptr @w1_DS18B20_get_resolution, ptr @w1_DS18B20_write_data, i8 1 }, %struct.w1_therm_family_converter { i8 0, i16 0, ptr @w1_therm_family_DS18B20, ptr @w1_DS18B20_convert_temp, ptr @w1_DS18B20_convert_time, ptr @w1_DS18B20_set_resolution, ptr @w1_DS18B20_get_resolution, ptr @w1_DS18B20_write_data, i8 1 }, %struct.w1_therm_family_converter { i8 0, i16 0, ptr @w1_therm_family_DS28EA00, ptr @w1_DS18B20_convert_temp, ptr @w1_DS18B20_convert_time, ptr @w1_DS18B20_set_resolution, ptr @w1_DS18B20_get_resolution, ptr @w1_DS18B20_write_data, i8 0 }, %struct.w1_therm_family_converter { i8 0, i16 0, ptr @w1_therm_family_DS1825, ptr @w1_DS18B20_convert_temp, ptr @w1_DS18B20_convert_time, ptr @w1_DS18B20_set_resolution, ptr @w1_DS18B20_get_resolution, ptr @w1_DS18B20_write_data, i8 1 }], [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_w1_therm__198_2147_w1_therm_init6 = internal global ptr @w1_therm_init, section ".initcall6.init", align 4
@__exitcall_w1_therm_fini = internal global ptr @w1_therm_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author199 = internal constant [51 x i8] c"w1_therm.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [84 x i8] c"w1_therm.description=Driver for 1-wire Dallas network protocol, temperature family.\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [41 x i8] c"w1_therm.file=drivers/w1/slaves/w1_therm\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [21 x i8] c"w1_therm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias203 = internal constant [30 x i8] c"w1_therm.alias=w1-family-0x10\00", section ".modinfo", align 1
@__UNIQUE_ID_alias204 = internal constant [30 x i8] c"w1_therm.alias=w1-family-0x22\00", section ".modinfo", align 1
@__UNIQUE_ID_alias205 = internal constant [30 x i8] c"w1_therm.alias=w1-family-0x28\00", section ".modinfo", align 1
@__UNIQUE_ID_alias206 = internal constant [30 x i8] c"w1_therm.alias=w1-family-0x3B\00", section ".modinfo", align 1
@__UNIQUE_ID_alias207 = internal constant [30 x i8] c"w1_therm.alias=w1-family-0x42\00", section ".modinfo", align 1
@w1_therm_family_DS18S20 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 16, ptr @w1_ds18s20_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_therm_family_DS1822 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 34, ptr @w1_therm_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_therm_family_DS18B20 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 40, ptr @w1_therm_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_therm_family_DS28EA00 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 66, ptr @w1_ds28ea00_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_therm_family_DS1825 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 59, ptr @w1_therm_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_ds18s20_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_therm_add_slave, ptr @w1_therm_remove_slave, ptr @w1_ds18s20_groups, ptr @w1_chip_info }, [16 x i8] zeroinitializer }, align 32
@w1_ds18s20_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_ds18s20_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @w1_hwmon_ops, ptr @w1_info }, [24 x i8] zeroinitializer }, align 32
@bulk_read_device_counter = internal global { i16, [30 x i8] } zeroinitializer, align 32
@dev_attr_therm_bulk_read = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_bulk_read_show, ptr @therm_bulk_read_store }, [36 x i8] zeroinitializer }, align 32
@w1_therm_add_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 948, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: Device has been added, but bulk read is unavailable. err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"w1_therm_add_slave\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/w1/slaves/w1_therm.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_therm_add_slave._entry_ptr = internal global ptr @w1_therm_add_slave._entry, section ".printk_index", align 4
@w1_therm_add_slave._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 961, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: Device has been added, but power_mode may be corrupted. err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@w1_therm_add_slave._entry_ptr.7 = internal global ptr @w1_therm_add_slave._entry.5, section ".printk_index", align 4
@w1_therm_add_slave._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 972, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:Device has been added, but resolution may be corrupted. err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@w1_therm_add_slave._entry_ptr.10 = internal global ptr @w1_therm_add_slave._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bulk_read_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 848, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Device not supported by the driver\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bulk_read_support\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bulk_read_support._entry_ptr = internal global ptr @bulk_read_support._entry, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"therm_bulk_read\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@therm_bulk_read_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1893, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: unable to trigger a bulk read on the bus. err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"therm_bulk_read_store\00", [42 x i8] zeroinitializer }, align 32
@therm_bulk_read_store._entry_ptr = internal global ptr @therm_bulk_read_store._entry, section ".printk_index", align 4
@conversion_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.19, ptr @.str.2, i32 869, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"conversion_time\00", [16 x i8] zeroinitializer }, align 32
@conversion_time._entry_ptr = internal global ptr @conversion_time._entry, section ".printk_index", align 4
@w1_ds18s20_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_ds18s20_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_ds18s20_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_w1_slave, ptr @dev_attr_temperature, ptr @dev_attr_ext_power, ptr @dev_attr_eeprom_cmd, ptr @dev_attr_alarms, ptr @dev_attr_conv_time, ptr @dev_attr_features, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_w1_slave = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_slave_show, ptr @w1_slave_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temperature = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temperature_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ext_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ext_power_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eeprom_cmd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @eeprom_cmd_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr @alarms_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_conv_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @conv_time_show, ptr @conv_time_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_features = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @features_show, ptr @features_store }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_slave\00", [23 x i8] zeroinitializer }, align 32
@w1_slave_show.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_therm\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w1_slave_show\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Conversion in progress, retry later\0A\00", [55 x i8] zeroinitializer }, align 32
@w1_slave_show.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 1, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Temperature data may be corrupted. err=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c": crc=%02x %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@w1_slave_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.2, i32 1564, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:Read failed CRC check\0A\00", [38 x i8] zeroinitializer }, align 32
@w1_slave_show._entry_ptr = internal global ptr @w1_slave_show._entry, section ".printk_index", align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"t=%d\0A\00", [26 x i8] zeroinitializer }, align 32
@read_scratchpad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"w1_read_block(): returned %u instead of 9.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_scratchpad\00", [16 x i8] zeroinitializer }, align 32
@read_scratchpad._entry_ptr = internal global ptr @read_scratchpad._entry, section ".printk_index", align 4
@convert_t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1065, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Disabling W1_THERM_POLL_COMPLETION in parasite power mode.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"convert_t\00", [22 x i8] zeroinitializer }, align 32
@convert_t._entry_ptr = internal global ptr @convert_t._entry, section ".printk_index", align 4
@convert_t.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@temperature_from_RAM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.36, ptr @.str.2, i32 889, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temperature_from_RAM\00", [43 x i8] zeroinitializer }, align 32
@temperature_from_RAM._entry_ptr = internal global ptr @temperature_from_RAM._entry, section ".printk_index", align 4
@w1_slave_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1588, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: conversion error. err= %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w1_slave_store\00", [17 x i8] zeroinitializer }, align 32
@w1_slave_store._entry_ptr = internal global ptr @w1_slave_store._entry, section ".printk_index", align 4
@w1_slave_store._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.38, ptr @.str.2, i32 1594, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@w1_slave_store._entry_ptr.40 = internal global ptr @w1_slave_store._entry.39, section ".printk_index", align 4
@w1_slave_store._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 1606, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Set resolution - error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@w1_slave_store._entry_ptr.43 = internal global ptr @w1_slave_store._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@temperature_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.45, ptr @.str.2, i32 1626, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temperature_show\00", [47 x i8] zeroinitializer }, align 32
@temperature_show._entry_ptr = internal global ptr @temperature_show._entry, section ".printk_index", align 4
@temperature_show.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.45, ptr @.str.2, ptr @.str.23, i8 1, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@temperature_show.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.45, ptr @.str.2, ptr @.str.24, i8 1, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ext_power\00", [22 x i8] zeroinitializer }, align 32
@ext_power_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.47, ptr @.str.2, i32 1662, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext_power_show\00", [17 x i8] zeroinitializer }, align 32
@ext_power_show._entry_ptr = internal global ptr @ext_power_show._entry, section ".printk_index", align 4
@ext_power_show.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 1, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Power_mode may be corrupted. err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eeprom_cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"save\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"restore\00", [24 x i8] zeroinitializer }, align 32
@eeprom_cmd_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1753, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: error in process %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eeprom_cmd_store\00", [47 x i8] zeroinitializer }, align 32
@eeprom_cmd_store._entry_ptr = internal global ptr @eeprom_cmd_store._entry, section ".printk_index", align 4
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@alarms_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1774, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: error reading alarms register %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alarms_show\00", [20 x i8] zeroinitializer }, align 32
@alarms_show._entry_ptr = internal global ptr @alarms_show._entry, section ".printk_index", align 4
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%hd %hd\0A\00", [23 x i8] zeroinitializer }, align 32
@alarms_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1796, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: error unable to allocate memory %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alarms_store\00", [19 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr = internal global ptr @alarms_store._entry, section ".printk_index", align 4
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@alarms_store._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 1806, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: error parsing args %d\0A\00", [37 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.63 = internal global ptr @alarms_store._entry.61, section ".printk_index", align 4
@alarms_store._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 1814, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.65 = internal global ptr @alarms_store._entry.64, section ".printk_index", align 4
@alarms_store._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 1824, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.67 = internal global ptr @alarms_store._entry.66, section ".printk_index", align 4
@alarms_store._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 1831, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.69 = internal global ptr @alarms_store._entry.68, section ".printk_index", align 4
@alarms_store._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.59, ptr @.str.2, i32 1854, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: error reading from the slave device %d\0A\00", [52 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.72 = internal global ptr @alarms_store._entry.70, section ".printk_index", align 4
@alarms_store._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.59, ptr @.str.2, i32 1862, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Device not supported by the driver %d\0A\00", [53 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.75 = internal global ptr @alarms_store._entry.73, section ".printk_index", align 4
@alarms_store._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.59, ptr @.str.2, i32 1870, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: error writing to the slave device %d\0A\00", [54 x i8] zeroinitializer }, align 32
@alarms_store._entry_ptr.78 = internal global ptr @alarms_store._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conv_time\00", [22 x i8] zeroinitializer }, align 32
@conv_time_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1929, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Device is not supported by the driver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"conv_time_show\00", [17 x i8] zeroinitializer }, align 32
@conv_time_show._entry_ptr = internal global ptr @conv_time_show._entry, section ".printk_index", align 4
@check_family_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.82, ptr @.str.2, i32 830, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_family_data\00", [46 x i8] zeroinitializer }, align 32
@check_family_data._entry_ptr = internal global ptr @check_family_data._entry, section ".printk_index", align 4
@conv_time_measure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: Measure with strong_pullup is not supported.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conv_time_measure\00", [46 x i8] zeroinitializer }, align 32
@conv_time_measure._entry_ptr = internal global ptr @conv_time_measure._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@conv_time_measure.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.84, ptr @.str.2, ptr @.str.35, i8 1, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@conv_time_measure.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"W1 Measure complete, conv_time = %d, HZ=%d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@features_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.87, ptr @.str.2, i32 1971, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"features_show\00", [18 x i8] zeroinitializer }, align 32
@features_show._entry_ptr = internal global ptr @features_show._entry, section ".printk_index", align 4
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@features_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.89, ptr @.str.2, i32 1989, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"features_store\00", [17 x i8] zeroinitializer }, align 32
@features_store._entry_ptr = internal global ptr @features_store._entry, section ".printk_index", align 4
@features_store._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 2005, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: W1_THERM_POLL_COMPLETION disabled in parasite power mode.\0A\00", [33 x i8] zeroinitializer }, align 32
@features_store._entry_ptr.92 = internal global ptr @features_store._entry.90, section ".printk_index", align 4
@w1_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @w1_is_visible, ptr @w1_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_temp, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @w1_temp_config }, [24 x i8] zeroinitializer }, align 32
@w1_temp_config = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@w1_DS18S20_convert_temp.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"w1_DS18S20_convert_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Invalid argument for conversion\0A\00", [59 x i8] zeroinitializer }, align 32
@w1_therm_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_therm_add_slave, ptr @w1_therm_remove_slave, ptr @w1_therm_groups, ptr @w1_chip_info }, [16 x i8] zeroinitializer }, align 32
@w1_therm_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_therm_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_therm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_therm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_therm_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_w1_slave, ptr @dev_attr_temperature, ptr @dev_attr_ext_power, ptr @dev_attr_resolution, ptr @dev_attr_eeprom_cmd, ptr @dev_attr_alarms, ptr @dev_attr_conv_time, ptr @dev_attr_features, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_resolution = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resolution_show, ptr @resolution_store }, [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resolution\00", [21 x i8] zeroinitializer }, align 32
@resolution_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.96, ptr @.str.2, i32 1684, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resolution_show\00", [16 x i8] zeroinitializer }, align 32
@resolution_show._entry_ptr = internal global ptr @resolution_show._entry, section ".printk_index", align 4
@resolution_show.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Resolution may be corrupted. err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@resolution_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.98, ptr @.str.2, i32 1710, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resolution_store\00", [47 x i8] zeroinitializer }, align 32
@resolution_store._entry_ptr = internal global ptr @resolution_store._entry, section ".printk_index", align 4
@resolution_store._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.98, ptr @.str.2, i32 1716, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@resolution_store._entry_ptr.100 = internal global ptr @resolution_store._entry.99, section ".printk_index", align 4
@w1_ds28ea00_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_therm_add_slave, ptr @w1_therm_remove_slave, ptr @w1_ds28ea00_groups, ptr @w1_chip_info }, [16 x i8] zeroinitializer }, align 32
@w1_ds28ea00_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_ds28ea00_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_ds28ea00_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_ds28ea00_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_ds28ea00_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_w1_slave, ptr @dev_attr_w1_seq, ptr @dev_attr_temperature, ptr @dev_attr_ext_power, ptr @dev_attr_resolution, ptr @dev_attr_eeprom_cmd, ptr @dev_attr_alarms, ptr @dev_attr_conv_time, ptr @dev_attr_features, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_w1_seq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @w1_seq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w1_seq\00", [25 x i8] zeroinitializer }, align 32
@switch.table.w1_DS18B20_convert_time = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 95, i32 190, i32 375, i32 750, i32 850, i32 1600], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"w1_strong_pullup\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 44, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"w1_therm_families\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 721, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"w1_therm_family_DS18S20\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 501, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"w1_therm_family_DS1822\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 511, i32 25 }
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"w1_therm_family_DS18B20\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 506, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"w1_therm_family_DS28EA00\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 516, i32 25 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"w1_therm_family_DS1825\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 521, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"w1_ds18s20_fops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 485, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"w1_ds18s20_groups\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"w1_chip_info\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 467, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"bulk_read_device_counter\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 48, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant [25 x i8] c"dev_attr_therm_bulk_read\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 946, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 959, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 970, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 847, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 358, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1919, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1886, i32 21 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1891, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 868, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"w1_ds18s20_group\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 423, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"w1_ds18s20_attrs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 396, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"dev_attr_w1_slave\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"dev_attr_temperature\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"dev_attr_ext_power\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"dev_attr_eeprom_cmd\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"dev_attr_conv_time\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"dev_attr_features\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 348, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1536, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1550, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1557, i32 41 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1558, i32 40 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1559, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1559, i32 44 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1564, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1570, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1249, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1063, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1107, i32 7 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 888, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1587, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1593, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1606, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 350, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1625, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 351, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1661, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1670, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 353, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1745, i32 21 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1748, i32 21 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1753, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 354, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1772, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1777, i32 22 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1794, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1802, i32 26 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1805, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1813, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1823, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1830, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1852, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1860, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1868, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 355, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1928, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 829, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1166, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1199, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 356, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1970, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1974, i32 22 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1989, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2003, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant [13 x i8] c"w1_hwmon_ops\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 462, i32 31 }
@___asan_gen_.470 = private unnamed_addr constant [8 x i8] c"w1_info\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 457, i32 41 }
@___asan_gen_.473 = private unnamed_addr constant [8 x i8] c"w1_temp\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 452, i32 40 }
@___asan_gen_.476 = private unnamed_addr constant [15 x i8] c"w1_temp_config\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 447, i32 18 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 701, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant [14 x i8] c"w1_therm_fops\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 478, i32 35 }
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"w1_therm_groups\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [15 x i8] c"w1_therm_group\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 422, i32 1 }
@___asan_gen_.494 = private unnamed_addr constant [15 x i8] c"w1_therm_attrs\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 384, i32 26 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c"dev_attr_resolution\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 352, i32 8 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1683, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1691, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1709, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1715, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [17 x i8] c"w1_ds28ea00_fops\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 492, i32 35 }
@___asan_gen_.524 = private unnamed_addr constant [19 x i8] c"w1_ds28ea00_groups\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [18 x i8] c"w1_ds28ea00_group\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 424, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant [18 x i8] c"w1_ds28ea00_attrs\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 407, i32 26 }
@___asan_gen_.533 = private unnamed_addr constant [16 x i8] c"dev_attr_w1_seq\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.537 = private constant [32 x i8] c"../drivers/w1/slaves/w1_therm.c\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 349, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant [37 x i8] c"switch.table.w1_DS18B20_convert_time\00", align 1
@llvm.compiler.used = appending global [194 x ptr] [ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_alias204, ptr @__UNIQUE_ID_alias205, ptr @__UNIQUE_ID_alias206, ptr @__UNIQUE_ID_alias207, ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__UNIQUE_ID_strong_pulluptype183, ptr @__exitcall_w1_therm_fini, ptr @__initcall__kmod_w1_therm__198_2147_w1_therm_init6, ptr @__param_strong_pullup, ptr @alarms_show._entry, ptr @alarms_show._entry_ptr, ptr @alarms_store._entry, ptr @alarms_store._entry.61, ptr @alarms_store._entry.64, ptr @alarms_store._entry.66, ptr @alarms_store._entry.68, ptr @alarms_store._entry.70, ptr @alarms_store._entry.73, ptr @alarms_store._entry.76, ptr @alarms_store._entry_ptr, ptr @alarms_store._entry_ptr.63, ptr @alarms_store._entry_ptr.65, ptr @alarms_store._entry_ptr.67, ptr @alarms_store._entry_ptr.69, ptr @alarms_store._entry_ptr.72, ptr @alarms_store._entry_ptr.75, ptr @alarms_store._entry_ptr.78, ptr @bulk_read_support._entry, ptr @bulk_read_support._entry_ptr, ptr @check_family_data._entry, ptr @check_family_data._entry_ptr, ptr @conv_time_measure._entry, ptr @conv_time_measure._entry_ptr, ptr @conv_time_show._entry, ptr @conv_time_show._entry_ptr, ptr @conversion_time._entry, ptr @conversion_time._entry_ptr, ptr @convert_t._entry, ptr @convert_t._entry_ptr, ptr @eeprom_cmd_store._entry, ptr @eeprom_cmd_store._entry_ptr, ptr @ext_power_show._entry, ptr @ext_power_show._entry_ptr, ptr @features_show._entry, ptr @features_show._entry_ptr, ptr @features_store._entry, ptr @features_store._entry.90, ptr @features_store._entry_ptr, ptr @features_store._entry_ptr.92, ptr @read_scratchpad._entry, ptr @read_scratchpad._entry_ptr, ptr @resolution_show._entry, ptr @resolution_show._entry_ptr, ptr @resolution_store._entry, ptr @resolution_store._entry.99, ptr @resolution_store._entry_ptr, ptr @resolution_store._entry_ptr.100, ptr @temperature_from_RAM._entry, ptr @temperature_from_RAM._entry_ptr, ptr @temperature_show._entry, ptr @temperature_show._entry_ptr, ptr @therm_bulk_read_store._entry, ptr @therm_bulk_read_store._entry_ptr, ptr @w1_slave_show._entry, ptr @w1_slave_show._entry_ptr, ptr @w1_slave_store._entry, ptr @w1_slave_store._entry.39, ptr @w1_slave_store._entry.41, ptr @w1_slave_store._entry_ptr, ptr @w1_slave_store._entry_ptr.40, ptr @w1_slave_store._entry_ptr.43, ptr @w1_therm_add_slave._entry, ptr @w1_therm_add_slave._entry.5, ptr @w1_therm_add_slave._entry.8, ptr @w1_therm_add_slave._entry_ptr, ptr @w1_therm_add_slave._entry_ptr.10, ptr @w1_therm_add_slave._entry_ptr.7, ptr @w1_therm_fini, ptr @w1_strong_pullup, ptr @w1_therm_families, ptr @w1_therm_family_DS18S20, ptr @w1_therm_family_DS1822, ptr @w1_therm_family_DS18B20, ptr @w1_therm_family_DS28EA00, ptr @w1_therm_family_DS1825, ptr @w1_ds18s20_fops, ptr @w1_ds18s20_groups, ptr @w1_chip_info, ptr @bulk_read_device_counter, ptr @dev_attr_therm_bulk_read, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @w1_ds18s20_group, ptr @w1_ds18s20_attrs, ptr @dev_attr_w1_slave, ptr @dev_attr_temperature, ptr @dev_attr_ext_power, ptr @dev_attr_eeprom_cmd, ptr @dev_attr_alarms, ptr @dev_attr_conv_time, ptr @dev_attr_features, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @w1_hwmon_ops, ptr @w1_info, ptr @w1_temp, ptr @w1_temp_config, ptr @.str.93, ptr @.str.94, ptr @w1_therm_fops, ptr @w1_therm_groups, ptr @w1_therm_group, ptr @w1_therm_attrs, ptr @dev_attr_resolution, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @w1_ds28ea00_fops, ptr @w1_ds28ea00_groups, ptr @w1_ds28ea00_group, ptr @w1_ds28ea00_attrs, ptr @dev_attr_w1_seq, ptr @.str.101, ptr @switch.table.w1_DS18B20_convert_time], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_strong_pullup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_families to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_family_DS18S20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_family_DS1822 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_family_DS18B20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_family_DS28EA00 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_family_DS1825 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds18s20_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds18s20_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_read_device_counter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_therm_bulk_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_add_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_add_slave._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_add_slave._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_read_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @therm_bulk_read_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conversion_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds18s20_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds18s20_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_w1_slave to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temperature to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ext_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom_cmd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_conv_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_features to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_scratchpad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @convert_t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temperature_from_RAM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_store._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_slave_store._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temperature_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_power_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_cmd_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarms_store._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conv_time_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_family_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conv_time_measure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_store._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_therm_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resolution to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resolution_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resolution_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resolution_store._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds28ea00_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds28ea00_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds28ea00_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds28ea00_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_w1_seq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.w1_DS18B20_convert_time to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_therm_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %f = getelementptr [5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 %i.05, i32 2
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f, align 4
  tail call void @w1_unregister_family(ptr noundef %3) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_therm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %f = getelementptr [5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 %i.05, i32 2
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %call = tail call i32 @w1_register_family(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr [5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_DS18S20_convert_temp(ptr nocapture noundef readonly %rom) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr i8, ptr %rom, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_DS18S20_convert_temp.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_DS18S20_convert_temp, %if.then4)) #16
          to label %cleanup [label %if.then4], !srcloc !311

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w1_DS18S20_convert_temp.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #16
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx6 = getelementptr i8, ptr %rom, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %rom to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rom, align 1
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %shr14 = or i32 %7, -128
  %t.0.in = select i1 %cmp, i32 %7, i32 %shr14
  %t.0 = mul nsw i32 %t.0.in, 1000
  %sub17 = add nsw i32 %t.0, -250
  %conv19 = zext i8 %1 to i32
  %arrayidx20 = getelementptr i8, ptr %rom, i32 6
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %9 to i32
  %sub22 = sub nsw i32 %conv19, %conv21
  %mul23 = mul nsw i32 %sub22, 1000
  %div = sdiv i32 %mul23, %conv19
  %add = add nsw i32 %sub17, %div
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body
  %retval.0 = phi i32 [ %add, %if.end5 ], [ 0, %if.then4 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_DS18S20_convert_time(ptr nocapture noundef readonly %sl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv_time_override = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %conv_time_override to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conv_time_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %. = select i1 %cmp, i32 750, i32 %3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_DS18S20_write_data(ptr nocapture noundef readonly %sl, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call fastcc i32 @write_scratchpad(ptr noundef %sl, ptr noundef %data, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_DS18B20_convert_temp(ptr nocapture noundef readonly %rom) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %rom to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rom, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #16
  %arrayidx = getelementptr i8, ptr %rom, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv1 = zext i16 %2 to i32
  %5 = shl i32 %conv1, 18
  %and4 = shl nuw nsw i32 %conv, 16
  %6 = and i32 %and4, 196608
  %sext = or i32 %6, %5
  %conv6 = ashr exact i32 %sext, 16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv7 = sext i16 %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %conv7.sink = phi i32 [ %conv7, %if.end ], [ %conv6, %if.then ]
  %.sink = phi i32 [ 16, %if.end ], [ 64, %if.then ]
  %mul8 = mul nsw i32 %conv7.sink, 1000
  %div9 = sdiv i32 %mul8, %.sink
  ret i32 %div9
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w1_DS18B20_convert_time(ptr nocapture noundef readonly %sl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv_time_override = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %conv_time_override to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conv_time_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %resolution = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resolution, align 4
  %switch.tableidx = add i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 6
  br i1 %6, label %switch.lookup, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

switch.lookup:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.w1_DS18B20_convert_time, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %3, %if.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ 750, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_DS18B20_set_resolution(ptr noundef %sl, i32 noundef %val) #3 align 64 {
entry:
  %info = alloca %struct.therm_info, align 1
  %info2 = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info) #16
  %0 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 2
  %1 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 4
  %2 = call ptr @memset(ptr %info, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info2) #16
  %3 = getelementptr inbounds [9 x i8], ptr %info2, i32 0, i32 4
  %4 = add i32 %val, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %4)
  %5 = icmp ult i32 %4, -6
  %6 = call ptr @memset(ptr %info2, i32 255, i32 11)
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @read_scratchpad(ptr noundef %sl, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %9 = and i8 %8, 31
  %val.tr = trunc i32 %val to i8
  %10 = shl i8 %val.tr, 5
  %11 = add i8 %10, -32
  %conv8 = or i8 %9, %11
  store i8 %conv8, ptr %1, align 1
  %call.i = call fastcc i32 @write_scratchpad(ptr noundef %sl, ptr noundef %0, i8 noundef zeroext 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %call14 = call fastcc i32 @read_scratchpad(ptr noundef %sl, ptr noundef nonnull %info2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 1
  %16 = xor i8 %15, %13
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp26 = icmp ult i8 %16, 32
  %. = select i1 %cmp26, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %., %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info2) #16
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info) #16
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_DS18B20_get_resolution(ptr noundef %sl) #3 align 64 {
entry:
  %info = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info) #16
  %0 = call ptr @memset(ptr %info, i32 255, i32 11)
  %call = call fastcc i32 @read_scratchpad(ptr noundef %sl, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = lshr i8 %3, 5
  %5 = call i8 @llvm.umin.i8(i8 %4, i8 5)
  %6 = add nuw nsw i8 %5, 9
  %7 = zext i8 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info) #16
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_DS18B20_write_data(ptr nocapture noundef readonly %sl, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call fastcc i32 @write_scratchpad(ptr noundef %sl, ptr noundef %data, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_therm_add_slave(ptr noundef %sl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #19
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcnt, align 4
  %family.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 8
  %3 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %family.i, align 8
  %fid1.i = getelementptr inbounds %struct.w1_family, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %fid1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fid1.i, align 4
  %7 = load ptr, ptr getelementptr inbounds ([5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 0, i32 2), align 4
  %fid.i = getelementptr inbounds %struct.w1_family, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %fid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fid.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %6)
  %cmp3.i = icmp eq i8 %9, %6
  br i1 %cmp3.i, label %if.end.device_family.exit_crit_edge, label %for.inc.i

if.end.device_family.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %device_family.exit

for.inc.i:                                        ; preds = %if.end
  %10 = load ptr, ptr getelementptr inbounds ([5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 1, i32 2), align 4
  %fid.1.i = getelementptr inbounds %struct.w1_family, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %fid.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fid.1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %6)
  %cmp3.1.i = icmp eq i8 %12, %6
  br i1 %cmp3.1.i, label %for.inc.i.device_family.exit_crit_edge, label %for.inc.1.i

for.inc.i.device_family.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %device_family.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %13 = load ptr, ptr getelementptr inbounds ([5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 2, i32 2), align 4
  %fid.2.i = getelementptr inbounds %struct.w1_family, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %fid.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fid.2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %6)
  %cmp3.2.i = icmp eq i8 %15, %6
  br i1 %cmp3.2.i, label %for.inc.1.i.device_family.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.device_family.exit_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %device_family.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %16 = load ptr, ptr getelementptr inbounds ([5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 3, i32 2), align 4
  %fid.3.i = getelementptr inbounds %struct.w1_family, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %fid.3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fid.3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %6)
  %cmp3.3.i = icmp eq i8 %18, %6
  br i1 %cmp3.3.i, label %for.inc.2.i.device_family.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.device_family.exit_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %device_family.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %19 = load ptr, ptr getelementptr inbounds ([5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 4, i32 2), align 4
  %fid.4.i = getelementptr inbounds %struct.w1_family, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %fid.4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fid.4.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %6)
  %cmp3.4.i = icmp eq i8 %21, %6
  br i1 %cmp3.4.i, label %for.inc.3.i.device_family.exit_crit_edge, label %for.inc.3.i.if.then5_crit_edge

for.inc.3.i.if.then5_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

for.inc.3.i.device_family.exit_crit_edge:         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %device_family.exit

device_family.exit:                               ; preds = %for.inc.3.i.device_family.exit_crit_edge, %for.inc.2.i.device_family.exit_crit_edge, %for.inc.1.i.device_family.exit_crit_edge, %for.inc.i.device_family.exit_crit_edge, %if.end.device_family.exit_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %if.end.device_family.exit_crit_edge ], [ 1, %for.inc.i.device_family.exit_crit_edge ], [ 2, %for.inc.1.i.device_family.exit_crit_edge ], [ 3, %for.inc.2.i.device_family.exit_crit_edge ], [ 4, %for.inc.3.i.device_family.exit_crit_edge ]
  %arrayidx.i = getelementptr [5 x %struct.w1_therm_family_converter], ptr @w1_therm_families, i32 0, i32 %i.010.lcssa.i
  %tobool4.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool4.not, label %device_family.exit.if.then5_crit_edge, label %if.end7

device_family.exit.if.then5_crit_edge:            ; preds = %device_family.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %device_family.exit.if.then5_crit_edge, %for.inc.3.i.if.then5_crit_edge
  %22 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %family_data, align 4
  tail call void @kfree(ptr noundef %23) #16
  br label %cleanup

if.end7:                                          ; preds = %device_family.exit
  %24 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %family_data, align 4
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %specific_functions to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %specific_functions, align 4
  %27 = load ptr, ptr %family_data, align 4
  %specific_functions.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %specific_functions.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %specific_functions.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %bulk_read_support.exit.thread, label %bulk_read_support.exit

bulk_read_support.exit.thread:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %if.end19

bulk_read_support.exit:                           ; preds = %if.end7
  %bulk_read.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %bulk_read.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bulk_read.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.i.not = icmp eq i8 %31, 0
  br i1 %tobool3.i.not, label %bulk_read_support.exit.if.end19_crit_edge, label %if.then10

bulk_read_support.exit.if.end19_crit_edge:        ; preds = %bulk_read_support.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then10:                                        ; preds = %bulk_read_support.exit
  %32 = load i16, ptr @bulk_read_device_counter, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool11.not = icmp eq i16 %32, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then12:                                        ; preds = %if.then10
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 4
  %dev = getelementptr inbounds %struct.w1_master, ptr %34, i32 0, i32 23
  %call13 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_therm_bulk_read) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end18_crit_edge, label %do.end

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %dev16 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call13) #20
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then12.if.end18_crit_edge, %if.then10.if.end18_crit_edge
  %35 = load i16, ptr @bulk_read_device_counter, align 2
  %inc = add i16 %35, 1
  store i16 %inc, ptr @bulk_read_device_counter, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %bulk_read_support.exit.if.end19_crit_edge, %bulk_read_support.exit.thread
  %call20 = tail call fastcc i32 @read_powermode(ptr noundef %sl)
  %36 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %family_data, align 4
  %external_powered = getelementptr inbounds %struct.w1_therm_family_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %external_powered to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call20, ptr %external_powered, align 4
  %39 = load ptr, ptr %family_data, align 4
  %external_powered23 = getelementptr inbounds %struct.w1_therm_family_data, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %external_powered23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %external_powered23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp = icmp slt i32 %41, 0
  br i1 %cmp, label %do.end27, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %dev28 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %41) #20
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.end19.if.end31_crit_edge
  %42 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %family_data, align 4
  %specific_functions33 = getelementptr inbounds %struct.w1_therm_family_data, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %specific_functions33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %specific_functions33, align 4
  %get_resolution = getelementptr inbounds %struct.w1_therm_family_converter, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %get_resolution to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_resolution, align 4
  %tobool34.not = icmp eq ptr %47, null
  br i1 %tobool34.not, label %if.end31.if.end52_crit_edge, label %if.then35

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then35:                                        ; preds = %if.end31
  %call39 = tail call i32 %47(ptr noundef %sl) #16
  %48 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %family_data, align 4
  %resolution = getelementptr inbounds %struct.w1_therm_family_data, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call39, ptr %resolution, align 4
  %51 = load ptr, ptr %family_data, align 4
  %resolution42 = getelementptr inbounds %struct.w1_therm_family_data, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %resolution42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resolution42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp43 = icmp slt i32 %53, 0
  br i1 %cmp43, label %do.end47, label %if.then35.if.end52_crit_edge

if.then35.if.end52_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.end47:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  %dev48 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev48, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %53) #20
  br label %if.end52

if.end52:                                         ; preds = %do.end47, %if.then35.if.end52_crit_edge, %if.end31.if.end52_crit_edge
  %54 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %family_data, align 4
  %convert_triggered = getelementptr inbounds %struct.w1_therm_family_data, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %convert_triggered to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %convert_triggered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -19, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_therm_remove_slave(ptr noundef %sl) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %refcnt1 = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt1, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !313
  tail call void @llvm.prefetch.p0(ptr %refcnt1, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt1, ptr %refcnt1, i32 1, ptr elementtype(i32) %refcnt1) #16, !srcloc !314
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !315
  %3 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %family_data, align 4
  %specific_functions.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %specific_functions.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %specific_functions.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %bulk_read_support.exit.thread, label %bulk_read_support.exit

bulk_read_support.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %if.end4

bulk_read_support.exit:                           ; preds = %entry
  %bulk_read.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %bulk_read.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bulk_read.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.i.not = icmp eq i8 %8, 0
  br i1 %tobool3.i.not, label %bulk_read_support.exit.if.end4_crit_edge, label %if.then

bulk_read_support.exit.if.end4_crit_edge:         ; preds = %bulk_read_support.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %bulk_read_support.exit
  %9 = load i16, ptr @bulk_read_device_counter, align 2
  %dec = add i16 %9, -1
  store i16 %dec, ptr @bulk_read_device_counter, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %dev = getelementptr inbounds %struct.w1_master, ptr %11, i32 0, i32 23
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_therm_bulk_read) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %bulk_read_support.exit.if.end4_crit_edge, %bulk_read_support.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool5.not18 = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool5.not18, label %if.end4.while.end_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end4.while.body_crit_edge
  tail call void @msleep(i32 noundef 1000) #16
  %12 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %family_data, align 4
  %refcnt7 = getelementptr inbounds %struct.w1_therm_family_data, ptr %13, i32 0, i32 1
  %call.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt7, i32 noundef 4) #16
  %14 = ptrtoint ptr %refcnt7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refcnt7, align 4
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end4.while.end_crit_edge
  %16 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %family_data, align 4
  tail call void @kfree(ptr noundef %17) #16
  %18 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %family_data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_powermode(ptr nocapture noundef readonly %sl) unnamed_addr #6 align 64 {
entry:
  %match.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !316
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not9.not.i, label %if.end.while.cond.preheader_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %max_trying.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 5, %if.end.while.body.i_crit_edge ]
  %call2.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %dec.i = sext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %max_trying.010.i, %dec.i
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp1.i = icmp ne i32 %spec.select.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %bus_mutex_lock.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bus_mutex_lock.exit:                              ; preds = %while.body.i
  br i1 %cmp1.i, label %bus_mutex_lock.exit.while.cond.preheader_crit_edge, label %bus_mutex_lock.exit.dec_refcnt_crit_edge

bus_mutex_lock.exit.dec_refcnt_crit_edge:         ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

bus_mutex_lock.exit.while.cond.preheader_crit_edge: ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %bus_mutex_lock.exit.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr %match.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %5 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 85, ptr %match.i, align 1
  %6 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reg_num.i, align 8
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %call.i22 = call i32 @w1_reset_bus(ptr noundef %9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %while.cond.preheader.if.end9.thread_crit_edge, label %if.end9

while.cond.preheader.if.end9.thread_crit_edge:    ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end9.3.if.end9.thread_crit_edge, %if.end9.2.if.end9.thread_crit_edge, %if.end9.1.if.end9.thread_crit_edge, %if.end9.if.end9.thread_crit_edge, %while.cond.preheader.if.end9.thread_crit_edge
  %.lcssa = phi i64 [ %7, %while.cond.preheader.if.end9.thread_crit_edge ], [ %16, %if.end9.if.end9.thread_crit_edge ], [ %21, %if.end9.1.if.end9.thread_crit_edge ], [ %26, %if.end9.2.if.end9.thread_crit_edge ], [ %31, %if.end9.3.if.end9.thread_crit_edge ]
  %10 = call i64 @llvm.bswap.i64(i64 %.lcssa) #16
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx.i, align 1
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %13, ptr noundef nonnull %match.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext -76) #16
  %call8 = call zeroext i8 @w1_touch_bit(ptr noundef %1, i32 noundef 1) #16
  %conv = zext i8 %call8 to i32
  br label %while.end

if.end9:                                          ; preds = %while.cond.preheader
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %14 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 85, ptr %match.i, align 1
  %15 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %reg_num.i, align 8
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %call.i22.1 = call i32 @w1_reset_bus(ptr noundef %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.1)
  %tobool.not.i23.1 = icmp eq i32 %call.i22.1, 0
  br i1 %tobool.not.i23.1, label %if.end9.if.end9.thread_crit_edge, label %if.end9.1

if.end9.if.end9.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.1:                                        ; preds = %if.end9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %19 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 85, ptr %match.i, align 1
  %20 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %reg_num.i, align 8
  %22 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master, align 4
  %call.i22.2 = call i32 @w1_reset_bus(ptr noundef %23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.2)
  %tobool.not.i23.2 = icmp eq i32 %call.i22.2, 0
  br i1 %tobool.not.i23.2, label %if.end9.1.if.end9.thread_crit_edge, label %if.end9.2

if.end9.1.if.end9.thread_crit_edge:               ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.2:                                        ; preds = %if.end9.1
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %24 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 85, ptr %match.i, align 1
  %25 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %reg_num.i, align 8
  %27 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master, align 4
  %call.i22.3 = call i32 @w1_reset_bus(ptr noundef %28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.3)
  %tobool.not.i23.3 = icmp eq i32 %call.i22.3, 0
  br i1 %tobool.not.i23.3, label %if.end9.2.if.end9.thread_crit_edge, label %if.end9.3

if.end9.2.if.end9.thread_crit_edge:               ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.3:                                        ; preds = %if.end9.2
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %29 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 85, ptr %match.i, align 1
  %30 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %reg_num.i, align 8
  %32 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master, align 4
  %call.i22.4 = call i32 @w1_reset_bus(ptr noundef %33) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.4)
  %tobool.not.i23.4 = icmp eq i32 %call.i22.4, 0
  br i1 %tobool.not.i23.4, label %if.end9.3.if.end9.thread_crit_edge, label %if.end9.4

if.end9.3.if.end9.thread_crit_edge:               ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.4:                                        ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br label %while.end

while.end:                                        ; preds = %if.end9.4, %if.end9.thread
  %ret.133 = phi i32 [ %conv, %if.end9.thread ], [ -19, %if.end9.4 ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %dec_refcnt

dec_refcnt:                                       ; preds = %while.end, %bus_mutex_lock.exit.dec_refcnt_crit_edge
  %ret.2 = phi i32 [ %ret.133, %while.end ], [ -11, %bus_mutex_lock.exit.dec_refcnt_crit_edge ]
  %34 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %family_data, align 4
  %refcnt12 = getelementptr inbounds %struct.w1_therm_family_data, ptr %35, i32 0, i32 1
  %call.i.i21 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt12, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt12, i32 1, i32 3, i32 1) #16
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt12, ptr %refcnt12, i32 1, ptr elementtype(i32) %refcnt12) #16, !srcloc !317
  br label %error

error:                                            ; preds = %dec_refcnt, %entry.error_crit_edge
  %ret.3 = phi i32 [ %ret.2, %dec_refcnt ], [ -19, %entry.error_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_bulk_read_show(ptr noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %slist = getelementptr i8, ptr %device, i32 -272
  %0 = ptrtoint ptr %slist to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn27 = load ptr, ptr %slist, align 4
  %cmp.not28 = icmp eq ptr %.pn27, %slist
  br i1 %cmp.not28, label %entry.show_result_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.show_result_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %show_result

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn27, %entry.for.body_crit_edge ]
  %ret.029 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %family_data = getelementptr i8, ptr %.pn30, i32 40
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %family_data, align 4
  %specific_functions.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %specific_functions.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %specific_functions.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %bulk_read_support.exit.thread, label %bulk_read_support.exit

bulk_read_support.exit.thread:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr i8, ptr %.pn30, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %for.inc

bulk_read_support.exit:                           ; preds = %if.then
  %bulk_read.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %bulk_read.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bulk_read.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.i.not = icmp eq i8 %8, 0
  br i1 %tobool3.i.not, label %bulk_read_support.exit.for.inc_crit_edge, label %if.then3

bulk_read_support.exit.for.inc_crit_edge:         ; preds = %bulk_read_support.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then3:                                         ; preds = %bulk_read_support.exit
  %9 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %family_data, align 4
  %convert_triggered = getelementptr inbounds %struct.w1_therm_family_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %convert_triggered to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %convert_triggered, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.then3.for.inc_crit_edge [
    i32 -1, label %if.then3.show_result_crit_edge
    i32 1, label %if.then10
  ]

if.then3.show_result_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %show_result

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then3.for.inc_crit_edge, %bulk_read_support.exit.for.inc_crit_edge, %bulk_read_support.exit.thread, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ 1, %if.then10 ], [ %ret.029, %bulk_read_support.exit.for.inc_crit_edge ], [ %ret.029, %for.body.for.inc_crit_edge ], [ %ret.029, %if.then3.for.inc_crit_edge ], [ %ret.029, %bulk_read_support.exit.thread ]
  %14 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, %slist
  br i1 %cmp.not, label %for.inc.show_result_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.show_result_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %show_result

show_result:                                      ; preds = %for.inc.show_result_crit_edge, %if.then3.show_result_crit_edge, %entry.show_result_crit_edge
  %ret.2 = phi i32 [ 0, %entry.show_result_crit_edge ], [ %12, %if.then3.show_result_crit_edge ], [ %ret.1, %for.inc.show_result_crit_edge ]
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %ret.2)
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_bulk_read_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %size) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -408
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp eq i32 %size, 8
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.16, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then2:                                         ; preds = %if.then
  %slist.i = getelementptr i8, ptr %device, i32 -272
  %0 = ptrtoint ptr %slist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn177.i = load ptr, ptr %slist.i, align 4
  %cmp.not179.i = icmp eq ptr %.pn177.i, %slist.i
  br i1 %cmp.not179.i, label %if.then2.do.end_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %.pn182.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn177.i, %if.then2.for.body.i_crit_edge ]
  %t_conv.0181.i = phi i32 [ %t_conv.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %strong_pullup.0.off0180.i = phi i1 [ %strong_pullup.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.then2.for.body.i_crit_edge ]
  %sl.0183.i = getelementptr i8, ptr %.pn182.i, i32 -36
  %family_data.i = getelementptr i8, ptr %.pn182.i, i32 40
  %1 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.i.do.end_crit_edge, label %if.end.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.i:                                         ; preds = %for.body.i
  %specific_functions.i.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %specific_functions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %specific_functions.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %bulk_read_support.exit.thread.i, label %bulk_read_support.exit.i

bulk_read_support.exit.thread.i:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i.i = getelementptr i8, ptr %.pn182.i, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %for.inc.i

bulk_read_support.exit.i:                         ; preds = %if.end.i
  %bulk_read.i.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %bulk_read.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bulk_read.i.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool3.i.not.i, label %bulk_read_support.exit.i.for.inc.i_crit_edge, label %conversion_time.exit.i

bulk_read_support.exit.i.for.inc.i_crit_edge:     ; preds = %bulk_read_support.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

conversion_time.exit.i:                           ; preds = %bulk_read_support.exit.i
  %get_conversion_time.i.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %get_conversion_time.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_conversion_time.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %sl.0183.i) #16
  %9 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 %t_conv.0181.i) #16
  br i1 %strong_pullup.0.off0180.i, label %conversion_time.exit.i.for.inc.i_crit_edge, label %lor.rhs.i

conversion_time.exit.i.for.inc.i_crit_edge:       ; preds = %conversion_time.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.rhs.i:                                        ; preds = %conversion_time.exit.i
  %10 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6.i = icmp eq i32 %10, 2
  br i1 %cmp6.i, label %lor.rhs.i.for.inc.i_crit_edge, label %lor.rhs7.i

lor.rhs.i.for.inc.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

lor.rhs7.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %family_data.i, align 4
  %external_powered.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %external_powered.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %external_powered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.i = icmp ne i32 %10, 0
  %spec.select.i = select i1 %tobool9.not.i, i1 %tobool10.i, i1 false
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.rhs7.i, %lor.rhs.i.for.inc.i_crit_edge, %conversion_time.exit.i.for.inc.i_crit_edge, %bulk_read_support.exit.i.for.inc.i_crit_edge, %bulk_read_support.exit.thread.i
  %strong_pullup.1.off0.i = phi i1 [ %strong_pullup.0.off0180.i, %bulk_read_support.exit.i.for.inc.i_crit_edge ], [ true, %conversion_time.exit.i.for.inc.i_crit_edge ], [ true, %lor.rhs.i.for.inc.i_crit_edge ], [ %spec.select.i, %lor.rhs7.i ], [ %strong_pullup.0.off0180.i, %bulk_read_support.exit.thread.i ]
  %t_conv.1.i = phi i32 [ %t_conv.0181.i, %bulk_read_support.exit.i.for.inc.i_crit_edge ], [ %9, %conversion_time.exit.i.for.inc.i_crit_edge ], [ %9, %lor.rhs.i.for.inc.i_crit_edge ], [ %9, %lor.rhs7.i ], [ %t_conv.0181.i, %bulk_read_support.exit.thread.i ]
  %15 = ptrtoint ptr %.pn182.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn182.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slist.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t_conv.1.i)
  %tobool18.not.i = icmp eq i32 %t_conv.1.i, 0
  br i1 %tobool18.not.i, label %for.end.i.do.end_crit_edge, label %if.end20.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end20.i:                                       ; preds = %for.end.i
  %bus_mutex.i = getelementptr i8, ptr %device, i32 -100
  %call8.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.not9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp.not9.not.i.i, label %if.end20.i.while.cond.preheader.i_crit_edge, label %if.end20.i.while.body.i.i_crit_edge

if.end20.i.while.body.i.i_crit_edge:              ; preds = %if.end20.i
  br label %while.body.i.i

if.end20.i.while.cond.preheader.i_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end20.i.while.body.i.i_crit_edge
  %max_trying.010.i.i = phi i32 [ %spec.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 5, %if.end20.i.while.body.i.i_crit_edge ]
  %call2.i.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i146.i = icmp eq i32 %call2.i.i, 0
  %dec.i.i = sext i1 %tobool.not.i146.i to i32
  %spec.select.i.i = add nsw i32 %max_trying.010.i.i, %dec.i.i
  %call.i147.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %cmp.not.i.i = icmp ne i32 %call.i147.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp1.i.i = icmp ne i32 %spec.select.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %bus_mutex_lock.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

bus_mutex_lock.exit.i:                            ; preds = %while.body.i.i
  br i1 %cmp1.i.i, label %bus_mutex_lock.exit.i.while.cond.preheader.i_crit_edge, label %bus_mutex_lock.exit.i.do.end_crit_edge

bus_mutex_lock.exit.i.do.end_crit_edge:           ; preds = %bus_mutex_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

bus_mutex_lock.exit.i.while.cond.preheader.i_crit_edge: ; preds = %bus_mutex_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %bus_mutex_lock.exit.i.while.cond.preheader.i_crit_edge, %if.end20.i.while.cond.preheader.i_crit_edge
  %call28.i = tail call i32 @w1_reset_bus(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %while.cond.preheader.i.if.then30.i_crit_edge, label %while.cond.1.i

while.cond.preheader.i.if.then30.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

while.cond.1.i:                                   ; preds = %while.cond.preheader.i
  %call28.1.i = tail call i32 @w1_reset_bus(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %tobool29.not.1.i = icmp eq i32 %call28.1.i, 0
  br i1 %tobool29.not.1.i, label %while.cond.1.i.if.then30.i_crit_edge, label %while.cond.2.i

while.cond.1.i.if.then30.i_crit_edge:             ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %call28.2.i = tail call i32 @w1_reset_bus(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %tobool29.not.2.i = icmp eq i32 %call28.2.i, 0
  br i1 %tobool29.not.2.i, label %while.cond.2.i.if.then30.i_crit_edge, label %while.cond.3.i

while.cond.2.i.if.then30.i_crit_edge:             ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %call28.3.i = tail call i32 @w1_reset_bus(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3.i)
  %tobool29.not.3.i = icmp eq i32 %call28.3.i, 0
  br i1 %tobool29.not.3.i, label %while.cond.3.i.if.then30.i_crit_edge, label %while.cond.4.i

while.cond.3.i.if.then30.i_crit_edge:             ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %call28.4.i = tail call i32 @w1_reset_bus(ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.4.i)
  %tobool29.not.4.i = icmp eq i32 %call28.4.i, 0
  br i1 %tobool29.not.4.i, label %while.cond.4.i.if.then30.i_crit_edge, label %while.cond.4.i.mt_unlock.i_crit_edge

while.cond.4.i.mt_unlock.i_crit_edge:             ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock.i

while.cond.4.i.if.then30.i_crit_edge:             ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30.i

if.then30.i:                                      ; preds = %while.cond.4.i.if.then30.i_crit_edge, %while.cond.3.i.if.then30.i_crit_edge, %while.cond.2.i.if.then30.i_crit_edge, %while.cond.1.i.if.then30.i_crit_edge, %while.cond.preheader.i.if.then30.i_crit_edge
  tail call void @w1_write_8(ptr noundef %add.ptr.i, i8 noundef zeroext -52) #16
  br i1 %strong_pullup.1.off0.i, label %if.then32.i, label %if.then30.i.if.end33.i_crit_edge

if.then30.i.if.end33.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @w1_next_pullup(ptr noundef %add.ptr.i, i32 noundef %t_conv.1.i) #16
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.then30.i.if.end33.i_crit_edge
  tail call void @w1_write_8(ptr noundef %add.ptr.i, i8 noundef zeroext 68) #16
  %16 = ptrtoint ptr %slist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn138185.i = load ptr, ptr %slist.i, align 4
  %cmp42.not186.i = icmp eq ptr %.pn138185.i, %slist.i
  br i1 %cmp42.not186.i, label %if.end33.i.for.end55.i_crit_edge, label %if.end33.i.for.body44.i_crit_edge

if.end33.i.for.body44.i_crit_edge:                ; preds = %if.end33.i
  br label %for.body44.i

if.end33.i.for.end55.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end55.i

for.body44.i:                                     ; preds = %for.inc49.i.for.body44.i_crit_edge, %if.end33.i.for.body44.i_crit_edge
  %.pn138187.i = phi ptr [ %.pn138.i, %for.inc49.i.for.body44.i_crit_edge ], [ %.pn138185.i, %if.end33.i.for.body44.i_crit_edge ]
  %family_data.i148.i = getelementptr i8, ptr %.pn138187.i, i32 40
  %17 = ptrtoint ptr %family_data.i148.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %family_data.i148.i, align 4
  %specific_functions.i149.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %specific_functions.i149.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %specific_functions.i149.i, align 4
  %tobool.not.i150.i = icmp eq ptr %20, null
  br i1 %tobool.not.i150.i, label %bulk_read_support.exit157.thread.i, label %bulk_read_support.exit157.i

bulk_read_support.exit157.thread.i:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i154.i = getelementptr i8, ptr %.pn138187.i, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i154.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %for.inc49.i

bulk_read_support.exit157.i:                      ; preds = %for.body44.i
  %bulk_read.i151.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %bulk_read.i151.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bulk_read.i151.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.i152.not.i = icmp eq i8 %22, 0
  br i1 %tobool3.i152.not.i, label %bulk_read_support.exit157.i.for.inc49.i_crit_edge, label %if.then46.i

bulk_read_support.exit157.i.for.inc49.i_crit_edge: ; preds = %bulk_read_support.exit157.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc49.i

if.then46.i:                                      ; preds = %bulk_read_support.exit157.i
  call void @__sanitizer_cov_trace_pc() #18
  %convert_triggered.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %convert_triggered.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %convert_triggered.i, align 4
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %if.then46.i, %bulk_read_support.exit157.i.for.inc49.i_crit_edge, %bulk_read_support.exit157.thread.i
  %24 = ptrtoint ptr %.pn138187.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn138.i = load ptr, ptr %.pn138187.i, align 4
  %cmp42.not.i = icmp eq ptr %.pn138.i, %slist.i
  br i1 %cmp42.not.i, label %for.inc49.i.for.end55.i_crit_edge, label %for.inc49.i.for.body44.i_crit_edge

for.inc49.i.for.body44.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body44.i

for.inc49.i.for.end55.i_crit_edge:                ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end55.i

for.end55.i:                                      ; preds = %for.inc49.i.for.end55.i_crit_edge, %if.end33.i.for.end55.i_crit_edge
  br i1 %strong_pullup.1.off0.i, label %if.then57.i, label %if.else.i

if.then57.i:                                      ; preds = %for.end55.i
  %call58.i = tail call i32 @msleep_interruptible(i32 noundef %t_conv.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.not.i = icmp eq i32 %call58.i, 0
  br i1 %cmp59.not.i, label %if.end61.i, label %if.then57.i.mt_unlock.i_crit_edge

if.then57.i.mt_unlock.i_crit_edge:                ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock.i

if.end61.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i) #16
  br label %if.end68.i

if.else.i:                                        ; preds = %for.end55.i
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i) #16
  %call64.i = tail call i32 @msleep_interruptible(i32 noundef %t_conv.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.not.i = icmp eq i32 %call64.i, 0
  br i1 %cmp65.not.i, label %if.else.i.if.end68.i_crit_edge, label %if.else.i.set_flag.i_crit_edge

if.else.i.set_flag.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_flag.i

if.else.i.if.end68.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else.i.if.end68.i_crit_edge, %if.end61.i
  br label %set_flag.i

mt_unlock.i:                                      ; preds = %if.then57.i.mt_unlock.i_crit_edge, %while.cond.4.i.mt_unlock.i_crit_edge
  %ret.1.i = phi i32 [ -4, %if.then57.i.mt_unlock.i_crit_edge ], [ -19, %while.cond.4.i.mt_unlock.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bus_mutex.i) #16
  br label %set_flag.i

set_flag.i:                                       ; preds = %mt_unlock.i, %if.end68.i, %if.else.i.set_flag.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %mt_unlock.i ], [ -4, %if.else.i.set_flag.i_crit_edge ], [ 0, %if.end68.i ]
  %25 = ptrtoint ptr %slist.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn137188.i = load ptr, ptr %slist.i, align 4
  %cmp79.not189.i = icmp eq ptr %.pn137188.i, %slist.i
  br i1 %cmp79.not189.i, label %set_flag.i.if.end4_crit_edge, label %set_flag.i.for.body81.i_crit_edge

set_flag.i.for.body81.i_crit_edge:                ; preds = %set_flag.i
  br label %for.body81.i

set_flag.i.if.end4_crit_edge:                     ; preds = %set_flag.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

for.body81.i:                                     ; preds = %for.inc87.i.for.body81.i_crit_edge, %set_flag.i.for.body81.i_crit_edge
  %.pn137190.i = phi ptr [ %.pn137.i, %for.inc87.i.for.body81.i_crit_edge ], [ %.pn137188.i, %set_flag.i.for.body81.i_crit_edge ]
  %family_data.i158.i = getelementptr i8, ptr %.pn137190.i, i32 40
  %26 = ptrtoint ptr %family_data.i158.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %family_data.i158.i, align 4
  %specific_functions.i159.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %specific_functions.i159.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %specific_functions.i159.i, align 4
  %tobool.not.i160.i = icmp eq ptr %29, null
  br i1 %tobool.not.i160.i, label %bulk_read_support.exit167.thread.i, label %bulk_read_support.exit167.i

bulk_read_support.exit167.thread.i:               ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i164.i = getelementptr i8, ptr %.pn137190.i, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i164.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %for.inc87.i

bulk_read_support.exit167.i:                      ; preds = %for.body81.i
  %bulk_read.i161.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %bulk_read.i161.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bulk_read.i161.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.i162.not.i = icmp eq i8 %31, 0
  br i1 %tobool3.i162.not.i, label %bulk_read_support.exit167.i.for.inc87.i_crit_edge, label %if.then83.i

bulk_read_support.exit167.i.for.inc87.i_crit_edge: ; preds = %bulk_read_support.exit167.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc87.i

if.then83.i:                                      ; preds = %bulk_read_support.exit167.i
  call void @__sanitizer_cov_trace_pc() #18
  %convert_triggered85.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %convert_triggered85.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %convert_triggered85.i, align 4
  br label %for.inc87.i

for.inc87.i:                                      ; preds = %if.then83.i, %bulk_read_support.exit167.i.for.inc87.i_crit_edge, %bulk_read_support.exit167.thread.i
  %33 = ptrtoint ptr %.pn137190.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn137.i = load ptr, ptr %.pn137190.i, align 4
  %cmp79.not.i = icmp eq ptr %.pn137.i, %slist.i
  br i1 %cmp79.not.i, label %for.inc87.i.if.end4_crit_edge, label %for.inc87.i.for.body81.i_crit_edge

for.inc87.i.for.body81.i_crit_edge:               ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body81.i

for.inc87.i.if.end4_crit_edge:                    ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end4:                                          ; preds = %for.inc87.i.if.end4_crit_edge, %set_flag.i.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool5.not = icmp eq i32 %ret.2.i, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.end4.do.end_crit_edge

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

do.end:                                           ; preds = %if.end4.do.end_crit_edge, %bus_mutex_lock.exit.i.do.end_crit_edge, %for.end.i.do.end_crit_edge, %for.body.i.do.end_crit_edge, %if.then2.do.end_crit_edge, %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.013 = phi i32 [ %ret.2.i, %if.end4.do.end_crit_edge ], [ -19, %if.then2.do.end_crit_edge ], [ -11, %bus_mutex_lock.exit.i.do.end_crit_edge ], [ -19, %for.end.i.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ], [ -22, %if.then.do.end_crit_edge ], [ -19, %for.body.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %ret.013) #20
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end4.if.end7_crit_edge
  ret i32 %size
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_next_pullup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_touch_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_slave_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  %info = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info) #16
  %0 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 4
  %4 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 5
  %5 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 6
  %6 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 7
  %7 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 8
  %8 = getelementptr inbounds %struct.therm_info, ptr %info, i32 0, i32 1
  %9 = getelementptr inbounds %struct.therm_info, ptr %info, i32 0, i32 2
  %family_data1 = getelementptr i8, ptr %device, i32 -4
  %10 = call ptr @memset(ptr %info, i32 255, i32 11)
  %11 = ptrtoint ptr %family_data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %family_data1, align 4
  %specific_functions.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %specific_functions.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %specific_functions.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %bulk_read_support.exit.thread, label %bulk_read_support.exit

bulk_read_support.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #20
  br label %if.else20

bulk_read_support.exit:                           ; preds = %entry
  %bulk_read.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %bulk_read.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bulk_read.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.i.not = icmp eq i8 %16, 0
  br i1 %tobool3.i.not, label %bulk_read_support.exit.if.else20_crit_edge, label %if.then

bulk_read_support.exit.if.else20_crit_edge:       ; preds = %bulk_read_support.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else20

if.then:                                          ; preds = %bulk_read_support.exit
  %17 = ptrtoint ptr %family_data1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %family_data1, align 4
  %convert_triggered = getelementptr inbounds %struct.w1_therm_family_data, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %convert_triggered to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %convert_triggered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_slave_show.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_slave_show, %if.then8)) #16
          to label %cleanup [label %if.then8], !srcloc !311

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_slave_show.__UNIQUE_ID_ddebug192, ptr noundef %device, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #16
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11.not = icmp eq i32 %20, 0
  br i1 %cmp11.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = call fastcc i32 @read_scratchpad(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  %21 = ptrtoint ptr %family_data1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %family_data1, align 4
  %convert_triggered15 = getelementptr inbounds %struct.w1_therm_family_data, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %convert_triggered15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_triggered15, align 4
  br label %if.end22

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = call fastcc i32 @convert_t(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  br label %if.end22

if.else20:                                        ; preds = %bulk_read_support.exit.if.else20_crit_edge, %bulk_read_support.exit.thread
  %call21 = call fastcc i32 @convert_t(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.else16, %if.then12
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ %call17, %if.else16 ], [ %call21, %if.else20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp23 = icmp slt i32 %ret.0, 0
  br i1 %cmp23, label %do.body25, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end22
  %add.ptr = getelementptr i8, ptr %buf, i32 4096
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %info, align 1
  %conv = zext i8 %25 to i32
  %call44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.25, i32 noundef %conv)
  %sub = sub i32 4096, %call44
  %add.ptr43.1 = getelementptr i8, ptr %buf, i32 %call44
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %0, align 1
  %conv.1 = zext i8 %27 to i32
  %call44.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.1, i32 noundef %sub, ptr noundef nonnull @.str.25, i32 noundef %conv.1)
  %sub.1 = sub i32 %sub, %call44.1
  %idx.neg.2 = sub i32 0, %sub.1
  %add.ptr43.2 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  %conv.2 = zext i8 %29 to i32
  %call44.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.2, i32 noundef %sub.1, ptr noundef nonnull @.str.25, i32 noundef %conv.2)
  %sub.2 = sub i32 %sub.1, %call44.2
  %idx.neg.3 = sub i32 0, %sub.2
  %add.ptr43.3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.3
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %conv.3 = zext i8 %31 to i32
  %call44.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.3, i32 noundef %sub.2, ptr noundef nonnull @.str.25, i32 noundef %conv.3)
  %sub.3 = sub i32 %sub.2, %call44.3
  %idx.neg.4 = sub i32 0, %sub.3
  %add.ptr43.4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %3, align 1
  %conv.4 = zext i8 %33 to i32
  %call44.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.4, i32 noundef %sub.3, ptr noundef nonnull @.str.25, i32 noundef %conv.4)
  %sub.4 = sub i32 %sub.3, %call44.4
  %idx.neg.5 = sub i32 0, %sub.4
  %add.ptr43.5 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.5
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 1
  %conv.5 = zext i8 %35 to i32
  %call44.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.5, i32 noundef %sub.4, ptr noundef nonnull @.str.25, i32 noundef %conv.5)
  %sub.5 = sub i32 %sub.4, %call44.5
  %idx.neg.6 = sub i32 0, %sub.5
  %add.ptr43.6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.6
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %conv.6 = zext i8 %37 to i32
  %call44.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.6, i32 noundef %sub.5, ptr noundef nonnull @.str.25, i32 noundef %conv.6)
  %sub.6 = sub i32 %sub.5, %call44.6
  %idx.neg.7 = sub i32 0, %sub.6
  %add.ptr43.7 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.7
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 1
  %conv.7 = zext i8 %39 to i32
  %call44.7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.7, i32 noundef %sub.6, ptr noundef nonnull @.str.25, i32 noundef %conv.7)
  %sub.7 = sub i32 %sub.6, %call44.7
  %idx.neg.8 = sub i32 0, %sub.7
  %add.ptr43.8 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.8
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %7, align 1
  %conv.8 = zext i8 %41 to i32
  %call44.8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr43.8, i32 noundef %sub.7, ptr noundef nonnull @.str.25, i32 noundef %conv.8)
  %sub.8 = sub i32 %sub.7, %call44.8
  %idx.neg46 = sub i32 0, %sub.8
  %add.ptr47 = getelementptr i8, ptr %add.ptr, i32 %idx.neg46
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %8, align 1
  %conv48 = zext i8 %43 to i32
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool50.not = icmp eq i8 %45, 0
  %cond = select i1 %tobool50.not, ptr @.str.28, ptr @.str.27
  %call51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr47, i32 noundef %sub.8, ptr noundef nonnull @.str.26, i32 noundef %conv48, ptr noundef nonnull %cond)
  %sub52 = sub i32 %sub.8, %call51
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool54.not = icmp eq i8 %47, 0
  br i1 %tobool54.not, label %do.end60, label %if.then55

do.body25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w1_slave_show.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@w1_slave_show, %if.then37)) #16
          to label %cleanup [label %if.then37], !srcloc !311

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w1_slave_show.__UNIQUE_ID_ddebug193, ptr noundef %device, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %ret.0) #16
  br label %cleanup

if.then55:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %48 = call ptr @memcpy(ptr %12, ptr %info, i32 9)
  br label %if.end61

do.end60:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22) #20
  br label %if.end61

if.end61:                                         ; preds = %do.end60, %if.then55
  %idx.neg67 = sub i32 0, %sub52
  %add.ptr68 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %12, align 1
  %conv70 = zext i8 %50 to i32
  %call71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68, i32 noundef %sub52, ptr noundef nonnull @.str.25, i32 noundef %conv70)
  %sub72 = sub i32 %sub52, %call71
  %idx.neg67.1 = sub i32 0, %sub72
  %add.ptr68.1 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.1
  %arrayidx69.1 = getelementptr i8, ptr %12, i32 1
  %51 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx69.1, align 1
  %conv70.1 = zext i8 %52 to i32
  %call71.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.1, i32 noundef %sub72, ptr noundef nonnull @.str.25, i32 noundef %conv70.1)
  %sub72.1 = sub i32 %sub72, %call71.1
  %idx.neg67.2 = sub i32 0, %sub72.1
  %add.ptr68.2 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.2
  %arrayidx69.2 = getelementptr i8, ptr %12, i32 2
  %53 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx69.2, align 1
  %conv70.2 = zext i8 %54 to i32
  %call71.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.2, i32 noundef %sub72.1, ptr noundef nonnull @.str.25, i32 noundef %conv70.2)
  %sub72.2 = sub i32 %sub72.1, %call71.2
  %idx.neg67.3 = sub i32 0, %sub72.2
  %add.ptr68.3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.3
  %arrayidx69.3 = getelementptr i8, ptr %12, i32 3
  %55 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx69.3, align 1
  %conv70.3 = zext i8 %56 to i32
  %call71.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.3, i32 noundef %sub72.2, ptr noundef nonnull @.str.25, i32 noundef %conv70.3)
  %sub72.3 = sub i32 %sub72.2, %call71.3
  %idx.neg67.4 = sub i32 0, %sub72.3
  %add.ptr68.4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.4
  %arrayidx69.4 = getelementptr i8, ptr %12, i32 4
  %57 = ptrtoint ptr %arrayidx69.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx69.4, align 1
  %conv70.4 = zext i8 %58 to i32
  %call71.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.4, i32 noundef %sub72.3, ptr noundef nonnull @.str.25, i32 noundef %conv70.4)
  %sub72.4 = sub i32 %sub72.3, %call71.4
  %idx.neg67.5 = sub i32 0, %sub72.4
  %add.ptr68.5 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.5
  %arrayidx69.5 = getelementptr i8, ptr %12, i32 5
  %59 = ptrtoint ptr %arrayidx69.5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx69.5, align 1
  %conv70.5 = zext i8 %60 to i32
  %call71.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.5, i32 noundef %sub72.4, ptr noundef nonnull @.str.25, i32 noundef %conv70.5)
  %sub72.5 = sub i32 %sub72.4, %call71.5
  %idx.neg67.6 = sub i32 0, %sub72.5
  %add.ptr68.6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.6
  %arrayidx69.6 = getelementptr i8, ptr %12, i32 6
  %61 = ptrtoint ptr %arrayidx69.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx69.6, align 1
  %conv70.6 = zext i8 %62 to i32
  %call71.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.6, i32 noundef %sub72.5, ptr noundef nonnull @.str.25, i32 noundef %conv70.6)
  %sub72.6 = sub i32 %sub72.5, %call71.6
  %idx.neg67.7 = sub i32 0, %sub72.6
  %add.ptr68.7 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.7
  %arrayidx69.7 = getelementptr i8, ptr %12, i32 7
  %63 = ptrtoint ptr %arrayidx69.7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx69.7, align 1
  %conv70.7 = zext i8 %64 to i32
  %call71.7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.7, i32 noundef %sub72.6, ptr noundef nonnull @.str.25, i32 noundef %conv70.7)
  %sub72.7 = sub i32 %sub72.6, %call71.7
  %idx.neg67.8 = sub i32 0, %sub72.7
  %add.ptr68.8 = getelementptr i8, ptr %add.ptr, i32 %idx.neg67.8
  %arrayidx69.8 = getelementptr i8, ptr %12, i32 8
  %65 = ptrtoint ptr %arrayidx69.8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx69.8, align 1
  %conv70.8 = zext i8 %66 to i32
  %call71.8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.8, i32 noundef %sub72.7, ptr noundef nonnull @.str.25, i32 noundef %conv70.8)
  %sub72.8 = sub i32 %sub72.7, %call71.8
  %idx.neg77.le = sub i32 0, %sub72.8
  %add.ptr78 = getelementptr i8, ptr %add.ptr, i32 %idx.neg77.le
  %67 = ptrtoint ptr %family_data1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %family_data1, align 4
  %specific_functions.i129 = getelementptr inbounds %struct.w1_therm_family_data, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %specific_functions.i129 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %specific_functions.i129, align 4
  %tobool.not.i130 = icmp eq ptr %70, null
  br i1 %tobool.not.i130, label %do.end.i133, label %if.then.i131

if.then.i131:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %convert.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %convert.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %convert.i, align 4
  %call.i = call i32 %72(ptr noundef nonnull %info) #16
  br label %temperature_from_RAM.exit

do.end.i133:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36) #20
  br label %temperature_from_RAM.exit

temperature_from_RAM.exit:                        ; preds = %do.end.i133, %if.then.i131
  %retval.0.i134 = phi i32 [ %call.i, %if.then.i131 ], [ 0, %do.end.i133 ]
  %call82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr78, i32 noundef %sub72.8, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i134)
  %sub83.neg = sub i32 4096, %sub72.8
  %sub84 = add i32 %sub83.neg, %call82
  br label %cleanup

cleanup:                                          ; preds = %temperature_from_RAM.exit, %if.then37, %do.body25, %if.then8, %do.body
  %retval.0 = phi i32 [ %sub84, %temperature_from_RAM.exit ], [ 0, %if.then8 ], [ 0, %if.then37 ], [ 0, %do.body ], [ 0, %do.body25 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_slave_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #6 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !318
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call1) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %family_data = getelementptr i8, ptr %device, i32 -4
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.do.end8_crit_edge, label %lor.lhs.false

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

lor.lhs.false:                                    ; preds = %if.end
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %specific_functions, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end8_crit_edge, label %if.end9

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %if.end.do.end8_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.38) #20
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = call fastcc i32 @copy_scratchpad(ptr noundef %add.ptr.i)
  br label %if.end21

if.else:                                          ; preds = %if.end9
  %set_resolution = getelementptr inbounds %struct.w1_therm_family_converter, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %set_resolution to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_resolution, align 4
  %tobool14.not = icmp eq ptr %8, null
  br i1 %tobool14.not, label %if.else.if.end27_crit_edge, label %if.then15

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = call i32 %8(ptr noundef %add.ptr.i, i32 noundef %6) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then10
  %ret.0 = phi i32 [ %call11, %if.then10 ], [ %call19, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end21.if.end27_crit_edge, label %do.end26

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.38, i32 noundef %ret.0) #20
  br label %cleanup

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %if.else.if.end27_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %family_data, align 4
  %resolution = getelementptr inbounds %struct.w1_therm_family_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %resolution, align 4
  %14 = load ptr, ptr %family_data, align 4
  %conv_time_override = getelementptr inbounds %struct.w1_therm_family_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %conv_time_override to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %conv_time_override, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end26, %do.end8, %do.end
  %retval.0 = phi i32 [ %size, %do.end ], [ %ret.0, %do.end26 ], [ %size, %if.end27 ], [ %size, %do.end8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_scratchpad(ptr noundef %sl, ptr noundef %info) unnamed_addr #6 align 64 {
entry:
  %match.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %verdict = getelementptr inbounds %struct.therm_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %verdict, align 1
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %3 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %info, i32 0, i32 9)
  %6 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family_data, align 4
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !316
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not9.not.i, label %if.end.while.cond.preheader_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %max_trying.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 5, %if.end.while.body.i_crit_edge ]
  %call2.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %dec.i = sext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %max_trying.010.i, %dec.i
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp1.i = icmp ne i32 %spec.select.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %bus_mutex_lock.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bus_mutex_lock.exit:                              ; preds = %while.body.i
  br i1 %cmp1.i, label %bus_mutex_lock.exit.while.cond.preheader_crit_edge, label %bus_mutex_lock.exit.dec_refcnt_crit_edge

bus_mutex_lock.exit.dec_refcnt_crit_edge:         ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

bus_mutex_lock.exit.while.cond.preheader_crit_edge: ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %bus_mutex_lock.exit.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr %match.i, i32 0, i32 1
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %crc = getelementptr inbounds %struct.therm_info, ptr %info, i32 0, i32 1
  %arrayidx = getelementptr [9 x i8], ptr %info, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.cond.preheader
  %dec55 = phi i32 [ 4, %while.cond.preheader ], [ %dec, %if.end28.while.body_crit_edge ]
  %ret.054 = phi i32 [ -19, %while.cond.preheader ], [ %ret.2, %if.end28.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %9 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 85, ptr %match.i, align 1
  %10 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reg_num.i, align 8
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call.i50 = call i32 @w1_reset_bus(ptr noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.then8, label %reset_select_slave.exit

reset_select_slave.exit:                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br label %if.end28

if.then8:                                         ; preds = %while.body
  %14 = call i64 @llvm.bswap.i64(i64 %11) #16
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %17, ptr noundef nonnull %match.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext -66) #16
  %call11 = call zeroext i8 @w1_read_block(ptr noundef %1, ptr noundef %info, i32 noundef 9) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call11)
  %cmp.not = icmp eq i8 %call11, 9
  br i1 %cmp.not, label %if.then8.if.end15_crit_edge, label %do.end

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %call11 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv) #20
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then8.if.end15_crit_edge
  %call18 = call zeroext i8 @w1_calc_crc8(ptr noundef %info, i32 noundef 8) #16
  %18 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call18, ptr %crc, align 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %call18)
  %cmp23 = icmp eq i8 %20, %call18
  br i1 %cmp23, label %if.end28.thread, label %if.end15.if.end28_crit_edge

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.end28.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %verdict, align 1
  br label %while.end

if.end28:                                         ; preds = %if.end15.if.end28_crit_edge, %reset_select_slave.exit
  %ret.2 = phi i32 [ %ret.054, %reset_select_slave.exit ], [ -5, %if.end15.if.end28_crit_edge ]
  %dec = add nsw i32 %dec55, -1
  %tobool4.not = icmp eq i32 %dec55, 0
  br i1 %tobool4.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %if.end28.thread
  %ret.261 = phi i32 [ 0, %if.end28.thread ], [ %ret.2, %if.end28.while.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %dec_refcnt

dec_refcnt:                                       ; preds = %while.end, %bus_mutex_lock.exit.dec_refcnt_crit_edge
  %ret.3 = phi i32 [ %ret.261, %while.end ], [ -11, %bus_mutex_lock.exit.dec_refcnt_crit_edge ]
  %22 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %family_data, align 4
  %refcnt31 = getelementptr inbounds %struct.w1_therm_family_data, ptr %23, i32 0, i32 1
  %call.i.i49 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt31, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt31, i32 1, i32 3, i32 1) #16
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt31, ptr %refcnt31, i32 1, ptr elementtype(i32) %refcnt31) #16, !srcloc !317
  br label %error

error:                                            ; preds = %dec_refcnt, %entry.error_crit_edge
  %ret.4 = phi i32 [ %ret.3, %dec_refcnt ], [ -19, %entry.error_crit_edge ]
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @convert_t(ptr noundef %sl, ptr noundef %info) unnamed_addr #6 align 64 {
entry:
  %match.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup100_crit_edge, label %if.end

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.end.land.lhs.true_crit_edge, label %lor.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

lor.end:                                          ; preds = %if.end
  %external_powered = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %external_powered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %external_powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3 = icmp ne i32 %4, 0
  %spec.select = select i1 %tobool2.not, i1 %tobool3, i1 false
  br i1 %spec.select, label %lor.end.land.lhs.true_crit_edge, label %lor.end.if.end11_crit_edge

lor.end.if.end11_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

lor.end.land.lhs.true_crit_edge:                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %features = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %do.end

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #20
  %9 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %family_data, align 4
  %features9 = getelementptr inbounds %struct.w1_therm_family_data, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %features9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features9, align 4
  %and10 = and i32 %12, -3
  store i32 %and10, ptr %features9, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end, %land.lhs.true.if.end11_crit_edge, %lor.end.if.end11_crit_edge
  %13 = phi i1 [ true, %do.end ], [ true, %land.lhs.true.if.end11_crit_edge ], [ false, %lor.end.if.end11_crit_edge ]
  %14 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %family_data, align 4
  %specific_functions.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %specific_functions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %specific_functions.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %get_conversion_time.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %get_conversion_time.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_conversion_time.i, align 4
  %call.i = tail call i32 %19(ptr noundef %sl) #16
  br label %conversion_time.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.19) #20
  br label %conversion_time.exit

conversion_time.exit:                             ; preds = %do.end.i, %if.then.i
  %retval.0.i142 = phi i32 [ %call.i, %if.then.i ], [ -19, %do.end.i ]
  %20 = call ptr @memset(ptr %info, i32 0, i32 9)
  %21 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %family_data, align 4
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %22, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !316
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not9.not.i, label %conversion_time.exit.while.cond.preheader_crit_edge, label %conversion_time.exit.while.body.i_crit_edge

conversion_time.exit.while.body.i_crit_edge:      ; preds = %conversion_time.exit
  br label %while.body.i

conversion_time.exit.while.cond.preheader_crit_edge: ; preds = %conversion_time.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %conversion_time.exit.while.body.i_crit_edge
  %max_trying.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 5, %conversion_time.exit.while.body.i_crit_edge ]
  %call2.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i143 = icmp eq i32 %call2.i, 0
  %dec.i = sext i1 %tobool.not.i143 to i32
  %spec.select.i = add nsw i32 %max_trying.010.i, %dec.i
  %call.i144 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp.not.i = icmp ne i32 %call.i144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp1.i = icmp ne i32 %spec.select.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %bus_mutex_lock.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bus_mutex_lock.exit:                              ; preds = %while.body.i
  br i1 %cmp1.i, label %bus_mutex_lock.exit.while.cond.preheader_crit_edge, label %bus_mutex_lock.exit.dec_refcnt_crit_edge

bus_mutex_lock.exit.dec_refcnt_crit_edge:         ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

bus_mutex_lock.exit.while.cond.preheader_crit_edge: ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %bus_mutex_lock.exit.while.cond.preheader_crit_edge, %conversion_time.exit.while.cond.preheader_crit_edge
  %verdict = getelementptr inbounds %struct.therm_info, ptr %info, i32 0, i32 2
  %crc = getelementptr inbounds %struct.therm_info, ptr %info, i32 0, i32 1
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %24 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %verdict, align 1
  %25 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %crc, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %26 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 85, ptr %match.i, align 1
  %27 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %reg_num.i, align 8
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master, align 4
  %call.i145 = tail call i32 @w1_reset_bus(ptr noundef %30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %while.cond.preheader.if.then22_crit_edge, label %reset_select_slave.exit

while.cond.preheader.if.then22_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

reset_select_slave.exit:                          ; preds = %while.cond.preheader
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  %31 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %verdict, align 1
  %32 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %crc, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %33 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 85, ptr %match.i, align 1
  %34 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %reg_num.i, align 8
  %36 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master, align 4
  %call.i145.1 = tail call i32 @w1_reset_bus(ptr noundef %37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.1)
  %tobool.not.i146.1 = icmp eq i32 %call.i145.1, 0
  br i1 %tobool.not.i146.1, label %reset_select_slave.exit.if.then22_crit_edge, label %reset_select_slave.exit.1

reset_select_slave.exit.if.then22_crit_edge:      ; preds = %reset_select_slave.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

reset_select_slave.exit.1:                        ; preds = %reset_select_slave.exit
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  %38 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %verdict, align 1
  %39 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %crc, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %40 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 85, ptr %match.i, align 1
  %41 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %reg_num.i, align 8
  %43 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master, align 4
  %call.i145.2 = tail call i32 @w1_reset_bus(ptr noundef %44) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.2)
  %tobool.not.i146.2 = icmp eq i32 %call.i145.2, 0
  br i1 %tobool.not.i146.2, label %reset_select_slave.exit.1.if.then22_crit_edge, label %reset_select_slave.exit.2

reset_select_slave.exit.1.if.then22_crit_edge:    ; preds = %reset_select_slave.exit.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

reset_select_slave.exit.2:                        ; preds = %reset_select_slave.exit.1
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  %45 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %verdict, align 1
  %46 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %crc, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %47 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 85, ptr %match.i, align 1
  %48 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %reg_num.i, align 8
  %50 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master, align 4
  %call.i145.3 = tail call i32 @w1_reset_bus(ptr noundef %51) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.3)
  %tobool.not.i146.3 = icmp eq i32 %call.i145.3, 0
  br i1 %tobool.not.i146.3, label %reset_select_slave.exit.2.if.then22_crit_edge, label %reset_select_slave.exit.3

reset_select_slave.exit.2.if.then22_crit_edge:    ; preds = %reset_select_slave.exit.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

reset_select_slave.exit.3:                        ; preds = %reset_select_slave.exit.2
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  %52 = ptrtoint ptr %verdict to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %verdict, align 1
  %53 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %crc, align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %54 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 85, ptr %match.i, align 1
  %55 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %reg_num.i, align 8
  %57 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master, align 4
  %call.i145.4 = tail call i32 @w1_reset_bus(ptr noundef %58) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.4)
  %tobool.not.i146.4 = icmp eq i32 %call.i145.4, 0
  br i1 %tobool.not.i146.4, label %reset_select_slave.exit.3.if.then22_crit_edge, label %reset_select_slave.exit.4

reset_select_slave.exit.3.if.then22_crit_edge:    ; preds = %reset_select_slave.exit.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

reset_select_slave.exit.4:                        ; preds = %reset_select_slave.exit.3
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br label %mt_unlock

if.then22:                                        ; preds = %reset_select_slave.exit.3.if.then22_crit_edge, %reset_select_slave.exit.2.if.then22_crit_edge, %reset_select_slave.exit.1.if.then22_crit_edge, %reset_select_slave.exit.if.then22_crit_edge, %while.cond.preheader.if.then22_crit_edge
  %.lcssa = phi i64 [ %28, %while.cond.preheader.if.then22_crit_edge ], [ %35, %reset_select_slave.exit.if.then22_crit_edge ], [ %42, %reset_select_slave.exit.1.if.then22_crit_edge ], [ %49, %reset_select_slave.exit.2.if.then22_crit_edge ], [ %56, %reset_select_slave.exit.3.if.then22_crit_edge ]
  %59 = tail call i64 @llvm.bswap.i64(i64 %.lcssa) #16
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr %match.i, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %arrayidx.i, align 1
  %61 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %62, ptr noundef nonnull %match.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br i1 %13, label %if.then24, label %if.else.critedge

if.then24:                                        ; preds = %if.then22
  call void @w1_next_pullup(ptr noundef %1, i32 noundef %retval.0.i142) #16
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext 68) #16
  %call28 = call i32 @msleep_interruptible(i32 noundef %retval.0.i142) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.then24.if.end61.sink.split_crit_edge, label %if.then24.mt_unlock_crit_edge

if.then24.mt_unlock_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock

if.then24.if.end61.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61.sink.split

if.else.critedge:                                 ; preds = %if.then22
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext 68) #16
  %63 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %family_data, align 4
  %features34 = getelementptr inbounds %struct.w1_therm_family_data, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %features34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %features34, align 4
  %and35 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else54, label %if.else.critedge.for.body.i_crit_edge

if.else.critedge.for.body.i_crit_edge:            ; preds = %if.else.critedge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.critedge.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.critedge.for.body.i_crit_edge ]
  call void @msleep(i32 noundef 32) #16
  %call.i148 = call zeroext i8 @w1_read_8(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i148)
  %cmp1.i149 = icmp eq i8 %call.i148, -1
  br i1 %cmp1.i149, label %w1_poll_completion.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %for.inc.i.do.body41_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.body41_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body41

w1_poll_completion.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.012.i)
  %cmp4.i = icmp eq i32 %i.012.i, 62
  br i1 %cmp4.i, label %w1_poll_completion.exit.do.body41_crit_edge, label %w1_poll_completion.exit.if.end61.sink.split_crit_edge

w1_poll_completion.exit.if.end61.sink.split_crit_edge: ; preds = %w1_poll_completion.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61.sink.split

w1_poll_completion.exit.do.body41_crit_edge:      ; preds = %w1_poll_completion.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body41

do.body41:                                        ; preds = %w1_poll_completion.exit.do.body41_crit_edge, %for.inc.i.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @convert_t.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@convert_t, %if.then47)) #16
          to label %mt_unlock [label %if.then47], !srcloc !311

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  %dev48 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @convert_t.__UNIQUE_ID_ddebug189, ptr noundef %dev48, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #16
  br label %mt_unlock

if.else54:                                        ; preds = %if.else.critedge
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  %call56 = call i32 @msleep_interruptible(i32 noundef %retval.0.i142) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.else54.if.end61_crit_edge, label %if.else54.dec_refcnt_crit_edge

if.else54.dec_refcnt_crit_edge:                   ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

if.else54.if.end61_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.end61.sink.split:                              ; preds = %w1_poll_completion.exit.if.end61.sink.split_crit_edge, %if.then24.if.end61.sink.split_crit_edge
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.else54.if.end61_crit_edge
  %call62 = call fastcc i32 @read_scratchpad(ptr noundef %sl, ptr noundef %info)
  %67 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %family_data, align 4
  %features64 = getelementptr inbounds %struct.w1_therm_family_data, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %features64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %features64, align 4
  %and65 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end61.dec_refcnt_crit_edge, label %land.lhs.true67

if.end61.dec_refcnt_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

land.lhs.true67:                                  ; preds = %if.end61
  %arrayidx = getelementptr [9 x i8], ptr %info, i32 0, i32 6
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %72)
  %cmp69 = icmp eq i8 %72, 12
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true67.dec_refcnt_crit_edge

land.lhs.true67.dec_refcnt_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %arrayidx73 = getelementptr [9 x i8], ptr %info, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx73, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %74, label %land.lhs.true71.dec_refcnt_crit_edge [
    i8 5, label %land.lhs.true77
    i8 7, label %land.lhs.true88
  ]

land.lhs.true71.dec_refcnt_crit_edge:             ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %76 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %77)
  %cmp81 = icmp eq i8 %77, 80
  br i1 %cmp81, label %land.lhs.true77.if.then94_crit_edge, label %land.lhs.true77.dec_refcnt_crit_edge

land.lhs.true77.dec_refcnt_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

land.lhs.true77.if.then94_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then94

land.lhs.true88:                                  ; preds = %land.lhs.true71
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp92 = icmp eq i8 %79, -1
  br i1 %cmp92, label %land.lhs.true88.if.then94_crit_edge, label %land.lhs.true88.dec_refcnt_crit_edge

land.lhs.true88.dec_refcnt_crit_edge:             ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

land.lhs.true88.if.then94_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then94

if.then94:                                        ; preds = %land.lhs.true88.if.then94_crit_edge, %land.lhs.true77.if.then94_crit_edge
  br label %dec_refcnt

mt_unlock:                                        ; preds = %if.then47, %do.body41, %if.then24.mt_unlock_crit_edge, %reset_select_slave.exit.4
  %ret.2 = phi i32 [ -4, %if.then24.mt_unlock_crit_edge ], [ -5, %if.then47 ], [ -5, %do.body41 ], [ -19, %reset_select_slave.exit.4 ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %dec_refcnt

dec_refcnt:                                       ; preds = %mt_unlock, %if.then94, %land.lhs.true88.dec_refcnt_crit_edge, %land.lhs.true77.dec_refcnt_crit_edge, %land.lhs.true71.dec_refcnt_crit_edge, %land.lhs.true67.dec_refcnt_crit_edge, %if.end61.dec_refcnt_crit_edge, %if.else54.dec_refcnt_crit_edge, %bus_mutex_lock.exit.dec_refcnt_crit_edge
  %ret.3 = phi i32 [ %ret.2, %mt_unlock ], [ -11, %bus_mutex_lock.exit.dec_refcnt_crit_edge ], [ %call62, %if.end61.dec_refcnt_crit_edge ], [ %call62, %land.lhs.true67.dec_refcnt_crit_edge ], [ %call62, %land.lhs.true88.dec_refcnt_crit_edge ], [ -5, %if.then94 ], [ -4, %if.else54.dec_refcnt_crit_edge ], [ %call62, %land.lhs.true77.dec_refcnt_crit_edge ], [ %call62, %land.lhs.true71.dec_refcnt_crit_edge ]
  %80 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %family_data, align 4
  %refcnt99 = getelementptr inbounds %struct.w1_therm_family_data, ptr %81, i32 0, i32 1
  %call.i.i141 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt99, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt99, i32 1, i32 3, i32 1) #16
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt99, ptr %refcnt99, i32 1, ptr elementtype(i32) %refcnt99) #16, !srcloc !317
  br label %cleanup100

cleanup100:                                       ; preds = %dec_refcnt, %entry.cleanup100_crit_edge
  %retval.0 = phi i32 [ %ret.3, %dec_refcnt ], [ -19, %entry.cleanup100_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_calc_crc8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_scratchpad(ptr nocapture noundef readonly %sl) unnamed_addr #6 align 64 {
entry:
  %match.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %external_powered = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %external_powered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %external_powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3 = icmp ne i32 %4, 0
  %spec.select = select i1 %tobool2.not, i1 %tobool3, i1 false
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %7 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %spec.select, %lor.rhs ]
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !316
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not9.not.i, label %lor.end.while.cond.preheader_crit_edge, label %lor.end.while.body.i_crit_edge

lor.end.while.body.i_crit_edge:                   ; preds = %lor.end
  br label %while.body.i

lor.end.while.cond.preheader_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %lor.end.while.body.i_crit_edge
  %max_trying.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 5, %lor.end.while.body.i_crit_edge ]
  %call2.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %dec.i = sext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %max_trying.010.i, %dec.i
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp1.i = icmp ne i32 %spec.select.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %bus_mutex_lock.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bus_mutex_lock.exit:                              ; preds = %while.body.i
  br i1 %cmp1.i, label %bus_mutex_lock.exit.while.cond.preheader_crit_edge, label %bus_mutex_lock.exit.dec_refcnt_crit_edge

bus_mutex_lock.exit.dec_refcnt_crit_edge:         ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

bus_mutex_lock.exit.while.cond.preheader_crit_edge: ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %bus_mutex_lock.exit.while.cond.preheader_crit_edge, %lor.end.while.cond.preheader_crit_edge
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr %match.i, i32 0, i32 1
  br label %land.rhs8

land.rhs8:                                        ; preds = %if.end24.land.rhs8_crit_edge, %while.cond.preheader
  %dec53 = phi i32 [ 4, %while.cond.preheader ], [ %dec, %if.end24.land.rhs8_crit_edge ]
  %ret.052 = phi i32 [ -19, %while.cond.preheader ], [ %ret.2, %if.end24.land.rhs8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.052)
  %tobool9.not = icmp eq i32 %ret.052, 0
  br i1 %tobool9.not, label %land.rhs8.mt_unlock_crit_edge, label %while.body

land.rhs8.mt_unlock_crit_edge:                    ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock

while.body:                                       ; preds = %land.rhs8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %9 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 85, ptr %match.i, align 1
  %10 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reg_num.i, align 8
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call.i46 = call i32 @w1_reset_bus(ptr noundef %13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.then13, label %reset_select_slave.exit

reset_select_slave.exit:                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br label %if.end24

if.then13:                                        ; preds = %while.body
  %14 = call i64 @llvm.bswap.i64(i64 %11) #16
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %17, ptr noundef nonnull %match.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br i1 %7, label %if.then15, label %if.end23.critedge

if.then15:                                        ; preds = %if.then13
  call void @w1_next_pullup(ptr noundef %1, i32 noundef 10) #16
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext 72) #16
  %call19 = call i32 @msleep_interruptible(i32 noundef 10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.then15.if.end24_crit_edge, label %if.then15.mt_unlock_crit_edge

if.then15.mt_unlock_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end23.critedge:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext 72) #16
  br label %if.end24

if.end24:                                         ; preds = %if.end23.critedge, %if.then15.if.end24_crit_edge, %reset_select_slave.exit
  %ret.2 = phi i32 [ %ret.052, %reset_select_slave.exit ], [ 0, %if.then15.if.end24_crit_edge ], [ 0, %if.end23.critedge ]
  %dec = add nsw i32 %dec53, -1
  %tobool7.not = icmp eq i32 %dec53, 0
  br i1 %tobool7.not, label %if.end24.mt_unlock_crit_edge, label %if.end24.land.rhs8_crit_edge

if.end24.land.rhs8_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs8

if.end24.mt_unlock_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock

mt_unlock:                                        ; preds = %if.end24.mt_unlock_crit_edge, %if.then15.mt_unlock_crit_edge, %land.rhs8.mt_unlock_crit_edge
  %ret.3 = phi i32 [ 0, %land.rhs8.mt_unlock_crit_edge ], [ %ret.2, %if.end24.mt_unlock_crit_edge ], [ -4, %if.then15.mt_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %dec_refcnt

dec_refcnt:                                       ; preds = %mt_unlock, %bus_mutex_lock.exit.dec_refcnt_crit_edge
  %ret.4 = phi i32 [ %ret.3, %mt_unlock ], [ -11, %bus_mutex_lock.exit.dec_refcnt_crit_edge ]
  %18 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %family_data, align 4
  %refcnt27 = getelementptr inbounds %struct.w1_therm_family_data, ptr %19, i32 0, i32 1
  %call.i.i45 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt27, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt27, i32 1, i32 3, i32 1) #16
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt27, ptr %refcnt27, i32 1, ptr elementtype(i32) %refcnt27) #16, !srcloc !317
  br label %cleanup28

cleanup28:                                        ; preds = %dec_refcnt, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ %ret.4, %dec_refcnt ], [ -19, %entry.cleanup28_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temperature_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  %info = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info) #16
  %family_data = getelementptr i8, ptr %device, i32 -4
  %0 = call ptr @memset(ptr %info, i32 255, i32 11)
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %specific_functions, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %bulk_read_support.exit

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.45) #20
  br label %cleanup

bulk_read_support.exit:                           ; preds = %lor.lhs.false
  %bulk_read.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %bulk_read.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bulk_read.i, align 4, !range !312
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.i.not = icmp eq i8 %6, 0
  br i1 %tobool3.i.not, label %if.else27, label %if.then4

if.then4:                                         ; preds = %bulk_read_support.exit
  %7 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %family_data, align 4
  %convert_triggered = getelementptr inbounds %struct.w1_therm_family_data, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %convert_triggered to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %convert_triggered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %do.body7, label %if.else

do.body7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temperature_show.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temperature_show, %if.then12)) #16
          to label %cleanup [label %if.then12], !srcloc !311

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temperature_show.__UNIQUE_ID_ddebug194, ptr noundef %device, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.45) #16
  br label %cleanup

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18.not = icmp eq i32 %10, 0
  br i1 %cmp18.not, label %if.else23, label %if.then19

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call20 = call fastcc i32 @read_scratchpad(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  %11 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %family_data, align 4
  %convert_triggered22 = getelementptr inbounds %struct.w1_therm_family_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %convert_triggered22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %convert_triggered22, align 4
  br label %if.end29

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = call fastcc i32 @convert_t(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  br label %if.end29

if.else27:                                        ; preds = %bulk_read_support.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = call fastcc i32 @convert_t(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.else23, %if.then19
  %ret.0 = phi i32 [ %call20, %if.then19 ], [ %call24, %if.else23 ], [ %call28, %if.else27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp30 = icmp slt i32 %ret.0, 0
  br i1 %cmp30, label %do.body32, label %if.end48

do.body32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temperature_show.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temperature_show, %if.then44)) #16
          to label %cleanup [label %if.then44], !srcloc !311

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temperature_show.__UNIQUE_ID_ddebug195, ptr noundef %device, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.45, i32 noundef %ret.0) #16
  br label %cleanup

if.end48:                                         ; preds = %if.end29
  %14 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %family_data, align 4
  %specific_functions.i72 = getelementptr inbounds %struct.w1_therm_family_data, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %specific_functions.i72 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %specific_functions.i72, align 4
  %tobool.not.i73 = icmp eq ptr %17, null
  br i1 %tobool.not.i73, label %do.end.i76, label %if.then.i74

if.then.i74:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %convert.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %convert.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %convert.i, align 4
  %call.i = call i32 %19(ptr noundef nonnull %info) #16
  br label %temperature_from_RAM.exit

do.end.i76:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36) #20
  br label %temperature_from_RAM.exit

temperature_from_RAM.exit:                        ; preds = %do.end.i76, %if.then.i74
  %retval.0.i77 = phi i32 [ %call.i, %if.then.i74 ], [ 0, %do.end.i76 ]
  %call50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i77)
  br label %cleanup

cleanup:                                          ; preds = %temperature_from_RAM.exit, %if.then44, %do.body32, %if.then12, %do.body7, %do.end
  %retval.0 = phi i32 [ %call50, %temperature_from_RAM.exit ], [ 0, %do.end ], [ 0, %if.then12 ], [ 0, %if.then44 ], [ 0, %do.body7 ], [ 0, %do.body32 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext_power_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr i8, ptr %device, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.47) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %call1 = tail call fastcc i32 @read_powermode(ptr noundef %add.ptr.i)
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %family_data, align 4
  %external_powered = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %external_powered to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %external_powered, align 4
  %5 = load ptr, ptr %family_data, align 4
  %external_powered4 = getelementptr inbounds %struct.w1_therm_family_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %external_powered4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %external_powered4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.body6, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ext_power_show.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ext_power_show, %if.then11)) #16
          to label %if.end17 [label %if.then11], !srcloc !311

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %family_data, align 4
  %external_powered13 = getelementptr inbounds %struct.w1_therm_family_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %external_powered13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %external_powered13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ext_power_show.__UNIQUE_ID_ddebug196, ptr noundef %device, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %11) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.body6, %if.end.if.end17_crit_edge
  %12 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %family_data, align 4
  %external_powered19 = getelementptr inbounds %struct.w1_therm_family_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %external_powered19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %external_powered19, align 4
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end
  %retval.0 = phi i32 [ %call20, %if.end17 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_cmd_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %size) #6 align 64 {
entry:
  %match.i.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %size, label %entry.do.end_crit_edge [
    i32 5, label %if.then
    i32 8, label %if.then5
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.50, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call fastcc i32 @copy_scratchpad(ptr noundef %add.ptr.i)
  br label %if.end12

if.then5:                                         ; preds = %entry
  %call6 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.51, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.do.end_crit_edge

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then8:                                         ; preds = %if.then5
  %master.i = getelementptr i8, ptr %device, i32 -12
  %1 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master.i, align 4
  %family_data.i = getelementptr i8, ptr %device, i32 -4
  %3 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %family_data.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then8.do.end_crit_edge, label %if.end.i

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.i:                                         ; preds = %if.then8
  %refcnt.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %4, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !316
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  %call8.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.not9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp.not9.not.i.i, label %if.end.i.while.cond.preheader.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.while.cond.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %max_trying.010.i.i = phi i32 [ %spec.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 5, %if.end.i.while.body.i.i_crit_edge ]
  %call2.i.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  %dec.i.i = sext i1 %tobool.not.i.i to i32
  %spec.select.i.i = add nsw i32 %max_trying.010.i.i, %dec.i.i
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp ne i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp1.i.i = icmp ne i32 %spec.select.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %bus_mutex_lock.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

bus_mutex_lock.exit.i:                            ; preds = %while.body.i.i
  br i1 %cmp1.i.i, label %bus_mutex_lock.exit.i.while.cond.preheader.i_crit_edge, label %bus_mutex_lock.exit.i.dec_refcnt.i_crit_edge

bus_mutex_lock.exit.i.dec_refcnt.i_crit_edge:     ; preds = %bus_mutex_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt.i

bus_mutex_lock.exit.i.while.cond.preheader.i_crit_edge: ; preds = %bus_mutex_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %bus_mutex_lock.exit.i.while.cond.preheader.i_crit_edge, %if.end.i.while.cond.preheader.i_crit_edge
  %reg_num.i.i = getelementptr i8, ptr %device, i32 -32
  %arrayidx.i.i = getelementptr inbounds [9 x i8], ptr %match.i.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.cond.preheader.i
  %dec33.i = phi i32 [ 4, %while.cond.preheader.i ], [ %dec.i, %if.end10.i.while.body.i_crit_edge ]
  %ret.032.i = phi i32 [ -19, %while.cond.preheader.i ], [ %ret.1.i, %if.end10.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i.i) #16
  %6 = ptrtoint ptr %match.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 85, ptr %match.i.i, align 1
  %7 = ptrtoint ptr %reg_num.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %reg_num.i.i, align 8
  %9 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i, align 4
  %call.i23.i = call i32 @w1_reset_bus(ptr noundef %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.then8.i, label %reset_select_slave.exit.i

reset_select_slave.exit.i:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i.i) #16
  br label %if.end10.i

if.then8.i:                                       ; preds = %while.body.i
  %11 = call i64 @llvm.bswap.i64(i64 %8) #16
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %arrayidx.i.i, align 1
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 4
  call void @w1_write_block(ptr noundef %14, ptr noundef nonnull %match.i.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i.i) #16
  call void @w1_write_8(ptr noundef %2, i8 noundef zeroext -72) #16
  call void @msleep(i32 noundef 32) #16
  %call.i25.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.i)
  %cmp1.i26.i = icmp eq i8 %call.i25.i, -1
  br i1 %cmp1.i26.i, label %if.then8.i.while.end.i_crit_edge, label %for.inc.i.i

if.then8.i.while.end.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.i:                                      ; preds = %if.then8.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.1.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.1.i)
  %cmp1.i26.1.i = icmp eq i8 %call.i25.1.i, -1
  br i1 %cmp1.i26.1.i, label %for.inc.i.i.while.end.i_crit_edge, label %for.inc.i.1.i

for.inc.i.i.while.end.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.2.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.2.i)
  %cmp1.i26.2.i = icmp eq i8 %call.i25.2.i, -1
  br i1 %cmp1.i26.2.i, label %for.inc.i.1.i.while.end.i_crit_edge, label %for.inc.i.2.i

for.inc.i.1.i.while.end.i_crit_edge:              ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.3.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.3.i)
  %cmp1.i26.3.i = icmp eq i8 %call.i25.3.i, -1
  br i1 %cmp1.i26.3.i, label %for.inc.i.2.i.while.end.i_crit_edge, label %for.inc.i.3.i

for.inc.i.2.i.while.end.i_crit_edge:              ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.4.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.4.i)
  %cmp1.i26.4.i = icmp eq i8 %call.i25.4.i, -1
  br i1 %cmp1.i26.4.i, label %for.inc.i.3.i.while.end.i_crit_edge, label %for.inc.i.4.i

for.inc.i.3.i.while.end.i_crit_edge:              ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.4.i:                                    ; preds = %for.inc.i.3.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.5.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.5.i)
  %cmp1.i26.5.i = icmp eq i8 %call.i25.5.i, -1
  br i1 %cmp1.i26.5.i, label %for.inc.i.4.i.while.end.i_crit_edge, label %for.inc.i.5.i

for.inc.i.4.i.while.end.i_crit_edge:              ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.5.i:                                    ; preds = %for.inc.i.4.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.6.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.6.i)
  %cmp1.i26.6.i = icmp eq i8 %call.i25.6.i, -1
  br i1 %cmp1.i26.6.i, label %for.inc.i.5.i.while.end.i_crit_edge, label %for.inc.i.6.i

for.inc.i.5.i.while.end.i_crit_edge:              ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.6.i:                                    ; preds = %for.inc.i.5.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.7.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.7.i)
  %cmp1.i26.7.i = icmp eq i8 %call.i25.7.i, -1
  br i1 %cmp1.i26.7.i, label %for.inc.i.6.i.while.end.i_crit_edge, label %for.inc.i.7.i

for.inc.i.6.i.while.end.i_crit_edge:              ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.7.i:                                    ; preds = %for.inc.i.6.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.8.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.8.i)
  %cmp1.i26.8.i = icmp eq i8 %call.i25.8.i, -1
  br i1 %cmp1.i26.8.i, label %for.inc.i.7.i.while.end.i_crit_edge, label %for.inc.i.8.i

for.inc.i.7.i.while.end.i_crit_edge:              ; preds = %for.inc.i.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.8.i:                                    ; preds = %for.inc.i.7.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.9.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.9.i)
  %cmp1.i26.9.i = icmp eq i8 %call.i25.9.i, -1
  br i1 %cmp1.i26.9.i, label %for.inc.i.8.i.while.end.i_crit_edge, label %for.inc.i.9.i

for.inc.i.8.i.while.end.i_crit_edge:              ; preds = %for.inc.i.8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.9.i:                                    ; preds = %for.inc.i.8.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.10.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.10.i)
  %cmp1.i26.10.i = icmp eq i8 %call.i25.10.i, -1
  br i1 %cmp1.i26.10.i, label %for.inc.i.9.i.while.end.i_crit_edge, label %for.inc.i.10.i

for.inc.i.9.i.while.end.i_crit_edge:              ; preds = %for.inc.i.9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.10.i:                                   ; preds = %for.inc.i.9.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.11.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.11.i)
  %cmp1.i26.11.i = icmp eq i8 %call.i25.11.i, -1
  br i1 %cmp1.i26.11.i, label %for.inc.i.10.i.while.end.i_crit_edge, label %for.inc.i.11.i

for.inc.i.10.i.while.end.i_crit_edge:             ; preds = %for.inc.i.10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.11.i:                                   ; preds = %for.inc.i.10.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.12.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.12.i)
  %cmp1.i26.12.i = icmp eq i8 %call.i25.12.i, -1
  br i1 %cmp1.i26.12.i, label %for.inc.i.11.i.while.end.i_crit_edge, label %for.inc.i.12.i

for.inc.i.11.i.while.end.i_crit_edge:             ; preds = %for.inc.i.11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.12.i:                                   ; preds = %for.inc.i.11.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.13.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.13.i)
  %cmp1.i26.13.i = icmp eq i8 %call.i25.13.i, -1
  br i1 %cmp1.i26.13.i, label %for.inc.i.12.i.while.end.i_crit_edge, label %for.inc.i.13.i

for.inc.i.12.i.while.end.i_crit_edge:             ; preds = %for.inc.i.12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

for.inc.i.13.i:                                   ; preds = %for.inc.i.12.i
  call void @msleep(i32 noundef 32) #16
  %call.i25.14.i = call zeroext i8 @w1_read_8(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25.14.i)
  %cmp1.i26.14.i = icmp eq i8 %call.i25.14.i, -1
  br i1 %cmp1.i26.14.i, label %for.inc.i.13.i.while.end.i_crit_edge, label %for.inc.i.13.i.if.end10.i_crit_edge

for.inc.i.13.i.if.end10.i_crit_edge:              ; preds = %for.inc.i.13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

for.inc.i.13.i.while.end.i_crit_edge:             ; preds = %for.inc.i.13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end10.i:                                       ; preds = %for.inc.i.13.i.if.end10.i_crit_edge, %reset_select_slave.exit.i
  %ret.1.i = phi i32 [ %ret.032.i, %reset_select_slave.exit.i ], [ -5, %for.inc.i.13.i.if.end10.i_crit_edge ]
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool4.not.i = icmp eq i32 %dec33.i, 0
  br i1 %tobool4.not.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %if.end10.i.while.end.i_crit_edge, %for.inc.i.13.i.while.end.i_crit_edge, %for.inc.i.12.i.while.end.i_crit_edge, %for.inc.i.11.i.while.end.i_crit_edge, %for.inc.i.10.i.while.end.i_crit_edge, %for.inc.i.9.i.while.end.i_crit_edge, %for.inc.i.8.i.while.end.i_crit_edge, %for.inc.i.7.i.while.end.i_crit_edge, %for.inc.i.6.i.while.end.i_crit_edge, %for.inc.i.5.i.while.end.i_crit_edge, %for.inc.i.4.i.while.end.i_crit_edge, %for.inc.i.3.i.while.end.i_crit_edge, %for.inc.i.2.i.while.end.i_crit_edge, %for.inc.i.1.i.while.end.i_crit_edge, %for.inc.i.i.while.end.i_crit_edge, %if.then8.i.while.end.i_crit_edge
  %ret.140.i = phi i32 [ %ret.1.i, %if.end10.i.while.end.i_crit_edge ], [ 0, %for.inc.i.13.i.while.end.i_crit_edge ], [ 0, %for.inc.i.12.i.while.end.i_crit_edge ], [ 0, %for.inc.i.11.i.while.end.i_crit_edge ], [ 0, %for.inc.i.10.i.while.end.i_crit_edge ], [ 0, %for.inc.i.9.i.while.end.i_crit_edge ], [ 0, %for.inc.i.8.i.while.end.i_crit_edge ], [ 0, %for.inc.i.7.i.while.end.i_crit_edge ], [ 0, %for.inc.i.6.i.while.end.i_crit_edge ], [ 0, %for.inc.i.5.i.while.end.i_crit_edge ], [ 0, %for.inc.i.4.i.while.end.i_crit_edge ], [ 0, %for.inc.i.3.i.while.end.i_crit_edge ], [ 0, %for.inc.i.2.i.while.end.i_crit_edge ], [ 0, %for.inc.i.1.i.while.end.i_crit_edge ], [ 0, %for.inc.i.i.while.end.i_crit_edge ], [ 0, %if.then8.i.while.end.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %bus_mutex.i) #16
  br label %dec_refcnt.i

dec_refcnt.i:                                     ; preds = %while.end.i, %bus_mutex_lock.exit.i.dec_refcnt.i_crit_edge
  %ret.2.i = phi i32 [ %ret.140.i, %while.end.i ], [ -11, %bus_mutex_lock.exit.i.dec_refcnt.i_crit_edge ]
  %15 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %family_data.i, align 4
  %refcnt13.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %16, i32 0, i32 1
  %call.i.i22.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt13.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt13.i, i32 1, i32 3, i32 1) #16
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt13.i, ptr %refcnt13.i, i32 1, ptr elementtype(i32) %refcnt13.i) #16, !srcloc !317
  br label %if.end12

if.end12:                                         ; preds = %dec_refcnt.i, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %ret.2.i, %dec_refcnt.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool13.not = icmp eq i32 %ret.0, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.end12.do.end_crit_edge

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

do.end:                                           ; preds = %if.end12.do.end_crit_edge, %if.then8.do.end_crit_edge, %if.then5.do.end_crit_edge, %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.024 = phi i32 [ %ret.0, %if.end12.do.end_crit_edge ], [ -19, %if.then8.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ], [ -22, %if.then5.do.end_crit_edge ], [ -22, %if.then.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %ret.024) #20
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end12.if.end15_crit_edge
  ret i32 %size
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  %scratchpad = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %scratchpad) #16
  %0 = call ptr @memset(ptr %scratchpad, i32 255, i32 11)
  %call1 = call fastcc i32 @read_scratchpad(ptr noundef %add.ptr.i, ptr noundef nonnull %scratchpad)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = getelementptr inbounds [9 x i8], ptr %scratchpad, i32 0, i32 3
  %2 = getelementptr inbounds [9 x i8], ptr %scratchpad, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %phi.cast = sext i8 %6 to i32
  %phi.cast8 = sext i8 %4 to i32
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %call1) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %th.0 = phi i32 [ 0, %do.end ], [ %phi.cast8, %if.then ]
  %tl.0 = phi i32 [ 0, %do.end ], [ %phi.cast, %if.then ]
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %tl.0, i32 noundef %th.0)
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %scratchpad) #16
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %size) #6 align 64 {
entry:
  %info = alloca %struct.therm_info, align 1
  %new_config_register = alloca [3 x i8], align 1
  %temp = alloca i32, align 4
  %p_args = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info) #16
  %0 = getelementptr inbounds [9 x i8], ptr %info, i32 0, i32 4
  %1 = call ptr @memset(ptr %info, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %new_config_register) #16
  %2 = ptrtoint ptr %new_config_register to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %new_config_register, align 1, !annotation !318
  %3 = getelementptr inbounds [3 x i8], ptr %new_config_register, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !318
  %5 = getelementptr inbounds [3 x i8], ptr %new_config_register, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #16
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %temp, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_args) #16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #21
  %8 = ptrtoint ptr %p_args to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %p_args, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef -12) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @strcpy(ptr noundef nonnull %call9.i, ptr noundef %buf) #22
  %call3 = call ptr @strsep(ptr noundef nonnull %p_args, ptr noundef nonnull @.str.60) #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef -22) #20
  br label %free_m

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @kstrtoint(ptr noundef nonnull %call3, i32 noundef 10, ptr noundef nonnull %temp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef %call10) #20
  br label %free_m

if.end16:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 -55) #16
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 125) #16
  %conv.i = trunc i32 %12 to i8
  %call18 = call ptr @strsep(ptr noundef nonnull %p_args, ptr noundef nonnull @.str.60) #16
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef -22) #20
  br label %free_m

if.end24:                                         ; preds = %if.end16
  %call25 = call i32 @kstrtoint(ptr noundef nonnull %call18, i32 noundef 10, ptr noundef nonnull %temp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef %call25) #20
  br label %free_m

if.end31:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp, align 4
  %call40 = call fastcc i32 @read_scratchpad(ptr noundef %add.ptr.i, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %do.end48

if.then42:                                        ; preds = %if.end31
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 -55) #16
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 125) #16
  %conv.i102 = trunc i32 %16 to i8
  %17 = call i8 @llvm.smax.i8(i8 %conv.i, i8 %conv.i102)
  %18 = call i8 @llvm.smin.i8(i8 %conv.i, i8 %conv.i102)
  %19 = ptrtoint ptr %new_config_register to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %new_config_register, align 1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %3, align 1
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %5, align 1
  %family_data = getelementptr i8, ptr %device, i32 -4
  %24 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %family_data, align 4
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %specific_functions, align 4
  %tobool50.not = icmp eq ptr %27, null
  br i1 %tobool50.not, label %do.end54, label %if.end55

do.end48:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.59, i32 noundef %call40) #20
  br label %free_m

do.end54:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.59, i32 noundef -19) #20
  br label %free_m

if.end55:                                         ; preds = %if.then42
  %write_data = getelementptr inbounds %struct.w1_therm_family_converter, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %write_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_data, align 4
  %call58 = call i32 %29(ptr noundef %add.ptr.i, ptr noundef nonnull %new_config_register) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end55.free_m_crit_edge, label %do.end63

if.end55.free_m_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_m

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.59, i32 noundef %call58) #20
  br label %free_m

free_m:                                           ; preds = %do.end63, %if.end55.free_m_crit_edge, %do.end54, %do.end48, %do.end30, %do.end23, %do.end15, %do.end8
  call void @kfree(ptr noundef nonnull %call9.i) #16
  br label %cleanup

cleanup:                                          ; preds = %free_m, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_args) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %new_config_register) #16
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info) #16
  ret i32 %size
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conv_time_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %family_data = getelementptr i8, ptr %device, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %specific_functions, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %conversion_time.exit

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #20
  br label %cleanup

conversion_time.exit:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %get_conversion_time.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_conversion_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_conversion_time.i, align 4
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #16
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %conversion_time.exit, %do.end
  %retval.0 = phi i32 [ %call4, %conversion_time.exit ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conv_time_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #6 align 64 {
entry:
  %val = alloca i32, align 4
  %conv_time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !318
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup18

if.end:                                           ; preds = %entry
  %family_data.i = getelementptr i8, ptr %device, i32 -4
  %1 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.check_family_data.exit_crit_edge, label %lor.lhs.false.i

if.end.check_family_data.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_family_data.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %specific_functions.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %specific_functions.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %specific_functions.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.check_family_data.exit_crit_edge, label %if.end5

lor.lhs.false.i.check_family_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_family_data.exit

check_family_data.exit:                           ; preds = %lor.lhs.false.i.check_family_data.exit_crit_edge, %if.end.check_family_data.exit_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.82) #20
  br label %cleanup18

if.end5:                                          ; preds = %lor.lhs.false.i
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp7 = icmp sgt i32 %6, -1
  br i1 %cmp7, label %if.then8, label %if.then6.cleanup18_crit_edge

if.then6.cleanup18_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup18

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %family_data.i, align 4
  %conv_time_override = getelementptr inbounds %struct.w1_therm_family_data, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %conv_time_override to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %conv_time_override, align 4
  br label %cleanup18

if.else10:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conv_time) #16
  %10 = ptrtoint ptr %conv_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %conv_time, align 4, !annotation !318
  %call11 = call fastcc i32 @conv_time_measure(ptr noundef %add.ptr.i, ptr noundef nonnull %conv_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup18.critedge

if.end14:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %conv_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conv_time, align 4
  %13 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %family_data.i, align 4
  %conv_time_override16 = getelementptr inbounds %struct.w1_therm_family_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %conv_time_override16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %conv_time_override16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conv_time) #16
  br label %cleanup18

cleanup18.critedge:                               ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conv_time) #16
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup18.critedge, %if.end14, %if.then8, %if.then6.cleanup18_crit_edge, %check_family_data.exit, %entry.cleanup18_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup18_crit_edge ], [ -19, %check_family_data.exit ], [ -22, %if.then6.cleanup18_crit_edge ], [ -5, %cleanup18.critedge ], [ %size, %if.end14 ], [ %size, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @conv_time_measure(ptr noundef %sl, ptr nocapture noundef %conv_time) unnamed_addr #6 align 64 {
entry:
  %match.i = alloca [9 x i8], align 1
  %inf = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %inf) #16
  %0 = getelementptr inbounds %struct.therm_info, ptr %inf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.therm_info, ptr %inf, i32 0, i32 2
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %2 = getelementptr inbounds i8, ptr %inf, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -1, ptr %2, align 1
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %6 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup60

if.end:                                           ; preds = %entry
  %8 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %if.end
  %external_powered = getelementptr inbounds %struct.w1_therm_family_data, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %external_powered to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %external_powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3 = icmp ne i32 %8, 0
  %spec.select = select i1 %tobool2.not, i1 %tobool3, i1 false
  br i1 %spec.select, label %lor.rhs.do.end_crit_edge, label %if.end6

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #20
  br label %cleanup60

if.end6:                                          ; preds = %lor.rhs
  %11 = call ptr @memset(ptr %inf, i32 0, i32 9)
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !316
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 21
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not9.not.i, label %if.end6.while.cond.preheader_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.while.cond.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %max_trying.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 5, %if.end6.while.body.i_crit_edge ]
  %call2.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %dec.i = sext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %max_trying.010.i, %dec.i
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp1.i = icmp ne i32 %spec.select.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %bus_mutex_lock.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bus_mutex_lock.exit:                              ; preds = %while.body.i
  br i1 %cmp1.i, label %bus_mutex_lock.exit.while.cond.preheader_crit_edge, label %bus_mutex_lock.exit.dec_refcnt_crit_edge

bus_mutex_lock.exit.dec_refcnt_crit_edge:         ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

bus_mutex_lock.exit.while.cond.preheader_crit_edge: ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %bus_mutex_lock.exit.while.cond.preheader_crit_edge, %if.end6.while.cond.preheader_crit_edge
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %13 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 85, ptr %match.i, align 1
  %14 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %reg_num.i, align 8
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %call.i89 = tail call i32 @w1_reset_bus(ptr noundef %17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %while.cond.preheader.if.then17_crit_edge, label %reset_select_slave.exit

while.cond.preheader.if.then17_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

reset_select_slave.exit:                          ; preds = %while.cond.preheader
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %18 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 85, ptr %match.i, align 1
  %19 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %reg_num.i, align 8
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  %call.i89.1 = tail call i32 @w1_reset_bus(ptr noundef %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.1)
  %tobool.not.i90.1 = icmp eq i32 %call.i89.1, 0
  br i1 %tobool.not.i90.1, label %reset_select_slave.exit.if.then17_crit_edge, label %reset_select_slave.exit.1

reset_select_slave.exit.if.then17_crit_edge:      ; preds = %reset_select_slave.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

reset_select_slave.exit.1:                        ; preds = %reset_select_slave.exit
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %23 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 85, ptr %match.i, align 1
  %24 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %reg_num.i, align 8
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  %call.i89.2 = tail call i32 @w1_reset_bus(ptr noundef %27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.2)
  %tobool.not.i90.2 = icmp eq i32 %call.i89.2, 0
  br i1 %tobool.not.i90.2, label %reset_select_slave.exit.1.if.then17_crit_edge, label %reset_select_slave.exit.2

reset_select_slave.exit.1.if.then17_crit_edge:    ; preds = %reset_select_slave.exit.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

reset_select_slave.exit.2:                        ; preds = %reset_select_slave.exit.1
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %28 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 85, ptr %match.i, align 1
  %29 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %reg_num.i, align 8
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  %call.i89.3 = tail call i32 @w1_reset_bus(ptr noundef %32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.3)
  %tobool.not.i90.3 = icmp eq i32 %call.i89.3, 0
  br i1 %tobool.not.i90.3, label %reset_select_slave.exit.2.if.then17_crit_edge, label %reset_select_slave.exit.3

reset_select_slave.exit.2.if.then17_crit_edge:    ; preds = %reset_select_slave.exit.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

reset_select_slave.exit.3:                        ; preds = %reset_select_slave.exit.2
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %33 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 85, ptr %match.i, align 1
  %34 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %reg_num.i, align 8
  %36 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master, align 4
  %call.i89.4 = tail call i32 @w1_reset_bus(ptr noundef %37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.4)
  %tobool.not.i90.4 = icmp eq i32 %call.i89.4, 0
  br i1 %tobool.not.i90.4, label %reset_select_slave.exit.3.if.then17_crit_edge, label %reset_select_slave.exit.4

reset_select_slave.exit.3.if.then17_crit_edge:    ; preds = %reset_select_slave.exit.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

reset_select_slave.exit.4:                        ; preds = %reset_select_slave.exit.3
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %1, align 1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %0, align 1
  br label %mt_unlock

if.then17:                                        ; preds = %reset_select_slave.exit.3.if.then17_crit_edge, %reset_select_slave.exit.2.if.then17_crit_edge, %reset_select_slave.exit.1.if.then17_crit_edge, %reset_select_slave.exit.if.then17_crit_edge, %while.cond.preheader.if.then17_crit_edge
  %.lcssa = phi i64 [ %15, %while.cond.preheader.if.then17_crit_edge ], [ %20, %reset_select_slave.exit.if.then17_crit_edge ], [ %25, %reset_select_slave.exit.1.if.then17_crit_edge ], [ %30, %reset_select_slave.exit.2.if.then17_crit_edge ], [ %35, %reset_select_slave.exit.3.if.then17_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %1, align 1
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %0, align 1
  %42 = tail call i64 @llvm.bswap.i64(i64 %.lcssa) #16
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr %match.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %arrayidx.i, align 1
  %44 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %45, ptr noundef nonnull %match.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @w1_write_8(ptr noundef %5, i8 noundef zeroext 68) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then17
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then17 ]
  call void @msleep(i32 noundef 32) #16
  %call.i92 = call zeroext i8 @w1_read_8(ptr noundef %5) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i92)
  %cmp1.i93 = icmp eq i8 %call.i92, -1
  br i1 %cmp1.i93, label %w1_poll_completion.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %for.inc.i.do.body21_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do.body21_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body21

w1_poll_completion.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.012.i)
  %cmp4.i = icmp eq i32 %i.012.i, 62
  br i1 %cmp4.i, label %w1_poll_completion.exit.do.body21_crit_edge, label %if.end32

w1_poll_completion.exit.do.body21_crit_edge:      ; preds = %w1_poll_completion.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body21

do.body21:                                        ; preds = %w1_poll_completion.exit.do.body21_crit_edge, %for.inc.i.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @conv_time_measure.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@conv_time_measure, %if.then28)) #16
          to label %mt_unlock [label %if.then28], !srcloc !311

if.then28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @conv_time_measure.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.84) #16
  br label %mt_unlock

if.end32:                                         ; preds = %w1_poll_completion.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %47, %46
  %call33 = call i32 @jiffies_to_msecs(i32 noundef %sub) #16
  %mul = mul i32 %call33, 12
  %div = udiv i32 %mul, 10
  %48 = ptrtoint ptr %conv_time to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div, ptr %conv_time, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @conv_time_measure.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@conv_time_measure, %if.then46)) #16
          to label %do.end49 [label %if.then46], !srcloc !311

if.then46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %conv_time to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %conv_time, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @conv_time_measure.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.85, i32 noundef %50, i32 noundef 100) #16
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %if.end32
  %51 = ptrtoint ptr %conv_time to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %conv_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp50 = icmp slt i32 %52, 2
  br i1 %cmp50, label %do.end49.mt_unlock_crit_edge, label %cleanup.thread103

do.end49.mt_unlock_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %mt_unlock

cleanup.thread103:                                ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  %call54 = call fastcc i32 @read_scratchpad(ptr noundef %sl, ptr noundef nonnull %inf)
  br label %dec_refcnt

mt_unlock:                                        ; preds = %do.end49.mt_unlock_crit_edge, %if.then28, %do.body21, %reset_select_slave.exit.4
  %ret.1 = phi i32 [ -5, %do.body21 ], [ -5, %if.then28 ], [ -5, %do.end49.mt_unlock_crit_edge ], [ -19, %reset_select_slave.exit.4 ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %dec_refcnt

dec_refcnt:                                       ; preds = %mt_unlock, %cleanup.thread103, %bus_mutex_lock.exit.dec_refcnt_crit_edge
  %ret.2 = phi i32 [ %ret.1, %mt_unlock ], [ -11, %bus_mutex_lock.exit.dec_refcnt_crit_edge ], [ %call54, %cleanup.thread103 ]
  %53 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %family_data, align 4
  %refcnt59 = getelementptr inbounds %struct.w1_therm_family_data, ptr %54, i32 0, i32 1
  %call.i.i88 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt59, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt59, i32 1, i32 3, i32 1) #16
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt59, ptr %refcnt59, i32 1, ptr elementtype(i32) %refcnt59) #16, !srcloc !317
  br label %cleanup60

cleanup60:                                        ; preds = %dec_refcnt, %do.end, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.2, %dec_refcnt ], [ -19, %entry.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %inf) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr i8, ptr %device, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %specific_functions, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.87) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %features = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.88, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #6 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !318
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %family_data = getelementptr i8, ptr %device, i32 -4
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %specific_functions, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.89) #20
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %if.end8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %features = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 6
  %8 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %features, align 4
  %9 = load i32, ptr @w1_strong_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp10 = icmp eq i32 %9, 2
  br i1 %cmp10, label %if.end8.land.lhs.true_crit_edge, label %lor.rhs

if.end8.land.lhs.true_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

lor.rhs:                                          ; preds = %if.end8
  %10 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %family_data, align 4
  %external_powered = getelementptr inbounds %struct.w1_therm_family_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %external_powered to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %external_powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13 = icmp ne i32 %9, 0
  %spec.select = select i1 %tobool12.not, i1 %tobool13, i1 false
  br i1 %spec.select, label %lor.rhs.land.lhs.true_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs.land.lhs.true_crit_edge:                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.rhs.land.lhs.true_crit_edge, %if.end8.land.lhs.true_crit_edge
  %14 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %family_data, align 4
  %features16 = getelementptr inbounds %struct.w1_therm_family_data, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %features16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features16, align 4
  %and17 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %do.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end22:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89) #20
  %18 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %family_data, align 4
  %features24 = getelementptr inbounds %struct.w1_therm_family_data, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %features24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features24, align 4
  %and25 = and i32 %21, -3
  store i32 %and25, ptr %features24, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %land.lhs.true.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %size, %do.end22 ], [ %size, %land.lhs.true.cleanup_crit_edge ], [ %size, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @w1_is_visible(ptr nocapture noundef readnone %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp = icmp eq i32 %attr, 1
  %conv = select i1 %cmp, i16 292, i16 0
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #6 align 64 {
entry:
  %info.i = alloca %struct.therm_info, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %info.i) #16
  %2 = getelementptr inbounds %struct.therm_info, ptr %info.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i = icmp eq i32 %attr, 1
  %3 = call ptr @memset(ptr %info.i, i32 255, i32 11)
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.w1_read_temp.exit_crit_edge

sw.bb.w1_read_temp.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %w1_read_temp.exit

sw.bb.i:                                          ; preds = %sw.bb
  %call1.i = call fastcc i32 @convert_t(ptr noundef %1, ptr noundef nonnull %info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.w1_read_temp.exit_crit_edge

sw.bb.i.w1_read_temp.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %w1_read_temp.exit

if.end.i:                                         ; preds = %sw.bb.i
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %if.end.i.w1_read_temp.exit_crit_edge, label %if.end4.i

if.end.i.w1_read_temp.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %w1_read_temp.exit

if.end4.i:                                        ; preds = %if.end.i
  %family_data.i.i = getelementptr inbounds %struct.w1_slave, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %family_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family_data.i.i, align 4
  %specific_functions.i.i = getelementptr inbounds %struct.w1_therm_family_data, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %specific_functions.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %specific_functions.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %convert.i.i = getelementptr inbounds %struct.w1_therm_family_converter, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %convert.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %convert.i.i, align 4
  %call.i.i = call i32 %11(ptr noundef nonnull %info.i) #16
  br label %temperature_from_RAM.exit.i

do.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i.i = getelementptr inbounds %struct.w1_slave, ptr %1, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36) #20
  br label %temperature_from_RAM.exit.i

temperature_from_RAM.exit.i:                      ; preds = %do.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %do.end.i.i ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i, ptr %val, align 4
  br label %w1_read_temp.exit

w1_read_temp.exit:                                ; preds = %temperature_from_RAM.exit.i, %if.end.i.w1_read_temp.exit_crit_edge, %sw.bb.i.w1_read_temp.exit_crit_edge, %sw.bb.w1_read_temp.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %sw.bb.i.w1_read_temp.exit_crit_edge ], [ -5, %if.end.i.w1_read_temp.exit_crit_edge ], [ 0, %temperature_from_RAM.exit.i ], [ -95, %sw.bb.w1_read_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %info.i) #16
  br label %return

return:                                           ; preds = %w1_read_temp.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %w1_read_temp.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_scratchpad(ptr nocapture noundef readonly %sl, ptr noundef %data, i8 noundef zeroext %nb_bytes) unnamed_addr #6 align 64 {
entry:
  %match.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.w1_therm_family_data, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !316
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call8.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not9.not.i, label %if.end.while.cond.preheader_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %max_trying.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 5, %if.end.while.body.i_crit_edge ]
  %call2.i = tail call i32 @msleep_interruptible(i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %dec.i = sext i1 %tobool.not.i to i32
  %spec.select.i = add nsw i32 %max_trying.010.i, %dec.i
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp1.i = icmp ne i32 %spec.select.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %bus_mutex_lock.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

bus_mutex_lock.exit:                              ; preds = %while.body.i
  br i1 %cmp1.i, label %bus_mutex_lock.exit.while.cond.preheader_crit_edge, label %bus_mutex_lock.exit.dec_refcnt_crit_edge

bus_mutex_lock.exit.dec_refcnt_crit_edge:         ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dec_refcnt

bus_mutex_lock.exit.while.cond.preheader_crit_edge: ; preds = %bus_mutex_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %bus_mutex_lock.exit.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %arrayidx.i = getelementptr inbounds [9 x i8], ptr %match.i, i32 0, i32 1
  %conv = zext i8 %nb_bytes to i32
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %5 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 85, ptr %match.i, align 1
  %6 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reg_num.i, align 8
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %call.i22 = call i32 @w1_reset_bus(ptr noundef %9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %while.cond.preheader.if.end9.thread_crit_edge, label %if.end9

while.cond.preheader.if.end9.thread_crit_edge:    ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end9.3.if.end9.thread_crit_edge, %if.end9.2.if.end9.thread_crit_edge, %if.end9.1.if.end9.thread_crit_edge, %if.end9.if.end9.thread_crit_edge, %while.cond.preheader.if.end9.thread_crit_edge
  %.lcssa = phi i64 [ %7, %while.cond.preheader.if.end9.thread_crit_edge ], [ %16, %if.end9.if.end9.thread_crit_edge ], [ %21, %if.end9.1.if.end9.thread_crit_edge ], [ %26, %if.end9.2.if.end9.thread_crit_edge ], [ %31, %if.end9.3.if.end9.thread_crit_edge ]
  %10 = call i64 @llvm.bswap.i64(i64 %.lcssa) #16
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx.i, align 1
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %13, ptr noundef nonnull %match.i, i32 noundef 9) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @w1_write_8(ptr noundef %1, i8 noundef zeroext 78) #16
  call void @w1_write_block(ptr noundef %1, ptr noundef %data, i32 noundef %conv) #16
  br label %while.end

if.end9:                                          ; preds = %while.cond.preheader
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %14 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 85, ptr %match.i, align 1
  %15 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %reg_num.i, align 8
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %call.i22.1 = call i32 @w1_reset_bus(ptr noundef %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.1)
  %tobool.not.i23.1 = icmp eq i32 %call.i22.1, 0
  br i1 %tobool.not.i23.1, label %if.end9.if.end9.thread_crit_edge, label %if.end9.1

if.end9.if.end9.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.1:                                        ; preds = %if.end9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %19 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 85, ptr %match.i, align 1
  %20 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %reg_num.i, align 8
  %22 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master, align 4
  %call.i22.2 = call i32 @w1_reset_bus(ptr noundef %23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.2)
  %tobool.not.i23.2 = icmp eq i32 %call.i22.2, 0
  br i1 %tobool.not.i23.2, label %if.end9.1.if.end9.thread_crit_edge, label %if.end9.2

if.end9.1.if.end9.thread_crit_edge:               ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.2:                                        ; preds = %if.end9.1
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %24 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 85, ptr %match.i, align 1
  %25 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %reg_num.i, align 8
  %27 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master, align 4
  %call.i22.3 = call i32 @w1_reset_bus(ptr noundef %28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.3)
  %tobool.not.i23.3 = icmp eq i32 %call.i22.3, 0
  br i1 %tobool.not.i23.3, label %if.end9.2.if.end9.thread_crit_edge, label %if.end9.3

if.end9.2.if.end9.thread_crit_edge:               ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.3:                                        ; preds = %if.end9.2
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %match.i) #16
  %29 = ptrtoint ptr %match.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 85, ptr %match.i, align 1
  %30 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %reg_num.i, align 8
  %32 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master, align 4
  %call.i22.4 = call i32 @w1_reset_bus(ptr noundef %33) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.4)
  %tobool.not.i23.4 = icmp eq i32 %call.i22.4, 0
  br i1 %tobool.not.i23.4, label %if.end9.3.if.end9.thread_crit_edge, label %if.end9.4

if.end9.3.if.end9.thread_crit_edge:               ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.thread

if.end9.4:                                        ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %match.i) #16
  br label %while.end

while.end:                                        ; preds = %if.end9.4, %if.end9.thread
  %ret.133 = phi i32 [ 0, %if.end9.thread ], [ -19, %if.end9.4 ]
  call void @mutex_unlock(ptr noundef %bus_mutex) #16
  br label %dec_refcnt

dec_refcnt:                                       ; preds = %while.end, %bus_mutex_lock.exit.dec_refcnt_crit_edge
  %ret.2 = phi i32 [ %ret.133, %while.end ], [ -11, %bus_mutex_lock.exit.dec_refcnt_crit_edge ]
  %34 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %family_data, align 4
  %refcnt12 = getelementptr inbounds %struct.w1_therm_family_data, ptr %35, i32 0, i32 1
  %call.i.i21 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt12, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt12, i32 1, i32 3, i32 1) #16
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt12, ptr %refcnt12, i32 1, ptr elementtype(i32) %refcnt12) #16, !srcloc !317
  br label %error

error:                                            ; preds = %dec_refcnt, %entry.error_crit_edge
  %ret.3 = phi i32 [ %ret.2, %dec_refcnt ], [ -19, %entry.error_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resolution_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %family_data = getelementptr i8, ptr %device, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %specific_functions, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.96) #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %get_resolution = getelementptr inbounds %struct.w1_therm_family_converter, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_resolution to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_resolution, align 4
  %call5 = tail call i32 %5(ptr noundef %add.ptr.i) #16
  %6 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %family_data, align 4
  %resolution = getelementptr inbounds %struct.w1_therm_family_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %resolution, align 4
  %9 = load ptr, ptr %family_data, align 4
  %resolution8 = getelementptr inbounds %struct.w1_therm_family_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %resolution8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resolution8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %do.body10, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resolution_show.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resolution_show, %if.then15)) #16
          to label %if.end21 [label %if.then15], !srcloc !311

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %family_data, align 4
  %resolution17 = getelementptr inbounds %struct.w1_therm_family_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %resolution17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resolution17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @resolution_show.__UNIQUE_ID_ddebug197, ptr noundef %device, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.96, i32 noundef %15) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %do.body10, %if.end.if.end21_crit_edge
  %16 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %family_data, align 4
  %resolution23 = getelementptr inbounds %struct.w1_therm_family_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %resolution23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resolution23, align 4
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ %call24, %if.end21 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resolution_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #6 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !318
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.98, i32 noundef %call1) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %family_data = getelementptr i8, ptr %device, i32 -4
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %family_data, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.do.end8_crit_edge, label %lor.lhs.false

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

lor.lhs.false:                                    ; preds = %if.end
  %specific_functions = getelementptr inbounds %struct.w1_therm_family_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %specific_functions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %specific_functions, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %lor.lhs.false.do.end8_crit_edge, label %if.end9

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %if.end.do.end8_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.98) #20
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %set_resolution = getelementptr inbounds %struct.w1_therm_family_converter, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %set_resolution to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_resolution, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call12 = call i32 %6(ptr noundef %add.ptr.i, i32 noundef %8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %family_data, align 4
  %resolution = getelementptr inbounds %struct.w1_therm_family_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %resolution, align 4
  %14 = load ptr, ptr %family_data, align 4
  %conv_time_override = getelementptr inbounds %struct.w1_therm_family_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %conv_time_override to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %conv_time_override, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %size, %do.end ], [ %size, %if.end15 ], [ %size, %do.end8 ], [ %call12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_seq_show(ptr noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  %ack = alloca i8, align 1
  %rn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ack) #16
  %0 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ack, align 1, !annotation !318
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rn) #16
  %1 = ptrtoint ptr %rn to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %rn, align 8, !annotation !318
  %master = getelementptr i8, ptr %device, i32 -12
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #16
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call2 = tail call i32 @w1_reset_bus(ptr noundef %5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %7, i8 noundef zeroext -52) #16
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %9, i8 noundef zeroext -103) #16
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %11, i8 noundef zeroext 90) #16
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %13, i8 noundef zeroext -91) #16
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %pullup_duration = getelementptr inbounds %struct.w1_master, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %pullup_duration to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pullup_duration, align 4
  tail call void @msleep(i32 noundef %17) #16
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %call9 = tail call zeroext i8 @w1_read_8(ptr noundef %19) #16
  %20 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call9, ptr %ack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call9)
  %cmp.not = icmp eq i8 %call9, -86
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

for.cond.preheader:                               ; preds = %if.end
  %reg_num28 = getelementptr i8, ptr %device, i32 -32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %seq.0113 = phi i32 [ 0, %for.cond.preheader ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %i.0112 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  %call16 = call i32 @w1_reset_bus(ptr noundef %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end19:                                         ; preds = %for.body
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %24, i8 noundef zeroext 15) #16
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  %call22 = call zeroext i8 @w1_read_block(ptr noundef %26, ptr noundef nonnull %rn, i32 noundef 8) #16
  %27 = ptrtoint ptr %rn to i32
  call void @__asan_load8_noabort(i32 %27)
  %bf.load = load i64, ptr %rn, align 8
  %conv23109 = and i64 %bf.load, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %conv23109)
  %cmp24 = icmp eq i64 %conv23109, 255
  br i1 %cmp24, label %if.end19.for.end_crit_edge, label %if.end27

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end27:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %reg_num28 to i32
  call void @__asan_load8_noabort(i32 %28)
  %bf.load29 = load i64, ptr %reg_num28, align 8
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %30, i8 noundef zeroext -103) #16
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %32, i8 noundef zeroext -106) #16
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %34, i8 noundef zeroext 105) #16
  %35 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master, align 4
  %call42 = call zeroext i8 @w1_read_block(ptr noundef %36, ptr noundef nonnull %ack, i32 noundef 1) #16
  %37 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %master, align 4
  %call44 = call zeroext i8 @w1_read_8(ptr noundef %38) #16
  %39 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call44, ptr %ack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call44)
  %cmp46.not = icmp eq i8 %call44, -86
  br i1 %cmp46.not, label %for.inc, label %if.end27.error_crit_edge

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

for.inc:                                          ; preds = %if.end27
  %bf.lshr110 = xor i64 %bf.load29, %bf.load
  %40 = and i64 %bf.lshr110, 72057594037927680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp34 = icmp eq i64 %40, 0
  %spec.select = select i1 %cmp34, i32 %i.0112, i32 %seq.0113
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %seq.0.lcssa = phi i32 [ %seq.0113, %if.end19.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %41 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master, align 4
  %call51 = call i32 @w1_reset_bus(ptr noundef %42) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %for.end.error_crit_edge

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end54:                                         ; preds = %for.end
  %43 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %44, i8 noundef zeroext -52) #16
  %45 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %46, i8 noundef zeroext -103) #16
  %47 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %48, i8 noundef zeroext 60) #16
  %49 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %50, i8 noundef zeroext -61) #16
  %51 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master, align 4
  %call60 = call zeroext i8 @w1_read_8(ptr noundef %52) #16
  %53 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %call60, ptr %ack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %call60)
  %cmp62.not = icmp eq i8 %call60, -86
  br i1 %cmp62.not, label %if.end65, label %if.end54.error_crit_edge

if.end54.error_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end65:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %master, align 4
  %bus_mutex67 = getelementptr inbounds %struct.w1_master, ptr %55, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex67) #16
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.15, i32 noundef %seq.0.lcssa)
  br label %cleanup

error:                                            ; preds = %if.end54.error_crit_edge, %for.end.error_crit_edge, %if.end27.error_crit_edge, %for.body.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %56 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master, align 4
  %bus_mutex72 = getelementptr inbounds %struct.w1_master, ptr %57, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex72) #16
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end65
  %retval.0 = phi i32 [ -5, %error ], [ %call69, %if.end65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rn) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ack) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !57, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !83, !84, !85, !86, !88, !89, !91, !93, !95, !97, !99, !100, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !143, !145, !146, !148, !149, !150, !152, !153, !155, !156, !158, !160, !162, !163, !164, !165, !167, !168, !170, !171, !172, !173, !175, !177, !178, !179, !180, !182, !184, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !228, !229, !231, !232, !234, !235, !236, !238, !240, !241, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !259, !260, !262, !264, !266, !267, !269, !271, !272, !274, !275, !276, !278, !279, !281, !282, !283, !285, !286, !288, !290, !292, !294, !295, !297, !299, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @__param_strong_pullup, !1, !"__param_strong_pullup", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_therm.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_strong_pulluptype183, !1, !"__UNIQUE_ID_strong_pulluptype183", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_w1_therm__198_2147_w1_therm_init6, !4, !"__initcall__kmod_w1_therm__198_2147_w1_therm_init6", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2147, i32 1}
!5 = !{ptr @__exitcall_w1_therm_fini, !6, !"__exitcall_w1_therm_fini", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2148, i32 1}
!7 = !{ptr @__UNIQUE_ID_author199, !8, !"__UNIQUE_ID_author199", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2150, i32 1}
!9 = !{ptr @__UNIQUE_ID_description200, !10, !"__UNIQUE_ID_description200", i1 false, i1 false}
!10 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2151, i32 1}
!11 = !{ptr @__UNIQUE_ID_file201, !12, !"__UNIQUE_ID_file201", i1 false, i1 false}
!12 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2152, i32 1}
!13 = !{ptr @__UNIQUE_ID_license202, !12, !"__UNIQUE_ID_license202", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias203, !15, !"__UNIQUE_ID_alias203", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2153, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias204, !17, !"__UNIQUE_ID_alias204", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2154, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias205, !19, !"__UNIQUE_ID_alias205", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2155, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias206, !21, !"__UNIQUE_ID_alias206", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2156, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias207, !23, !"__UNIQUE_ID_alias207", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2157, i32 1}
!24 = !{ptr @__param_str_strong_pullup, !1, !"__param_str_strong_pullup", i1 false, i1 false}
!25 = !{ptr @w1_strong_pullup, !26, !"w1_strong_pullup", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_therm.c", i32 44, i32 12}
!27 = !{ptr @w1_therm_families, !28, !"w1_therm_families", i1 false, i1 false}
!28 = !{!"../drivers/w1/slaves/w1_therm.c", i32 721, i32 41}
!29 = !{ptr @w1_therm_family_DS18S20, !30, !"w1_therm_family_DS18S20", i1 false, i1 false}
!30 = !{!"../drivers/w1/slaves/w1_therm.c", i32 501, i32 25}
!31 = !{ptr @w1_ds18s20_fops, !32, !"w1_ds18s20_fops", i1 false, i1 false}
!32 = !{!"../drivers/w1/slaves/w1_therm.c", i32 485, i32 35}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/w1/slaves/w1_therm.c", i32 946, i32 5}
!35 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @w1_therm_add_slave._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @w1_therm_add_slave._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/w1/slaves/w1_therm.c", i32 959, i32 3}
!43 = !{ptr @w1_therm_add_slave._entry.5, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @w1_therm_add_slave._entry_ptr.7, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/w1/slaves/w1_therm.c", i32 970, i32 4}
!47 = !{ptr @w1_therm_add_slave._entry.8, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @w1_therm_add_slave._entry_ptr.10, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/w1/slaves/w1_therm.c", i32 847, i32 2}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @bulk_read_support._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @bulk_read_support._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @bulk_read_device_counter, !56, !"bulk_read_device_counter", i1 false, i1 false}
!56 = !{!"../drivers/w1/slaves/w1_therm.c", i32 48, i32 12}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/w1/slaves/w1_therm.c", i32 358, i32 8}
!59 = !{ptr @dev_attr_therm_bulk_read, !58, !"dev_attr_therm_bulk_read", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1919, i32 22}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1886, i32 21}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1891, i32 3}
!66 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @therm_bulk_read_store._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @therm_bulk_read_store._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/w1/slaves/w1_therm.c", i32 868, i32 2}
!71 = !{ptr @conversion_time._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @conversion_time._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @w1_ds18s20_groups, !74, !"w1_ds18s20_groups", i1 false, i1 false}
!74 = !{!"../drivers/w1/slaves/w1_therm.c", i32 423, i32 1}
!75 = !{ptr @w1_ds18s20_group, !74, !"w1_ds18s20_group", i1 false, i1 false}
!76 = !{ptr @w1_ds18s20_attrs, !77, !"w1_ds18s20_attrs", i1 false, i1 false}
!77 = !{!"../drivers/w1/slaves/w1_therm.c", i32 396, i32 26}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/w1/slaves/w1_therm.c", i32 348, i32 8}
!80 = !{ptr @dev_attr_w1_slave, !79, !"dev_attr_w1_slave", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1536, i32 4}
!83 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @w1_slave_show.__UNIQUE_ID_ddebug192, !82, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1550, i32 3}
!88 = !{ptr @w1_slave_show.__UNIQUE_ID_ddebug193, !87, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1557, i32 41}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1558, i32 40}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1559, i32 36}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1559, i32 44}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1564, i32 3}
!99 = !{ptr @w1_slave_show._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @w1_slave_show._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1570, i32 40}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1249, i32 5}
!105 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @read_scratchpad._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @read_scratchpad._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1063, i32 3}
!110 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @convert_t._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @convert_t._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1107, i32 7}
!115 = !{ptr @convert_t.__UNIQUE_ID_ddebug189, !114, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/w1/slaves/w1_therm.c", i32 888, i32 2}
!118 = !{ptr @temperature_from_RAM._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @temperature_from_RAM._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1587, i32 3}
!122 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @w1_slave_store._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @w1_slave_store._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @w1_slave_store._entry.39, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1593, i32 3}
!127 = !{ptr @w1_slave_store._entry_ptr.40, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1606, i32 3}
!130 = !{ptr @w1_slave_store._entry.41, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @w1_slave_store._entry_ptr.43, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/w1/slaves/w1_therm.c", i32 350, i32 8}
!134 = !{ptr @dev_attr_temperature, !133, !"dev_attr_temperature", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1625, i32 3}
!137 = !{ptr @temperature_show._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @temperature_show._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @temperature_show.__UNIQUE_ID_ddebug194, !140, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!140 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1632, i32 4}
!141 = !{ptr @temperature_show.__UNIQUE_ID_ddebug195, !142, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!142 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1646, i32 3}
!143 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/w1/slaves/w1_therm.c", i32 351, i32 8}
!145 = !{ptr @dev_attr_ext_power, !144, !"dev_attr_ext_power", i1 false, i1 false}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1661, i32 3}
!148 = !{ptr @ext_power_show._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ext_power_show._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1670, i32 3}
!152 = !{ptr @ext_power_show.__UNIQUE_ID_ddebug196, !151, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!153 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/w1/slaves/w1_therm.c", i32 353, i32 8}
!155 = !{ptr @dev_attr_eeprom_cmd, !154, !"dev_attr_eeprom_cmd", i1 false, i1 false}
!156 = !{ptr @.str.50, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1745, i32 21}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1748, i32 21}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1753, i32 3}
!162 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @eeprom_cmd_store._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @eeprom_cmd_store._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/w1/slaves/w1_therm.c", i32 354, i32 8}
!167 = !{ptr @dev_attr_alarms, !166, !"dev_attr_alarms", i1 false, i1 false}
!168 = !{ptr @.str.55, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1772, i32 3}
!170 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @alarms_show._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @alarms_show._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1777, i32 22}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1794, i32 3}
!177 = !{ptr @.str.59, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @alarms_store._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @alarms_store._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.60, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1802, i32 26}
!182 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1805, i32 3}
!184 = !{ptr @alarms_store._entry.61, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @alarms_store._entry_ptr.63, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @alarms_store._entry.64, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1813, i32 3}
!188 = !{ptr @alarms_store._entry_ptr.65, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @alarms_store._entry.66, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1823, i32 3}
!191 = !{ptr @alarms_store._entry_ptr.67, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @alarms_store._entry.68, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1830, i32 3}
!194 = !{ptr @alarms_store._entry_ptr.69, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1852, i32 3}
!197 = !{ptr @alarms_store._entry.70, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @alarms_store._entry_ptr.72, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1860, i32 3}
!201 = !{ptr @alarms_store._entry.73, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @alarms_store._entry_ptr.75, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1868, i32 3}
!205 = !{ptr @alarms_store._entry.76, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @alarms_store._entry_ptr.78, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.79, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/w1/slaves/w1_therm.c", i32 355, i32 8}
!209 = !{ptr @dev_attr_conv_time, !208, !"dev_attr_conv_time", i1 false, i1 false}
!210 = !{ptr @.str.80, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1928, i32 3}
!212 = !{ptr @.str.81, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @conv_time_show._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @conv_time_show._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.82, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/w1/slaves/w1_therm.c", i32 829, i32 3}
!217 = !{ptr @check_family_data._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @check_family_data._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.83, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1166, i32 3}
!221 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @conv_time_measure._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @conv_time_measure._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @conv_time_measure.__UNIQUE_ID_ddebug190, !225, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!225 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1193, i32 5}
!226 = !{ptr @.str.85, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1199, i32 4}
!228 = !{ptr @conv_time_measure.__UNIQUE_ID_ddebug191, !227, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/w1/slaves/w1_therm.c", i32 356, i32 8}
!231 = !{ptr @dev_attr_features, !230, !"dev_attr_features", i1 false, i1 false}
!232 = !{ptr @.str.87, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1970, i32 3}
!234 = !{ptr @features_show._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @features_show._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.88, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1974, i32 22}
!238 = !{ptr @.str.89, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1989, i32 3}
!240 = !{ptr @features_store._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @features_store._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.91, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/w1/slaves/w1_therm.c", i32 2003, i32 3}
!244 = !{ptr @features_store._entry.90, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @features_store._entry_ptr.92, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @w1_chip_info, !247, !"w1_chip_info", i1 false, i1 false}
!247 = !{!"../drivers/w1/slaves/w1_therm.c", i32 467, i32 37}
!248 = !{ptr @w1_hwmon_ops, !249, !"w1_hwmon_ops", i1 false, i1 false}
!249 = !{!"../drivers/w1/slaves/w1_therm.c", i32 462, i32 31}
!250 = !{ptr @w1_info, !251, !"w1_info", i1 false, i1 false}
!251 = !{!"../drivers/w1/slaves/w1_therm.c", i32 457, i32 41}
!252 = !{ptr @w1_temp, !253, !"w1_temp", i1 false, i1 false}
!253 = !{!"../drivers/w1/slaves/w1_therm.c", i32 452, i32 40}
!254 = !{ptr @w1_temp_config, !255, !"w1_temp_config", i1 false, i1 false}
!255 = !{!"../drivers/w1/slaves/w1_therm.c", i32 447, i32 18}
!256 = !{ptr @.str.93, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/w1/slaves/w1_therm.c", i32 701, i32 3}
!258 = !{ptr @.str.94, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @w1_DS18S20_convert_temp.__UNIQUE_ID_ddebug184, !257, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!260 = !{ptr @w1_therm_family_DS1822, !261, !"w1_therm_family_DS1822", i1 false, i1 false}
!261 = !{!"../drivers/w1/slaves/w1_therm.c", i32 511, i32 25}
!262 = !{ptr @w1_therm_fops, !263, !"w1_therm_fops", i1 false, i1 false}
!263 = !{!"../drivers/w1/slaves/w1_therm.c", i32 478, i32 35}
!264 = !{ptr @w1_therm_groups, !265, !"w1_therm_groups", i1 false, i1 false}
!265 = !{!"../drivers/w1/slaves/w1_therm.c", i32 422, i32 1}
!266 = !{ptr @w1_therm_group, !265, !"w1_therm_group", i1 false, i1 false}
!267 = !{ptr @w1_therm_attrs, !268, !"w1_therm_attrs", i1 false, i1 false}
!268 = !{!"../drivers/w1/slaves/w1_therm.c", i32 384, i32 26}
!269 = !{ptr @.str.95, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/w1/slaves/w1_therm.c", i32 352, i32 8}
!271 = !{ptr @dev_attr_resolution, !270, !"dev_attr_resolution", i1 false, i1 false}
!272 = !{ptr @.str.96, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1683, i32 3}
!274 = !{ptr @resolution_show._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @resolution_show._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.97, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1691, i32 3}
!278 = !{ptr @resolution_show.__UNIQUE_ID_ddebug197, !277, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!279 = !{ptr @.str.98, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1709, i32 3}
!281 = !{ptr @resolution_store._entry, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @resolution_store._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @resolution_store._entry.99, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../drivers/w1/slaves/w1_therm.c", i32 1715, i32 3}
!285 = !{ptr @resolution_store._entry_ptr.100, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @w1_therm_family_DS18B20, !287, !"w1_therm_family_DS18B20", i1 false, i1 false}
!287 = !{!"../drivers/w1/slaves/w1_therm.c", i32 506, i32 25}
!288 = !{ptr @w1_therm_family_DS28EA00, !289, !"w1_therm_family_DS28EA00", i1 false, i1 false}
!289 = !{!"../drivers/w1/slaves/w1_therm.c", i32 516, i32 25}
!290 = !{ptr @w1_ds28ea00_fops, !291, !"w1_ds28ea00_fops", i1 false, i1 false}
!291 = !{!"../drivers/w1/slaves/w1_therm.c", i32 492, i32 35}
!292 = !{ptr @w1_ds28ea00_groups, !293, !"w1_ds28ea00_groups", i1 false, i1 false}
!293 = !{!"../drivers/w1/slaves/w1_therm.c", i32 424, i32 1}
!294 = !{ptr @w1_ds28ea00_group, !293, !"w1_ds28ea00_group", i1 false, i1 false}
!295 = !{ptr @w1_ds28ea00_attrs, !296, !"w1_ds28ea00_attrs", i1 false, i1 false}
!296 = !{!"../drivers/w1/slaves/w1_therm.c", i32 407, i32 26}
!297 = !{ptr @.str.101, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/w1/slaves/w1_therm.c", i32 349, i32 8}
!299 = !{ptr @dev_attr_w1_seq, !298, !"dev_attr_w1_seq", i1 false, i1 false}
!300 = !{ptr @w1_therm_family_DS1825, !301, !"w1_therm_family_DS1825", i1 false, i1 false}
!301 = !{!"../drivers/w1/slaves/w1_therm.c", i32 521, i32 25}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{i64 2148746329, i64 2148746334, i64 2148746347, i64 2148746391, i64 2148746425, i64 2148746446}
!312 = !{i8 0, i8 2}
!313 = !{i64 2148352966}
!314 = !{i64 2148267699, i64 2148267731, i64 2148267760, i64 2148267794, i64 2148267825, i64 2148267848}
!315 = !{i64 2148353195}
!316 = !{i64 2148264514, i64 2148264540, i64 2148264569, i64 2148264603, i64 2148264634, i64 2148264657}
!317 = !{i64 2148266979, i64 2148267005, i64 2148267034, i64 2148267068, i64 2148267099, i64 2148267122}
!318 = !{!"auto-init"}
