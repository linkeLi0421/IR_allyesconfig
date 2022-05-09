; ModuleID = '/llk/IR_all_yes/drivers/iio/light/si1133.c_pt.bc'
source_filename = "../drivers/iio/light/si1133.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.si1133_lux_coeff = type { [4 x %struct.si1133_coeff], [9 x %struct.si1133_coeff] }
%struct.si1133_coeff = type { i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.si1133_data = type { ptr, ptr, %struct.mutex, i32, i8, [6 x i8], [6 x i8], %struct.completion }

@__initcall__kmod_si1133__288_1071_si1133_driver_init6 = internal global ptr @si1133_driver_init, section ".initcall6.init", align 4
@si1133_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si1133_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si1133_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si1133_driver_exit = internal global ptr @si1133_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [73 x i8] c"si1133.author=Maxime Roussin-Belanger <maxime.roussinbelanger@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [82 x i8] c"si1133.description=Silabs SI1133, UV index sensor and ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"si1133.file=drivers/iio/light/si1133\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"si1133.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si1133\00", [25 x i8] zeroinitializer }, align 32
@si1133_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si1133\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si1133_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si1133_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 44, ptr @si1133_write_ranges_table, ptr @si1133_read_ranges_table, ptr null, ptr @si1133_precious_table, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"si1133:1008:(&si1133_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@si1133_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1011, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialise regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si1133_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/si1133.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si1133_probe._entry_ptr = internal global ptr @si1133_probe._entry, section ".printk_index", align 4
@si1133_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 11, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 13, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr @.str.19, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr @.str.20, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 1, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 2, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr @.str.19, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 27, i32 24, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 27, i32 25, i32 37, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 294916, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [160 x i8] zeroinitializer }, align 32
@si1133_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @si1133_attribute_group, ptr @si1133_read_raw, ptr null, ptr null, ptr @si1133_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@si1133_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@si1133_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error when initializing chip: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@si1133_probe._entry_ptr.10 = internal global ptr @si1133_probe._entry.8, section ".printk_index", align 4
@si1133_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1039, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Required interrupt not provided, cannot proceed\0A\00", [47 x i8] zeroinitializer }, align 32
@si1133_probe._entry_ptr.13 = internal global ptr @si1133_probe._entry.11, section ".printk_index", align 4
@si1133_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1050, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Request irq %d failed: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si1133_probe._entry_ptr.17 = internal global ptr @si1133_probe._entry.14, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@si1133_write_ranges_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @si1133_reg_ranges, i32 5, ptr @si1133_reg_ro_ranges, i32 2 }, [16 x i8] zeroinitializer }, align 32
@si1133_read_ranges_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @si1133_reg_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@si1133_precious_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @si1133_precious_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@si1133_reg_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 10, i32 11 }, %struct.regmap_range { i32 15, i32 15 }, %struct.regmap_range { i32 16, i32 18 }, %struct.regmap_range { i32 19, i32 44 }], [56 x i8] zeroinitializer }, align 32
@si1133_reg_ro_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 16, i32 44 }], [16 x i8] zeroinitializer }, align 32
@si1133_precious_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 18, i32 18 }], [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"large\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"small\00", [26 x i8] zeroinitializer }, align 32
@si1133_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @si1133_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@si1133_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.21, %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.23, %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"0.0244 0.0488 0.0975 0.195 0.390 0.780 1.560 3.120 6.24 12.48 25.0 50.0\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"1 2 4 8 16 32 64 128\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scale_available\00", [16 x i8] zeroinitializer }, align 32
@si1133_int_time_table = internal constant { [12 x [2 x i32]], [32 x i8] } { [12 x [2 x i32]] [[2 x i32] [i32 0, i32 24400], [2 x i32] [i32 0, i32 48800], [2 x i32] [i32 0, i32 97500], [2 x i32] [i32 0, i32 195000], [2 x i32] [i32 0, i32 390000], [2 x i32] [i32 0, i32 780000], [2 x i32] [i32 1, i32 560000], [2 x i32] [i32 3, i32 120000], [2 x i32] [i32 6, i32 240000], [2 x i32] [i32 12, i32 480000], [2 x i32] [i32 25, i32 0], [2 x i32] [i32 50, i32 0]], [32 x i8] zeroinitializer }, align 32
@lux_coeff = internal constant { %struct.si1133_lux_coeff, [44 x i8] } { %struct.si1133_lux_coeff { [4 x %struct.si1133_coeff] [%struct.si1133_coeff { i16 0, i16 209 }, %struct.si1133_coeff { i16 1665, i16 93 }, %struct.si1133_coeff { i16 2064, i16 65 }, %struct.si1133_coeff { i16 -2671, i16 234 }], [9 x %struct.si1133_coeff] [%struct.si1133_coeff zeroinitializer, %struct.si1133_coeff { i16 1921, i16 29053 }, %struct.si1133_coeff { i16 -1022, i16 -29173 }, %struct.si1133_coeff { i16 2320, i16 20789 }, %struct.si1133_coeff { i16 -367, i16 -7627 }, %struct.si1133_coeff { i16 -1774, i16 -27296 }, %struct.si1133_coeff { i16 -608, i16 -18761 }, %struct.si1133_coeff { i16 -1503, i16 -13705 }, %struct.si1133_coeff { i16 -1886, i16 -6608 }] }, [44 x i8] zeroinitializer }, align 32
@si1133_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 404, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to write command 0x%02x, ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si1133_command\00", [17 x i8] zeroinitializer }, align 32
@si1133_command._entry_ptr = internal global ptr @si1133_command._entry, section ".printk_index", align 4
@si1133_command._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 429, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read command 0x%02x, ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@si1133_command._entry_ptr.29 = internal global ptr @si1133_command._entry.27, section ".printk_index", align 4
@si1133_parse_response_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 355, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Output buffer overflow: 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"si1133_parse_response_err\00", [38 x i8] zeroinitializer }, align 32
@si1133_parse_response_err._entry_ptr = internal global ptr @si1133_parse_response_err._entry, section ".printk_index", align 4
@si1133_parse_response_err._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 359, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Saturation of the ADC or overflow of accumulation: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@si1133_parse_response_err._entry_ptr.34 = internal global ptr @si1133_parse_response_err._entry.32, section ".printk_index", align 4
@si1133_parse_response_err._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 364, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Parameter access to an invalid location: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@si1133_parse_response_err._entry_ptr.37 = internal global ptr @si1133_parse_response_err._entry.35, section ".printk_index", align 4
@si1133_parse_response_err._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.4, i32 367, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid command 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@si1133_parse_response_err._entry_ptr.40 = internal global ptr @si1133_parse_response_err._entry.38, section ".printk_index", align 4
@si1133_parse_response_err._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.4, i32 370, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown error 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@si1133_parse_response_err._entry_ptr.43 = internal global ptr @si1133_parse_response_err._entry.41, section ".printk_index", align 4
@si1133_validate_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 982, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device ID part 0x%02x rev 0x%02x mfr 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si1133_validate_ids\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@si1133_validate_ids._entry_ptr = internal global ptr @si1133_validate_ids._entry, section ".printk_index", align 4
@si1133_validate_ids._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.4, i32 986, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Part ID mismatch got 0x%02x, expected 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@si1133_validate_ids._entry_ptr.49 = internal global ptr @si1133_validate_ids._entry.47, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si1133_cmd_reset_sw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 338, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout on reset ctr resp: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si1133_cmd_reset_sw\00", [44 x i8] zeroinitializer }, align 32
@si1133_cmd_reset_sw._entry_ptr = internal global ptr @si1133_cmd_reset_sw._entry, section ".printk_index", align 4
@si1133_threaded_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.52, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.si1133_threaded_irq_handler = private unnamed_addr constant [28 x i8] c"si1133_threaded_irq_handler\00", align 1
@si1133_threaded_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.si1133_threaded_irq_handler, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error reading IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@si1133_threaded_irq_handler._entry_ptr = internal global ptr @si1133_threaded_irq_handler._entry, section ".printk_index", align 4
@switch.table.si1133_command = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.39, ptr @.str.36, ptr @.str.33, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@switch.table.si1133_command.54 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -22, i32 -22, i32 -75, i32 -75], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 15, i64 18]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 27]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 27]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 27]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 27]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 15, i64 18]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 27]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 6, i64 12, i64 25, i64 50]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 24400, i64 48800, i64 97500, i64 195000, i64 390000, i64 780000]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 27]
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"si1133_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1063, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1065, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"si1133_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1057, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"si1133_regmap_config\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 183, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1008, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1011, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"si1133_channels\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 476, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"si1133_info\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 874, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1024, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1032, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1038, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1049, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 87, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [26 x i8] c"si1133_write_ranges_table\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 166, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"si1133_read_ranges_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 173, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant [22 x i8] c"si1133_precious_table\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 178, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"si1133_reg_ranges\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 149, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"si1133_reg_ro_ranges\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 157, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"si1133_precious_ranges\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 162, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 489, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 493, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"si1133_attribute_group\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 870, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"si1133_attributes\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 864, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"iio_const_attr_scale_available\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 114, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 112, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"si1133_int_time_table\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 134, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant [10 x i8] c"lux_coeff\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 220, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 403, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 427, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 355, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 358, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 362, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 367, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 370, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 980, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 984, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 338, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [30 x i8] c"../drivers/iio/light/si1133.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 650, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [28 x i8] c"switch.table.si1133_command\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [31 x i8] c"switch.table.si1133_command.54\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_si1133_driver_exit, ptr @__initcall__kmod_si1133__288_1071_si1133_driver_init6, ptr @si1133_cmd_reset_sw._entry, ptr @si1133_cmd_reset_sw._entry_ptr, ptr @si1133_command._entry, ptr @si1133_command._entry.27, ptr @si1133_command._entry_ptr, ptr @si1133_command._entry_ptr.29, ptr @si1133_driver_exit, ptr @si1133_parse_response_err._entry, ptr @si1133_parse_response_err._entry.32, ptr @si1133_parse_response_err._entry.35, ptr @si1133_parse_response_err._entry.38, ptr @si1133_parse_response_err._entry.41, ptr @si1133_parse_response_err._entry_ptr, ptr @si1133_parse_response_err._entry_ptr.34, ptr @si1133_parse_response_err._entry_ptr.37, ptr @si1133_parse_response_err._entry_ptr.40, ptr @si1133_parse_response_err._entry_ptr.43, ptr @si1133_probe._entry, ptr @si1133_probe._entry.11, ptr @si1133_probe._entry.14, ptr @si1133_probe._entry.8, ptr @si1133_probe._entry_ptr, ptr @si1133_probe._entry_ptr.10, ptr @si1133_probe._entry_ptr.13, ptr @si1133_probe._entry_ptr.17, ptr @si1133_threaded_irq_handler._entry, ptr @si1133_threaded_irq_handler._entry_ptr, ptr @si1133_validate_ids._entry, ptr @si1133_validate_ids._entry.47, ptr @si1133_validate_ids._entry_ptr, ptr @si1133_validate_ids._entry_ptr.49, ptr @si1133_driver, ptr @.str, ptr @si1133_ids, ptr @si1133_probe._key, ptr @si1133_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @si1133_channels, ptr @si1133_info, ptr @si1133_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.18, ptr @si1133_write_ranges_table, ptr @si1133_read_ranges_table, ptr @si1133_precious_table, ptr @si1133_reg_ranges, ptr @si1133_reg_ro_ranges, ptr @si1133_precious_ranges, ptr @.str.19, ptr @.str.20, ptr @si1133_attribute_group, ptr @si1133_attributes, ptr @iio_const_attr_integration_time_available, ptr @iio_const_attr_scale_available, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @si1133_int_time_table, ptr @lux_coeff, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @si1133_threaded_irq_handler._rs, ptr @.str.52, ptr @.str.53, ptr @switch.table.si1133_command, ptr @switch.table.si1133_command.54], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_write_ranges_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_read_ranges_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_precious_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_reg_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_reg_ro_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_precious_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_int_time_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lux_coeff to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_command._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_parse_response_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_parse_response_err._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_parse_response_err._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_parse_response_err._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_parse_response_err._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_validate_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_validate_ids._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_cmd_reset_sw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_threaded_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1133_threaded_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si1133_command to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si1133_command.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si1133_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si1133_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si1133_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @si1133_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1133_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %resp.i.i = alloca i32, align 4
  %part_id.i = alloca i32, align 4
  %rev_id.i = alloca i32, align 4
  %mfr_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 176) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %completion = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #6
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si1133_regmap_config, ptr noundef nonnull @si1133_probe._key, ptr noundef nonnull @.str.1) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %client10 = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client10, align 4
  %name11 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %id, ptr %name11, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @si1133_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @si1133_info, ptr %info, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %mutex = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @si1133_probe.__key) #6
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %part_id.i) #6
  %14 = ptrtoint ptr %part_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %part_id.i, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev_id.i) #6
  %15 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rev_id.i, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mfr_id.i) #6
  %16 = ptrtoint ptr %mfr_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %mfr_id.i, align 4, !annotation !147
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %part_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.si1133_validate_ids.exit.thread_crit_edge

if.end9.si1133_validate_ids.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_validate_ids.exit.thread

if.end.i:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %13, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 1, ptr noundef nonnull %rev_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.si1133_validate_ids.exit.thread_crit_edge

if.end.i.si1133_validate_ids.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_validate_ids.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %13, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %mfr_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.end.i, label %if.end6.i.si1133_validate_ids.exit.thread_crit_edge

if.end6.i.si1133_validate_ids.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_validate_ids.exit.thread

do.end.i:                                         ; preds = %if.end6.i
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %23 = ptrtoint ptr %part_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %part_id.i, align 4
  %25 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rev_id.i, align 4
  %27 = ptrtoint ptr %mfr_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mfr_id.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %24, i32 noundef %26, i32 noundef %28) #9
  %29 = ptrtoint ptr %part_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %part_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 51
  br i1 %cmp.not.i, label %if.end18, label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %30, i32 noundef 51) #9
  br label %si1133_validate_ids.exit.thread

si1133_validate_ids.exit.thread:                  ; preds = %do.end15.i, %if.end6.i.si1133_validate_ids.exit.thread_crit_edge, %if.end.i.si1133_validate_ids.exit.thread_crit_edge, %if.end9.si1133_validate_ids.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call8.i, %if.end6.i.si1133_validate_ids.exit.thread_crit_edge ], [ %call3.i, %if.end.i.si1133_validate_ids.exit.thread_crit_edge ], [ %call1.i, %if.end9.si1133_validate_ids.exit.thread_crit_edge ], [ -19, %do.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mfr_id.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev_id.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %part_id.i) #6
  br label %cleanup

if.end18:                                         ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mfr_id.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev_id.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %part_id.i) #6
  %31 = ptrtoint ptr %client10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client10, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i.i) #6
  %33 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %resp.i.i, align 4, !annotation !147
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 11, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.si1133_cmd_reset_sw.exit.thread.i_crit_edge

if.end18.si1133_cmd_reset_sw.exit.thread.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_cmd_reset_sw.exit.thread.i

if.end.i.i:                                       ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %36, 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %if.end.i.i
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call4.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 17, ptr noundef nonnull %resp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call4.i.i)
  %cmp.i.i = icmp eq i32 %call4.i.i, -6
  br i1 %cmp.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7500, i32 noundef 2) #6
  br label %while.cond.i.i.backedge

if.end6.i.i:                                      ; preds = %while.cond.i.i
  %39 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp.i.i, align 4
  %and.i.i = and i32 %40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i)
  %cmp7.i.i = icmp eq i32 %and.i.i, 15
  br i1 %cmp7.i.i, label %while.end.i.i, label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp10.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp10.i.i, label %do.end.i.i, label %if.end9.i.i.while.cond.i.i.backedge_crit_edge

if.end9.i.i.while.cond.i.i.backedge_crit_edge:    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %if.end9.i.i.while.cond.i.i.backedge_crit_edge, %if.then5.i.i
  br label %while.cond.i.i

do.end.i.i:                                       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.50, i32 noundef %40) #9
  br label %si1133_cmd_reset_sw.exit.thread.i

while.end.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool13.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool13.not.i.i, label %si1133_cmd_reset_sw.exit.thread26.i, label %si1133_cmd_reset_sw.exit.i

si1133_cmd_reset_sw.exit.thread26.i:              ; preds = %while.end.i.i
  %rsp_seq.i.i = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %rsp_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 15, ptr %rsp_seq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #6
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i18.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 10, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i19.i, label %si1133_param_set.exit.i, label %si1133_cmd_reset_sw.exit.thread26.i.do.end24_crit_edge

si1133_cmd_reset_sw.exit.thread26.i.do.end24_crit_edge: ; preds = %si1133_cmd_reset_sw.exit.thread26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

si1133_cmd_reset_sw.exit.thread.i:                ; preds = %do.end.i.i, %if.end18.si1133_cmd_reset_sw.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end18.si1133_cmd_reset_sw.exit.thread.i_crit_edge ], [ -110, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #6
  br label %do.end24

si1133_cmd_reset_sw.exit.i:                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i.i) #6
  br label %si1133_initialize.exit

si1133_param_set.exit.i:                          ; preds = %si1133_cmd_reset_sw.exit.thread26.i
  %call2.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -102) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %si1133_param_set.exit.i.do.end24_crit_edge

si1133_param_set.exit.i.do.end24_crit_edge:       ; preds = %si1133_param_set.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end4.i:                                        ; preds = %si1133_param_set.exit.i
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i.i.i.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 10, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %si1133_param_set.exit.i.i.i, label %if.end4.i.do.end24_crit_edge

if.end4.i.do.end24_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

si1133_param_set.exit.i.i.i:                      ; preds = %if.end4.i
  %call2.i.i.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -122) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i22.i, label %si1133_param_set.exit.i.i.i.do.end24_crit_edge

si1133_param_set.exit.i.i.i.do.end24_crit_edge:   ; preds = %si1133_param_set.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end.i22.i:                                     ; preds = %si1133_param_set.exit.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.si1133_data, ptr %1, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 45, ptr %arrayidx.i.i.i, align 1
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 10, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i65.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i65.i.i, label %si1133_param_set.exit.i.i, label %if.end.i22.i.do.end24_crit_edge

if.end.i22.i.do.end24_crit_edge:                  ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

si1133_param_set.exit.i.i:                        ; preds = %if.end.i22.i
  %call2.i.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %si1133_param_set.exit.i.i.do.end24_crit_edge

si1133_param_set.exit.i.i.do.end24_crit_edge:     ; preds = %si1133_param_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end4.i.i:                                      ; preds = %si1133_param_set.exit.i.i
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i.i68.i.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 10, i32 noundef 241) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68.i.i)
  %tobool.not.i.i69.i.i = icmp eq i32 %call.i.i68.i.i, 0
  br i1 %tobool.not.i.i69.i.i, label %si1133_param_set.exit.i72.i.i, label %if.end4.i.i.do.end24_crit_edge

if.end4.i.i.do.end24_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

si1133_param_set.exit.i72.i.i:                    ; preds = %if.end4.i.i
  %call2.i.i70.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -121) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i70.i.i)
  %tobool.not.i71.i.i = icmp eq i32 %call2.i.i70.i.i, 0
  br i1 %tobool.not.i71.i.i, label %if.end10.i.i, label %si1133_param_set.exit.i72.i.i.do.end24_crit_edge

si1133_param_set.exit.i72.i.i.do.end24_crit_edge: ; preds = %si1133_param_set.exit.i72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end10.i.i:                                     ; preds = %si1133_param_set.exit.i72.i.i
  %arrayidx.i73.i.i = getelementptr %struct.si1133_data, ptr %1, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %arrayidx.i73.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -15, ptr %arrayidx.i73.i.i, align 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call.i.i76.i.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 10, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76.i.i)
  %tobool.not.i.i77.i.i = icmp eq i32 %call.i.i76.i.i, 0
  br i1 %tobool.not.i.i77.i.i, label %si1133_param_set.exit.i80.i.i, label %if.end10.i.i.do.end24_crit_edge

if.end10.i.i.do.end24_crit_edge:                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

si1133_param_set.exit.i80.i.i:                    ; preds = %if.end10.i.i
  %call2.i.i78.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i78.i.i)
  %tobool.not.i79.i.i = icmp eq i32 %call2.i.i78.i.i, 0
  br i1 %tobool.not.i79.i.i, label %if.end14.i.i, label %si1133_param_set.exit.i80.i.i.do.end24_crit_edge

si1133_param_set.exit.i80.i.i.do.end24_crit_edge: ; preds = %si1133_param_set.exit.i80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end14.i.i:                                     ; preds = %si1133_param_set.exit.i80.i.i
  %arrayidx.i81.i.i = getelementptr %struct.si1133_data, ptr %1, i32 0, i32 6, i32 2
  %55 = ptrtoint ptr %arrayidx.i81.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 45, ptr %arrayidx.i81.i.i, align 1
  %call15.i.i = call fastcc i32 @si1133_param_set(ptr noundef %1, i8 noundef zeroext 12, i32 noundef 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end14.i.i.do.end24_crit_edge

if.end14.i.i.do.end24_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %call24.i.i = call fastcc i32 @si1133_chan_set_adcsens(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext -105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end18.i.i.do.end24_crit_edge

if.end18.i.i.do.end24_crit_edge:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end27.i.i:                                     ; preds = %if.end18.i.i
  %call28.i.i = call fastcc i32 @si1133_chan_set_adcconfig(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end31.i.i, label %if.end27.i.i.do.end24_crit_edge

if.end27.i.i.do.end24_crit_edge:                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end31.i.i:                                     ; preds = %if.end27.i.i
  %call32.i.i = call fastcc i32 @si1133_param_set(ptr noundef %1, i8 noundef zeroext 16, i32 noundef 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %si1133_init_lux_channels.exit.i, label %if.end31.i.i.do.end24_crit_edge

if.end31.i.i.do.end24_crit_edge:                  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

si1133_init_lux_channels.exit.i:                  ; preds = %if.end31.i.i
  %call41.i.i = call fastcc i32 @si1133_chan_set_adcsens(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext -15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool6.not.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %si1133_init_lux_channels.exit.i.do.end24_crit_edge

si1133_init_lux_channels.exit.i.do.end24_crit_edge: ; preds = %si1133_init_lux_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end8.i:                                        ; preds = %si1133_init_lux_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %57, i32 noundef 15, i32 noundef 15) #6
  br label %si1133_initialize.exit

si1133_initialize.exit:                           ; preds = %if.end8.i, %si1133_cmd_reset_sw.exit.i
  %retval.0.i89 = phi i32 [ %call9.i, %if.end8.i ], [ %call4.i.i, %si1133_cmd_reset_sw.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i89)
  %tobool20.not = icmp eq i32 %retval.0.i89, 0
  br i1 %tobool20.not, label %if.end26, label %si1133_initialize.exit.do.end24_crit_edge

si1133_initialize.exit.do.end24_crit_edge:        ; preds = %si1133_initialize.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %si1133_initialize.exit.do.end24_crit_edge, %si1133_init_lux_channels.exit.i.do.end24_crit_edge, %if.end31.i.i.do.end24_crit_edge, %if.end27.i.i.do.end24_crit_edge, %if.end18.i.i.do.end24_crit_edge, %if.end14.i.i.do.end24_crit_edge, %si1133_param_set.exit.i80.i.i.do.end24_crit_edge, %if.end10.i.i.do.end24_crit_edge, %si1133_param_set.exit.i72.i.i.do.end24_crit_edge, %if.end4.i.i.do.end24_crit_edge, %si1133_param_set.exit.i.i.do.end24_crit_edge, %if.end.i22.i.do.end24_crit_edge, %si1133_param_set.exit.i.i.i.do.end24_crit_edge, %if.end4.i.do.end24_crit_edge, %si1133_param_set.exit.i.do.end24_crit_edge, %si1133_cmd_reset_sw.exit.thread.i, %si1133_cmd_reset_sw.exit.thread26.i.do.end24_crit_edge
  %retval.0.i8994 = phi i32 [ %retval.0.i89, %si1133_initialize.exit.do.end24_crit_edge ], [ %call2.i.i.i, %si1133_param_set.exit.i.i.do.end24_crit_edge ], [ %call15.i.i, %if.end14.i.i.do.end24_crit_edge ], [ %call24.i.i, %if.end18.i.i.do.end24_crit_edge ], [ %call28.i.i, %if.end27.i.i.do.end24_crit_edge ], [ %call32.i.i, %if.end31.i.i.do.end24_crit_edge ], [ %call.i.i.i.i, %if.end4.i.do.end24_crit_edge ], [ %call2.i.i.i.i, %si1133_param_set.exit.i.i.i.do.end24_crit_edge ], [ %call.i.i.i, %if.end.i22.i.do.end24_crit_edge ], [ %call.i.i68.i.i, %if.end4.i.i.do.end24_crit_edge ], [ %call2.i.i70.i.i, %si1133_param_set.exit.i72.i.i.do.end24_crit_edge ], [ %call.i.i76.i.i, %if.end10.i.i.do.end24_crit_edge ], [ %call2.i.i78.i.i, %si1133_param_set.exit.i80.i.i.do.end24_crit_edge ], [ %call.i18.i, %si1133_cmd_reset_sw.exit.thread26.i.do.end24_crit_edge ], [ %retval.0.i.ph.i, %si1133_cmd_reset_sw.exit.thread.i ], [ %call41.i.i, %si1133_init_lux_channels.exit.i.do.end24_crit_edge ], [ %call2.i.i, %si1133_param_set.exit.i.do.end24_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i8994) #9
  br label %cleanup

if.end26:                                         ; preds = %si1133_initialize.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool27.not = icmp eq i32 %59, 0
  br i1 %tobool27.not, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %name36 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call38 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %59, ptr noundef null, ptr noundef nonnull @si1133_threaded_irq_handler, i32 noundef 8320, ptr noundef %name36, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %61, i32 noundef %call38) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end43, %do.end31, %do.end24, %si1133_validate_ids.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %retval.0.i8994, %do.end24 ], [ %call38, %do.end43 ], [ %call48, %if.end46 ], [ -22, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %si1133_validate_ids.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1133_threaded_irq_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %irq_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status) #6
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq_status, align 4, !annotation !147
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 18, ptr noundef nonnull %irq_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call i32 @___ratelimit(ptr noundef nonnull @si1133_threaded_irq_handler._rs, ptr noundef nonnull @__func__.si1133_threaded_irq_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #9
  br label %out

if.end8:                                          ; preds = %entry
  %5 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_status, align 4
  %scan_mask = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %scan_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_mask, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp eq i32 %6, %conv
  br i1 %cmp.not, label %if.end8.out_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end8.out_crit_edge, %do.end, %do.body.out_crit_edge
  %completion = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 7
  call void @complete(ptr noundef %completion) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %out ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1133_read_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_config.i.i.i = alloca i32, align 4
  %buffer.i64 = alloca [3 x i8], align 1
  %buffer.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %adc_sens1 = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %adc_sens1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adc_sens1, align 1
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
    i32 18, label %sw.bb12
    i32 2, label %sw.bb22
    i32 15, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cond = icmp eq i32 %6, 6
  br i1 %cond, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buffer.i) #6
  %7 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 1
  %8 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 2
  %9 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 3
  %10 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 4
  %11 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 5
  %12 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 6
  %13 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 7
  %14 = getelementptr inbounds [9 x i8], ptr %buffer.i, i32 0, i32 8
  %scan_mask1.i.i = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 4
  %15 = call ptr @memset(ptr %buffer.i, i32 255, i32 9)
  %16 = ptrtoint ptr %scan_mask1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scan_mask1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 14
  br i1 %cmp.i.i, label %sw.bb2.if.end.i_crit_edge, label %if.end.i.i

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb2
  %18 = ptrtoint ptr %scan_mask1.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 14, ptr %scan_mask1.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 10, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %si1133_set_chlist.exit.i, label %if.end.i.i.si1133_get_lux.exit.thread_crit_edge

if.end.i.i.si1133_get_lux.exit.thread_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_get_lux.exit.thread

si1133_set_chlist.exit.i:                         ; preds = %if.end.i.i
  %call2.i.i.i = tail call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i, label %si1133_set_chlist.exit.i.if.end.i_crit_edge, label %si1133_set_chlist.exit.i.si1133_get_lux.exit.thread_crit_edge

si1133_set_chlist.exit.i.si1133_get_lux.exit.thread_crit_edge: ; preds = %si1133_set_chlist.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_get_lux.exit.thread

si1133_set_chlist.exit.i.if.end.i_crit_edge:      ; preds = %si1133_set_chlist.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %si1133_set_chlist.exit.i.if.end.i_crit_edge, %sw.bb2.if.end.i_crit_edge
  %call.i.i35.i = tail call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i35.i, 0
  br i1 %tobool.not.i.i, label %si1133_bulk_read.exit.i, label %if.end.i.si1133_get_lux.exit.thread_crit_edge

if.end.i.si1133_get_lux.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_get_lux.exit.thread

si1133_bulk_read.exit.i:                          ; preds = %if.end.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call2.i.i = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef 19, ptr noundef nonnull %buffer.i, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %si1133_bulk_read.exit.i.si1133_get_lux.exit.thread_crit_edge

si1133_bulk_read.exit.i.si1133_get_lux.exit.thread_crit_edge: ; preds = %si1133_bulk_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_get_lux.exit.thread

if.end4.i:                                        ; preds = %si1133_bulk_read.exit.i
  %23 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buffer.i, align 1
  %conv.i.i.i = zext i8 %24 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %7, align 1
  %conv2.i.i.i = zext i8 %26 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %8, align 1
  %conv5.i.i.i = zext i8 %28 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %shl.i.i = shl nuw i32 %or6.i.i.i, 8
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %12, align 1
  %conv.i.i47.i = zext i8 %30 to i32
  %shl.i.i48.i = shl nuw nsw i32 %conv.i.i47.i, 16
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %13, align 1
  %conv2.i.i50.i = zext i8 %32 to i32
  %shl3.i.i51.i = shl nuw nsw i32 %conv2.i.i50.i, 8
  %or.i.i52.i = or i32 %shl3.i.i51.i, %shl.i.i48.i
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %14, align 1
  %conv5.i.i54.i = zext i8 %34 to i32
  %or6.i.i55.i = or i32 %or.i.i52.i, %conv5.i.i54.i
  %shl.i33.i = shl nuw i32 %or6.i.i55.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096000, i32 %shl.i.i)
  %cmp.i = icmp sgt i32 %shl.i.i, 4096000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096000, i32 %shl.i33.i)
  %cmp13.i = icmp sgt i32 %shl.i33.i, 4096000
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end4.i
  %shl.i.i.i.i = ashr exact i32 %shl.i.i, 1
  %shl.i44.i.i.i = ashr exact i32 %shl.i33.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end24.i.i.for.body.i.i_crit_edge, %if.then14.i
  %coeffs.addr.044.i.i = phi ptr [ @lux_coeff, %if.then14.i ], [ %incdec.ptr.i.i, %if.end24.i.i.for.body.i.i_crit_edge ]
  %output.043.i.i = phi i32 [ 0, %if.then14.i ], [ %output.1.i.i, %if.end24.i.i.for.body.i.i_crit_edge ]
  %counter.042.i.i = phi i8 [ 0, %if.then14.i ], [ %inc.i.i, %if.end24.i.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %coeffs.addr.044.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %coeffs.addr.044.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp4.i.i = icmp slt i16 %36, 0
  %..i.i = select i1 %cmp4.i.i, i8 -1, i8 1
  %37 = trunc i16 %36 to i8
  %38 = lshr i8 %37, 4
  %conv8.i.i = and i8 %38, 7
  %conv12.i.i = and i8 %37, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i.i)
  %cmp14.i.i = icmp eq i8 %conv8.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12.i.i)
  %cmp17.i.i = icmp eq i8 %conv12.i.i, 0
  %or.cond.i.i = select i1 %cmp14.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then19.i.i, label %if.else22.i.i

if.then19.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i.i = sext i8 %..i.i to i32
  %mag.i.i = getelementptr inbounds %struct.si1133_coeff, ptr %coeffs.addr.044.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %mag.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mag.i.i, align 2
  %conv21.i.i = zext i16 %40 to i32
  %mul.i.i = shl nsw i32 %conv20.i.i, 12
  %shl.i56.i = mul nsw i32 %mul.i.i, %conv21.i.i
  br label %if.end24.i.i

if.else22.i.i:                                    ; preds = %for.body.i.i
  %41 = xor i16 %36, -1
  %42 = lshr i16 %41, 8
  %43 = trunc i16 %42 to i8
  %sub.i.i.i = xor i8 %43, -1
  br i1 %cmp14.i.i, label %if.else22.i.i.if.end14.i.i.i_crit_edge, label %if.then.i.i.i

if.else22.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i.i

if.then.i.i.i:                                    ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mag.i.i.i = getelementptr inbounds %struct.si1133_coeff, ptr %coeffs.addr.044.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %mag.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mag.i.i.i, align 2
  %conv1.i.i.i.i = zext i16 %45 to i32
  %div.i.i.i.i = sdiv i32 %shl.i.i.i.i, %conv1.i.i.i.i
  %conv24.i.i.i.i = zext i8 %sub.i.i.i to i32
  %shl3.i.i.i.i = shl i32 %div.i.i.i.i, %conv24.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv8.i.i)
  %cmp11.not.i.i.i = icmp eq i8 %conv8.i.i, 1
  %spec.select.i.i.i = select i1 %cmp11.not.i.i.i, i32 1, i32 %shl3.i.i.i.i
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then.i.i.i, %if.else22.i.i.if.end14.i.i.i_crit_edge
  %x1.0.i.i.i = phi i32 [ 1, %if.else22.i.i.if.end14.i.i.i_crit_edge ], [ %shl3.i.i.i.i, %if.then.i.i.i ]
  %x2.0.i.i.i = phi i32 [ 1, %if.else22.i.i.if.end14.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  br i1 %cmp17.i.i, label %if.end14.i.i.i.si1133_calculate_output.exit.i.i_crit_edge, label %if.then18.i.i.i

if.end14.i.i.i.si1133_calculate_output.exit.i.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_calculate_output.exit.i.i

if.then18.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mag19.i.i.i = getelementptr inbounds %struct.si1133_coeff, ptr %coeffs.addr.044.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %mag19.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mag19.i.i.i, align 2
  %conv1.i45.i.i.i = zext i16 %47 to i32
  %div.i46.i.i.i = sdiv i32 %shl.i44.i.i.i, %conv1.i45.i.i.i
  %conv24.i47.i.i.i = zext i8 %sub.i.i.i to i32
  %shl3.i48.i.i.i = shl i32 %div.i46.i.i.i, %conv24.i47.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv12.i.i)
  %cmp22.not.i.i.i = icmp eq i8 %conv12.i.i, 1
  %spec.select42.i.i.i = select i1 %cmp22.not.i.i.i, i32 1, i32 %shl3.i48.i.i.i
  br label %si1133_calculate_output.exit.i.i

si1133_calculate_output.exit.i.i:                 ; preds = %if.then18.i.i.i, %if.end14.i.i.i.si1133_calculate_output.exit.i.i_crit_edge
  %y1.0.i.i.i = phi i32 [ 1, %if.end14.i.i.i.si1133_calculate_output.exit.i.i_crit_edge ], [ %shl3.i48.i.i.i, %if.then18.i.i.i ]
  %y2.0.i.i.i = phi i32 [ 1, %if.end14.i.i.i.si1133_calculate_output.exit.i.i_crit_edge ], [ %spec.select42.i.i.i, %if.then18.i.i.i ]
  %conv27.i.i.i = sext i8 %..i.i to i32
  %mul.i.i.i = mul i32 %x1.0.i.i.i, %conv27.i.i.i
  %mul28.i.i.i = mul i32 %mul.i.i.i, %x2.0.i.i.i
  %mul29.i.i.i = mul i32 %mul28.i.i.i, %y1.0.i.i.i
  %mul30.i.i.i = mul i32 %mul29.i.i.i, %y2.0.i.i.i
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %si1133_calculate_output.exit.i.i, %if.then19.i.i
  %shl.pn.i.i = phi i32 [ %shl.i56.i, %if.then19.i.i ], [ %mul30.i.i.i, %si1133_calculate_output.exit.i.i ]
  %output.1.i.i = add i32 %shl.pn.i.i, %output.043.i.i
  %incdec.ptr.i.i = getelementptr %struct.si1133_coeff, ptr %coeffs.addr.044.i.i, i32 1
  %inc.i.i = add nuw nsw i8 %counter.042.i.i, 1
  %cmp.i57.i = icmp ult i8 %counter.042.i.i, 3
  br i1 %cmp.i57.i, label %if.end24.i.i.for.body.i.i_crit_edge, label %if.end24.i.i..loopexit_crit_edge

if.end24.i.i..loopexit_crit_edge:                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit

if.end24.i.i.for.body.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.else.i:                                        ; preds = %if.end4.i
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %10, align 1
  %conv2.i.i41.i = zext i8 %49 to i32
  %shl3.i.i42.i = shl nuw nsw i32 %conv2.i.i41.i, 8
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %9, align 1
  %conv.i.i38.i = zext i8 %51 to i32
  %shl.i.i39.i = shl nuw nsw i32 %conv.i.i38.i, 16
  %or.i.i43.i = or i32 %shl.i.i39.i, %shl3.i.i42.i
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %11, align 1
  %conv5.i.i45.i = zext i8 %53 to i32
  %or6.i.i46.i = or i32 %or.i.i43.i, %conv5.i.i45.i
  %shl.i.i.i58.i = shl i32 %or6.i.i46.i, 15
  %shl.i44.i.i59.i = shl i32 %or6.i.i55.i, 15
  br label %for.body.i70.i

for.body.i70.i:                                   ; preds = %if.end24.i111.i.for.body.i70.i_crit_edge, %if.else.i
  %coeffs.addr.044.i60.i = phi ptr [ getelementptr inbounds (%struct.si1133_lux_coeff, ptr @lux_coeff, i32 0, i32 1), %if.else.i ], [ %incdec.ptr.i108.i, %if.end24.i111.i.for.body.i70.i_crit_edge ]
  %output.043.i61.i = phi i32 [ 0, %if.else.i ], [ %output.1.i107.i, %if.end24.i111.i.for.body.i70.i_crit_edge ]
  %counter.042.i62.i = phi i8 [ 0, %if.else.i ], [ %inc.i109.i, %if.end24.i111.i.for.body.i70.i_crit_edge ]
  %54 = ptrtoint ptr %coeffs.addr.044.i60.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %coeffs.addr.044.i60.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp4.i63.i = icmp slt i16 %55, 0
  %..i64.i = select i1 %cmp4.i63.i, i8 -1, i8 1
  %56 = trunc i16 %55 to i8
  %57 = lshr i8 %56, 4
  %conv8.i65.i = and i8 %57, 7
  %conv12.i66.i = and i8 %56, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8.i65.i)
  %cmp14.i67.i = icmp eq i8 %conv8.i65.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12.i66.i)
  %cmp17.i68.i = icmp eq i8 %conv12.i66.i, 0
  %or.cond.i69.i = select i1 %cmp14.i67.i, i1 %cmp17.i68.i, i1 false
  br i1 %or.cond.i69.i, label %if.then19.i76.i, label %if.else22.i78.i

if.then19.i76.i:                                  ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i71.i = sext i8 %..i64.i to i32
  %mag.i72.i = getelementptr inbounds %struct.si1133_coeff, ptr %coeffs.addr.044.i60.i, i32 0, i32 1
  %58 = ptrtoint ptr %mag.i72.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mag.i72.i, align 2
  %conv21.i73.i = zext i16 %59 to i32
  %mul.i74.i = shl nsw i32 %conv20.i71.i, 12
  %shl.i75.i = mul nsw i32 %mul.i74.i, %conv21.i73.i
  br label %if.end24.i111.i

if.else22.i78.i:                                  ; preds = %for.body.i70.i
  %60 = xor i16 %55, -1
  %61 = lshr i16 %60, 8
  %62 = trunc i16 %61 to i8
  %sub.i.i77.i = xor i8 %62, -1
  br i1 %cmp14.i67.i, label %if.else22.i78.i.if.end14.i.i89.i_crit_edge, label %if.then.i.i86.i

if.else22.i78.i.if.end14.i.i89.i_crit_edge:       ; preds = %if.else22.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i89.i

if.then.i.i86.i:                                  ; preds = %if.else22.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  %mag.i.i79.i = getelementptr inbounds %struct.si1133_coeff, ptr %coeffs.addr.044.i60.i, i32 0, i32 1
  %63 = ptrtoint ptr %mag.i.i79.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %mag.i.i79.i, align 2
  %conv1.i.i.i80.i = zext i16 %64 to i32
  %div.i.i.i81.i = sdiv i32 %shl.i.i.i58.i, %conv1.i.i.i80.i
  %conv24.i.i.i82.i = zext i8 %sub.i.i77.i to i32
  %shl3.i.i.i83.i = shl i32 %div.i.i.i81.i, %conv24.i.i.i82.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv8.i65.i)
  %cmp11.not.i.i84.i = icmp eq i8 %conv8.i65.i, 1
  %spec.select.i.i85.i = select i1 %cmp11.not.i.i84.i, i32 1, i32 %shl3.i.i.i83.i
  br label %if.end14.i.i89.i

if.end14.i.i89.i:                                 ; preds = %if.then.i.i86.i, %if.else22.i78.i.if.end14.i.i89.i_crit_edge
  %x1.0.i.i87.i = phi i32 [ 1, %if.else22.i78.i.if.end14.i.i89.i_crit_edge ], [ %shl3.i.i.i83.i, %if.then.i.i86.i ]
  %x2.0.i.i88.i = phi i32 [ 1, %if.else22.i78.i.if.end14.i.i89.i_crit_edge ], [ %spec.select.i.i85.i, %if.then.i.i86.i ]
  br i1 %cmp17.i68.i, label %if.end14.i.i89.i.si1133_calculate_output.exit.i105.i_crit_edge, label %if.then18.i.i97.i

if.end14.i.i89.i.si1133_calculate_output.exit.i105.i_crit_edge: ; preds = %if.end14.i.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_calculate_output.exit.i105.i

if.then18.i.i97.i:                                ; preds = %if.end14.i.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %mag19.i.i90.i = getelementptr inbounds %struct.si1133_coeff, ptr %coeffs.addr.044.i60.i, i32 0, i32 1
  %65 = ptrtoint ptr %mag19.i.i90.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %mag19.i.i90.i, align 2
  %conv1.i45.i.i91.i = zext i16 %66 to i32
  %div.i46.i.i92.i = sdiv i32 %shl.i44.i.i59.i, %conv1.i45.i.i91.i
  %conv24.i47.i.i93.i = zext i8 %sub.i.i77.i to i32
  %shl3.i48.i.i94.i = shl i32 %div.i46.i.i92.i, %conv24.i47.i.i93.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv12.i66.i)
  %cmp22.not.i.i95.i = icmp eq i8 %conv12.i66.i, 1
  %spec.select42.i.i96.i = select i1 %cmp22.not.i.i95.i, i32 1, i32 %shl3.i48.i.i94.i
  br label %si1133_calculate_output.exit.i105.i

si1133_calculate_output.exit.i105.i:              ; preds = %if.then18.i.i97.i, %if.end14.i.i89.i.si1133_calculate_output.exit.i105.i_crit_edge
  %y1.0.i.i98.i = phi i32 [ 1, %if.end14.i.i89.i.si1133_calculate_output.exit.i105.i_crit_edge ], [ %shl3.i48.i.i94.i, %if.then18.i.i97.i ]
  %y2.0.i.i99.i = phi i32 [ 1, %if.end14.i.i89.i.si1133_calculate_output.exit.i105.i_crit_edge ], [ %spec.select42.i.i96.i, %if.then18.i.i97.i ]
  %conv27.i.i100.i = sext i8 %..i64.i to i32
  %mul.i.i101.i = mul i32 %x1.0.i.i87.i, %conv27.i.i100.i
  %mul28.i.i102.i = mul i32 %mul.i.i101.i, %x2.0.i.i88.i
  %mul29.i.i103.i = mul i32 %mul28.i.i102.i, %y1.0.i.i98.i
  %mul30.i.i104.i = mul i32 %mul29.i.i103.i, %y2.0.i.i99.i
  br label %if.end24.i111.i

if.end24.i111.i:                                  ; preds = %si1133_calculate_output.exit.i105.i, %if.then19.i76.i
  %shl.pn.i106.i = phi i32 [ %shl.i75.i, %if.then19.i76.i ], [ %mul30.i.i104.i, %si1133_calculate_output.exit.i105.i ]
  %output.1.i107.i = add i32 %shl.pn.i106.i, %output.043.i61.i
  %incdec.ptr.i108.i = getelementptr %struct.si1133_coeff, ptr %coeffs.addr.044.i60.i, i32 1
  %inc.i109.i = add nuw nsw i8 %counter.042.i62.i, 1
  %cmp.i110.i = icmp ult i8 %counter.042.i62.i, 8
  br i1 %cmp.i110.i, label %if.end24.i111.i.for.body.i70.i_crit_edge, label %if.end24.i111.i..loopexit_crit_edge

if.end24.i111.i..loopexit_crit_edge:              ; preds = %if.end24.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit

if.end24.i111.i.for.body.i70.i_crit_edge:         ; preds = %if.end24.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i70.i

si1133_get_lux.exit.thread:                       ; preds = %si1133_bulk_read.exit.i.si1133_get_lux.exit.thread_crit_edge, %if.end.i.si1133_get_lux.exit.thread_crit_edge, %si1133_set_chlist.exit.i.si1133_get_lux.exit.thread_crit_edge, %if.end.i.i.si1133_get_lux.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i35.i, %if.end.i.si1133_get_lux.exit.thread_crit_edge ], [ %call.i.i.i, %if.end.i.i.si1133_get_lux.exit.thread_crit_edge ], [ %call2.i.i, %si1133_bulk_read.exit.i.si1133_get_lux.exit.thread_crit_edge ], [ %call2.i.i.i, %si1133_set_chlist.exit.i.si1133_get_lux.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buffer.i) #6
  br label %cleanup

.loopexit:                                        ; preds = %if.end24.i111.i..loopexit_crit_edge, %if.end24.i.i..loopexit_crit_edge
  %output.1.i107.lcssa.sink.i = phi i32 [ %output.1.i.i, %if.end24.i.i..loopexit_crit_edge ], [ %output.1.i107.i, %if.end24.i111.i..loopexit_crit_edge ]
  %67 = call i32 @llvm.abs.i32(i32 %output.1.i107.lcssa.sink.i, i1 false) #6
  %shr.i = ashr i32 %67, 12
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shr.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buffer.i) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %69 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chan, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %70, label %sw.bb4.cleanup_crit_edge [
    i32 7, label %sw.bb4.sw.bb6_crit_edge
    i32 27, label %sw.bb4.sw.bb6_crit_edge96
  ]

sw.bb4.sw.bb6_crit_edge96:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.bb4.sw.bb6_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb4.sw.bb6_crit_edge, %sw.bb4.sw.bb6_crit_edge96
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer.i64) #6
  %72 = ptrtoint ptr %buffer.i64 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %buffer.i64, align 1, !annotation !147
  %73 = getelementptr inbounds [3 x i8], ptr %buffer.i64, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %73, align 1, !annotation !147
  %75 = getelementptr inbounds [3 x i8], ptr %buffer.i64, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %75, align 1, !annotation !147
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %77 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %78 to i8
  %adc_config.i.i = getelementptr %struct.si1133_data, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %adc_config.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %adc_config.i.i, align 1
  %and1.i.i = and i8 %80, %conv.i
  call void @__sanitizer_cov_trace_cmp1(i8 %and1.i.i, i8 %conv.i)
  %cmp.i.i65 = icmp eq i8 %and1.i.i, %conv.i
  br i1 %cmp.i.i65, label %sw.bb6.if.end.i71_crit_edge, label %if.end.i.i66

sw.bb6.if.end.i71_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i71

if.end.i.i66:                                     ; preds = %sw.bb6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc_config.i.i.i) #6
  %81 = ptrtoint ptr %adc_config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %adc_config.i.i.i, align 4, !annotation !147
  %call.i.i.i.i = tail call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext 66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %si1133_param_query.exit.i.i.i, label %if.end.i.i66.si1133_set_adcmux.exit.thread32.i_crit_edge

if.end.i.i66.si1133_set_adcmux.exit.thread32.i_crit_edge: ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_set_adcmux.exit.thread32.i

si1133_param_query.exit.i.i.i:                    ; preds = %if.end.i.i66
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call2.i.i.i.i = call i32 @regmap_read(ptr noundef %83, i32 noundef 16, ptr noundef nonnull %adc_config.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool.not.i.i.i67 = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i67, label %if.end.i.i.i, label %si1133_param_query.exit.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge

si1133_param_query.exit.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge: ; preds = %si1133_param_query.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_set_adcmux.exit.thread32.i

if.end.i.i.i:                                     ; preds = %si1133_param_query.exit.i.i.i
  %84 = ptrtoint ptr %adc_config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %adc_config.i.i.i, align 4
  %and.i.i.i = and i32 %85, -32
  %conv3.i.i.i = and i32 %78, 255
  %or.i.i.i68 = or i32 %and.i.i.i, %conv3.i.i.i
  store i32 %or.i.i.i68, ptr %adc_config.i.i.i, align 4
  %conv5.i.i.i69 = trunc i32 %or.i.i.i68 to i8
  %conv2.i.i.i.i = and i32 %or.i.i.i68, 255
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call.i.i.i.i.i = call i32 @regmap_write(ptr noundef %87, i32 noundef 10, i32 noundef %conv2.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %si1133_param_set.exit.i.i.i.i, label %if.end.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge

if.end.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_set_adcmux.exit.thread32.i

si1133_param_set.exit.i.i.i.i:                    ; preds = %if.end.i.i.i
  %call2.i.i.i.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %si1133_set_adcmux.exit.i, label %si1133_param_set.exit.i.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge

si1133_param_set.exit.i.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge: ; preds = %si1133_param_set.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_set_adcmux.exit.thread32.i

si1133_set_adcmux.exit.thread32.i:                ; preds = %si1133_param_set.exit.i.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge, %if.end.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge, %si1133_param_query.exit.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge, %if.end.i.i66.si1133_set_adcmux.exit.thread32.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ %call.i.i.i.i, %if.end.i.i66.si1133_set_adcmux.exit.thread32.i_crit_edge ], [ %call.i.i.i.i.i, %if.end.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge ], [ %call2.i.i.i.i.i, %si1133_param_set.exit.i.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge ], [ %call2.i.i.i.i, %si1133_param_query.exit.i.i.i.si1133_set_adcmux.exit.thread32.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_config.i.i.i) #6
  br label %si1133_measure.exit.thread

si1133_set_adcmux.exit.i:                         ; preds = %si1133_param_set.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %adc_config.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv5.i.i.i69, ptr %adc_config.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_config.i.i.i) #6
  br label %if.end.i71

if.end.i71:                                       ; preds = %si1133_set_adcmux.exit.i, %sw.bb6.if.end.i71_crit_edge
  %scan_mask1.i.i70 = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 4
  %89 = ptrtoint ptr %scan_mask1.i.i70 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %scan_mask1.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp.i20.i = icmp eq i8 %90, 1
  br i1 %cmp.i20.i, label %if.end.i71.if.end4.i77_crit_edge, label %if.end.i22.i

if.end.i71.if.end4.i77_crit_edge:                 ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i77

if.end.i22.i:                                     ; preds = %if.end.i71
  %91 = ptrtoint ptr %scan_mask1.i.i70 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %scan_mask1.i.i70, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %call.i.i.i72 = call i32 @regmap_write(ptr noundef %93, i32 noundef 10, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72)
  %tobool.not.i.i21.i = icmp eq i32 %call.i.i.i72, 0
  br i1 %tobool.not.i.i21.i, label %si1133_set_chlist.exit.i75, label %if.end.i22.i.si1133_measure.exit.thread_crit_edge

if.end.i22.i.si1133_measure.exit.thread_crit_edge: ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_measure.exit.thread

si1133_set_chlist.exit.i75:                       ; preds = %if.end.i22.i
  %call2.i.i.i73 = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i73)
  %tobool2.not.i74 = icmp eq i32 %call2.i.i.i73, 0
  br i1 %tobool2.not.i74, label %si1133_set_chlist.exit.i75.if.end4.i77_crit_edge, label %si1133_set_chlist.exit.i75.si1133_measure.exit.thread_crit_edge

si1133_set_chlist.exit.i75.si1133_measure.exit.thread_crit_edge: ; preds = %si1133_set_chlist.exit.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_measure.exit.thread

si1133_set_chlist.exit.i75.if.end4.i77_crit_edge: ; preds = %si1133_set_chlist.exit.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i77

if.end4.i77:                                      ; preds = %si1133_set_chlist.exit.i75.if.end4.i77_crit_edge, %if.end.i71.if.end4.i77_crit_edge
  %call.i.i25.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %tobool.not.i.i76 = icmp eq i32 %call.i.i25.i, 0
  br i1 %tobool.not.i.i76, label %si1133_bulk_read.exit.i79, label %if.end4.i77.si1133_measure.exit.thread_crit_edge

if.end4.i77.si1133_measure.exit.thread_crit_edge: ; preds = %if.end4.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_measure.exit.thread

si1133_bulk_read.exit.i79:                        ; preds = %if.end4.i77
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call2.i.i78 = call i32 @regmap_bulk_read(ptr noundef %95, i32 noundef 19, ptr noundef nonnull %buffer.i64, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i78)
  %tobool6.not.i = icmp eq i32 %call2.i.i78, 0
  br i1 %tobool6.not.i, label %96, label %si1133_bulk_read.exit.i79.si1133_measure.exit.thread_crit_edge

si1133_bulk_read.exit.i79.si1133_measure.exit.thread_crit_edge: ; preds = %si1133_bulk_read.exit.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_measure.exit.thread

si1133_measure.exit.thread:                       ; preds = %si1133_bulk_read.exit.i79.si1133_measure.exit.thread_crit_edge, %if.end4.i77.si1133_measure.exit.thread_crit_edge, %si1133_set_chlist.exit.i75.si1133_measure.exit.thread_crit_edge, %if.end.i22.i.si1133_measure.exit.thread_crit_edge, %si1133_set_adcmux.exit.thread32.i
  %retval.0.i86.ph = phi i32 [ %call.i.i25.i, %if.end4.i77.si1133_measure.exit.thread_crit_edge ], [ %call.i.i.i72, %if.end.i22.i.si1133_measure.exit.thread_crit_edge ], [ %retval.0.i.i.ph.i, %si1133_set_adcmux.exit.thread32.i ], [ %call2.i.i78, %si1133_bulk_read.exit.i79.si1133_measure.exit.thread_crit_edge ], [ %call2.i.i.i73, %si1133_set_chlist.exit.i75.si1133_measure.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i64) #6
  br label %cleanup

96:                                               ; preds = %si1133_bulk_read.exit.i79
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %buffer.i64 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %buffer.i64, align 1
  %conv.i.i.i80 = zext i8 %98 to i32
  %shl.i.i.i81 = shl nuw nsw i32 %conv.i.i.i80, 16
  %99 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %73, align 1
  %conv2.i.i.i82 = zext i8 %100 to i32
  %shl3.i.i.i83 = shl nuw nsw i32 %conv2.i.i.i82, 8
  %or.i.i28.i = or i32 %shl3.i.i.i83, %shl.i.i.i81
  %101 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %75, align 1
  %conv5.i.i29.i = zext i8 %102 to i32
  %or6.i.i.i84 = or i32 %or.i.i28.i, %conv5.i.i29.i
  %shl.i.i85 = shl nuw i32 %or6.i.i.i84, 8
  %shr.i.i = ashr exact i32 %shl.i.i85, 8
  %103 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %shr.i.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer.i64) #6
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %104 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %chan, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %105, label %sw.bb12.cleanup_crit_edge [
    i32 7, label %sw.bb12.sw.bb14_crit_edge
    i32 27, label %sw.bb12.sw.bb14_crit_edge97
  ]

sw.bb12.sw.bb14_crit_edge97:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.bb12.sw.bb14_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb12.sw.bb14_crit_edge, %sw.bb12.sw.bb14_crit_edge97
  %107 = and i8 %3, 15
  %idxprom = zext i8 %107 to i32
  %arrayidx16 = getelementptr [12 x [2 x i32]], ptr @si1133_int_time_table, i32 0, i32 %idxprom
  %108 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx16, align 4
  %110 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %val, align 4
  %arrayidx20 = getelementptr [12 x [2 x i32]], ptr @si1133_int_time_table, i32 0, i32 %idxprom, i32 1
  %111 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx20, align 4
  %113 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %val2, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %114 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %chan, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %115, label %sw.bb22.cleanup_crit_edge [
    i32 7, label %sw.bb22.sw.bb24_crit_edge
    i32 27, label %sw.bb22.sw.bb24_crit_edge98
  ]

sw.bb22.sw.bb24_crit_edge98:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

sw.bb22.sw.bb24_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb22.sw.bb24_crit_edge, %sw.bb22.sw.bb24_crit_edge98
  %117 = lshr i8 %3, 4
  %118 = and i8 %117, 7
  %conv30 = zext i8 %118 to i32
  %shl = shl nuw nsw i32 1, %conv30
  %119 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %shl, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %120 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %chan, align 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %121, label %sw.bb32.cleanup_crit_edge [
    i32 7, label %sw.bb32.sw.bb34_crit_edge
    i32 27, label %sw.bb32.sw.bb34_crit_edge99
  ]

sw.bb32.sw.bb34_crit_edge99:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb34

sw.bb32.sw.bb34_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb34

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb34:                                          ; preds = %sw.bb32.sw.bb34_crit_edge, %sw.bb32.sw.bb34_crit_edge99
  %123 = lshr i8 %3, 7
  %conv38 = zext i8 %123 to i32
  %124 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv38, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb34, %sw.bb32.cleanup_crit_edge, %sw.bb24, %sw.bb22.cleanup_crit_edge, %sw.bb14, %sw.bb12.cleanup_crit_edge, %96, %si1133_measure.exit.thread, %sw.bb4.cleanup_crit_edge, %.loopexit, %si1133_get_lux.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb34 ], [ 1, %sw.bb24 ], [ 2, %sw.bb14 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %sw.bb32.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %.loopexit ], [ %retval.0.i.ph, %si1133_get_lux.exit.thread ], [ 1, %96 ], [ %retval.0.i86.ph, %si1133_measure.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1133_write_raw(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_sens.i37 = alloca i32, align 4
  %adc_sens.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 18, label %sw.bb4
    i32 15, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 7, label %sw.bb.sw.bb1_crit_edge
    i32 27, label %sw.bb.sw.bb1_crit_edge59
  ]

sw.bb.sw.bb1_crit_edge59:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge59
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp12.not.i = icmp sgt i32 %val, 2
  br i1 %cmp12.not.i, label %for.cond.1.i, label %sw.bb1.si1133_scale_to_swgain.exit_crit_edge

sw.bb1.si1133_scale_to_swgain.exit_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_scale_to_swgain.exit

for.cond.1.i:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val)
  %cmp12.not.1.not.i = icmp eq i32 %val, 3
  br i1 %cmp12.not.1.not.i, label %for.cond.1.i.si1133_scale_to_swgain.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.si1133_scale_to_swgain.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_scale_to_swgain.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %val)
  %cmp12.not.2.i = icmp ugt i32 %val, 6
  br i1 %cmp12.not.2.i, label %for.cond.3.i, label %for.cond.2.i.si1133_scale_to_swgain.exit_crit_edge

for.cond.2.i.si1133_scale_to_swgain.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_scale_to_swgain.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %val)
  %cmp12.not.3.i = icmp ugt i32 %val, 12
  br i1 %cmp12.not.3.i, label %for.cond.4.i, label %for.cond.3.i.si1133_scale_to_swgain.exit_crit_edge

for.cond.3.i.si1133_scale_to_swgain.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_scale_to_swgain.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %val)
  %cmp12.not.4.i = icmp ugt i32 %val, 24
  br i1 %cmp12.not.4.i, label %for.cond.5.i, label %for.cond.4.i.si1133_scale_to_swgain.exit_crit_edge

for.cond.4.i.si1133_scale_to_swgain.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_scale_to_swgain.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %val)
  %cmp12.not.5.i = icmp ugt i32 %val, 48
  br i1 %cmp12.not.5.i, label %for.cond.6.i, label %for.cond.5.i.si1133_scale_to_swgain.exit_crit_edge

for.cond.5.i.si1133_scale_to_swgain.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_scale_to_swgain.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %val)
  %cmp12.not.6.i = icmp ugt i32 %val, 96
  %spec.select.i = select i1 %cmp12.not.6.i, i32 112, i32 96
  br label %si1133_scale_to_swgain.exit

si1133_scale_to_swgain.exit:                      ; preds = %for.cond.6.i, %for.cond.5.i.si1133_scale_to_swgain.exit_crit_edge, %for.cond.4.i.si1133_scale_to_swgain.exit_crit_edge, %for.cond.3.i.si1133_scale_to_swgain.exit_crit_edge, %for.cond.2.i.si1133_scale_to_swgain.exit_crit_edge, %for.cond.1.i.si1133_scale_to_swgain.exit_crit_edge, %sw.bb1.si1133_scale_to_swgain.exit_crit_edge
  %__fc_i.0.lcssa.i = phi i32 [ 0, %sw.bb1.si1133_scale_to_swgain.exit_crit_edge ], [ 16, %for.cond.1.i.si1133_scale_to_swgain.exit_crit_edge ], [ 32, %for.cond.2.i.si1133_scale_to_swgain.exit_crit_edge ], [ 48, %for.cond.3.i.si1133_scale_to_swgain.exit_crit_edge ], [ 64, %for.cond.4.i.si1133_scale_to_swgain.exit_crit_edge ], [ 80, %for.cond.5.i.si1133_scale_to_swgain.exit_crit_edge ], [ %spec.select.i, %for.cond.6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp20.not.i = icmp eq i32 %val2, 0
  %retval.0.i = select i1 %cmp20.not.i, i32 %__fc_i.0.lcssa.i, i32 3744
  br i1 %cmp20.not.i, label %if.end, label %si1133_scale_to_swgain.exit.cleanup_crit_edge

si1133_scale_to_swgain.exit.cleanup_crit_edge:    ; preds = %si1133_scale_to_swgain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %si1133_scale_to_swgain.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc_sens.i) #6
  %6 = ptrtoint ptr %adc_sens.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %adc_sens.i, align 4, !annotation !147
  %call.i.i = tail call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext 67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %si1133_param_query.exit.i, label %if.end.si1133_update_adcsens.exit_crit_edge

if.end.si1133_update_adcsens.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit

si1133_param_query.exit.i:                        ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %adc_sens.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %si1133_param_query.exit.i.si1133_update_adcsens.exit_crit_edge

si1133_param_query.exit.i.si1133_update_adcsens.exit_crit_edge: ; preds = %si1133_param_query.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit

if.end.i:                                         ; preds = %si1133_param_query.exit.i
  %9 = ptrtoint ptr %adc_sens.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %adc_sens.i, align 4
  %and.i = and i32 %10, -113
  %or.i = or i32 %and.i, %retval.0.i
  store i32 %or.i, ptr %adc_sens.i, align 4
  %conv3.i = trunc i32 %or.i to i8
  %conv2.i.i = and i32 %or.i, 255
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 10, i32 noundef %conv2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %si1133_param_set.exit.i.i, label %if.end.i.si1133_update_adcsens.exit_crit_edge

if.end.i.si1133_update_adcsens.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit

si1133_param_set.exit.i.i:                        ; preds = %if.end.i
  %call2.i.i.i = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -125) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i8.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i8.i, label %if.end.i9.i, label %si1133_param_set.exit.i.i.si1133_update_adcsens.exit_crit_edge

si1133_param_set.exit.i.i.si1133_update_adcsens.exit_crit_edge: ; preds = %si1133_param_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit

if.end.i9.i:                                      ; preds = %si1133_param_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.si1133_data, ptr %1, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.i, ptr %arrayidx.i.i, align 1
  br label %si1133_update_adcsens.exit

si1133_update_adcsens.exit:                       ; preds = %if.end.i9.i, %si1133_param_set.exit.i.i.si1133_update_adcsens.exit_crit_edge, %if.end.i.si1133_update_adcsens.exit_crit_edge, %si1133_param_query.exit.i.si1133_update_adcsens.exit_crit_edge, %if.end.si1133_update_adcsens.exit_crit_edge
  %retval.0.i30 = phi i32 [ %call2.i.i, %si1133_param_query.exit.i.si1133_update_adcsens.exit_crit_edge ], [ 0, %if.end.i9.i ], [ %call2.i.i.i, %si1133_param_set.exit.i.i.si1133_update_adcsens.exit_crit_edge ], [ %call.i.i.i, %if.end.i.si1133_update_adcsens.exit_crit_edge ], [ %call.i.i, %if.end.si1133_update_adcsens.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_sens.i) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %14 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %val, label %sw.bb4.cleanup_crit_edge [
    i32 0, label %land.lhs.true.i.i
    i32 1, label %land.lhs.true.6.i.i
    i32 3, label %land.lhs.true.7.i.i
    i32 6, label %land.lhs.true.8.i.i
    i32 12, label %land.lhs.true.9.i.i
    i32 25, label %land.lhs.true.10.i.i
    i32 50, label %land.lhs.true.11.i.i
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %sw.bb4
  %15 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %val2, label %land.lhs.true.i.i.cleanup_crit_edge [
    i32 24400, label %land.lhs.true.i.i.if.end.i34_crit_edge
    i32 48800, label %cleanup.fold.split.i.i
    i32 97500, label %cleanup.fold.split18.i.i
    i32 195000, label %cleanup.fold.split19.i.i
    i32 390000, label %cleanup.fold.split20.i.i
    i32 780000, label %cleanup.fold.split21.i.i
  ]

land.lhs.true.i.i.if.end.i34_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.6.i.i:                              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 560000, i32 %val2)
  %cmp5.6.i.i = icmp eq i32 %val2, 560000
  br i1 %cmp5.6.i.i, label %land.lhs.true.6.i.i.if.end.i34_crit_edge, label %land.lhs.true.6.i.i.cleanup_crit_edge

land.lhs.true.6.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.6.i.i.if.end.i34_crit_edge:         ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

land.lhs.true.7.i.i:                              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %val2)
  %cmp5.7.i.i = icmp eq i32 %val2, 120000
  br i1 %cmp5.7.i.i, label %land.lhs.true.7.i.i.if.end.i34_crit_edge, label %land.lhs.true.7.i.i.cleanup_crit_edge

land.lhs.true.7.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.7.i.i.if.end.i34_crit_edge:         ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

land.lhs.true.8.i.i:                              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240000, i32 %val2)
  %cmp5.8.i.i = icmp eq i32 %val2, 240000
  br i1 %cmp5.8.i.i, label %land.lhs.true.8.i.i.if.end.i34_crit_edge, label %land.lhs.true.8.i.i.cleanup_crit_edge

land.lhs.true.8.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.8.i.i.if.end.i34_crit_edge:         ; preds = %land.lhs.true.8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

land.lhs.true.9.i.i:                              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000, i32 %val2)
  %cmp5.9.i.i = icmp eq i32 %val2, 480000
  br i1 %cmp5.9.i.i, label %land.lhs.true.9.i.i.if.end.i34_crit_edge, label %land.lhs.true.9.i.i.cleanup_crit_edge

land.lhs.true.9.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.9.i.i.if.end.i34_crit_edge:         ; preds = %land.lhs.true.9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

land.lhs.true.10.i.i:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.10.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.10.i.i, label %land.lhs.true.10.i.i.if.end.i34_crit_edge, label %land.lhs.true.10.i.i.cleanup_crit_edge

land.lhs.true.10.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.10.i.i.if.end.i34_crit_edge:        ; preds = %land.lhs.true.10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

land.lhs.true.11.i.i:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.11.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.11.i.i, label %land.lhs.true.11.i.i.if.end.i34_crit_edge, label %land.lhs.true.11.i.i.cleanup_crit_edge

land.lhs.true.11.i.i.cleanup_crit_edge:           ; preds = %land.lhs.true.11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.11.i.i.if.end.i34_crit_edge:        ; preds = %land.lhs.true.11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

cleanup.fold.split.i.i:                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

cleanup.fold.split18.i.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

cleanup.fold.split19.i.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

cleanup.fold.split20.i.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

cleanup.fold.split21.i.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

if.end.i34:                                       ; preds = %cleanup.fold.split21.i.i, %cleanup.fold.split20.i.i, %cleanup.fold.split19.i.i, %cleanup.fold.split18.i.i, %cleanup.fold.split.i.i, %land.lhs.true.11.i.i.if.end.i34_crit_edge, %land.lhs.true.10.i.i.if.end.i34_crit_edge, %land.lhs.true.9.i.i.if.end.i34_crit_edge, %land.lhs.true.8.i.i.if.end.i34_crit_edge, %land.lhs.true.7.i.i.if.end.i34_crit_edge, %land.lhs.true.6.i.i.if.end.i34_crit_edge, %land.lhs.true.i.i.if.end.i34_crit_edge
  %retval.0.i.ph.i = phi i8 [ 5, %cleanup.fold.split21.i.i ], [ 4, %cleanup.fold.split20.i.i ], [ 3, %cleanup.fold.split19.i.i ], [ 2, %cleanup.fold.split18.i.i ], [ 1, %cleanup.fold.split.i.i ], [ 11, %land.lhs.true.11.i.i.if.end.i34_crit_edge ], [ 10, %land.lhs.true.10.i.i.if.end.i34_crit_edge ], [ 9, %land.lhs.true.9.i.i.if.end.i34_crit_edge ], [ 8, %land.lhs.true.8.i.i.if.end.i34_crit_edge ], [ 7, %land.lhs.true.7.i.i.if.end.i34_crit_edge ], [ 6, %land.lhs.true.6.i.i.if.end.i34_crit_edge ], [ 0, %land.lhs.true.i.i.if.end.i34_crit_edge ]
  %adc_sens.i31 = getelementptr inbounds %struct.si1133_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %adc_sens.i31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %adc_sens.i31, align 1
  %18 = and i8 %17, -16
  %conv6.i = or i8 %18, %retval.0.i.ph.i
  store i8 %conv6.i, ptr %adc_sens.i31, align 1
  %conv10.i = zext i8 %conv6.i to i32
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i32 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 10, i32 noundef %conv10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.end.i.i, label %if.end.i34.cleanup_crit_edge

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i35 = tail call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -125) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %22, label %sw.bb6.cleanup_crit_edge [
    i32 7, label %sw.bb6.sw.bb8_crit_edge
    i32 27, label %sw.bb6.sw.bb8_crit_edge60
  ]

sw.bb6.sw.bb8_crit_edge60:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

sw.bb6.sw.bb8_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb6.sw.bb8_crit_edge, %sw.bb6.sw.bb8_crit_edge60
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %switch = icmp ult i32 %val, 2
  br i1 %switch, label %if.end14, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %sw.bb8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc_sens.i37) #6
  %24 = ptrtoint ptr %adc_sens.i37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %adc_sens.i37, align 4, !annotation !147
  %call.i.i38 = tail call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext 67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i.i39, label %si1133_param_query.exit.i42, label %if.end14.si1133_update_adcsens.exit58_crit_edge

if.end14.si1133_update_adcsens.exit58_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit58

si1133_param_query.exit.i42:                      ; preds = %if.end14
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call2.i.i40 = call i32 @regmap_read(ptr noundef %26, i32 noundef 16, ptr noundef nonnull %adc_sens.i37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i40)
  %tobool.not.i41 = icmp eq i32 %call2.i.i40, 0
  br i1 %tobool.not.i41, label %if.end.i51, label %si1133_param_query.exit.i42.si1133_update_adcsens.exit58_crit_edge

si1133_param_query.exit.i42.si1133_update_adcsens.exit58_crit_edge: ; preds = %si1133_param_query.exit.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit58

if.end.i51:                                       ; preds = %si1133_param_query.exit.i42
  %27 = ptrtoint ptr %adc_sens.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adc_sens.i37, align 4
  %and.i43 = and i32 %28, -129
  %conv1.i44 = shl nuw nsw i32 %val, 7
  %shl.i45 = and i32 %conv1.i44, 32640
  %or.i46 = or i32 %and.i43, %shl.i45
  store i32 %or.i46, ptr %adc_sens.i37, align 4
  %conv3.i47 = trunc i32 %or.i46 to i8
  %conv2.i.i48 = and i32 %or.i46, 255
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i.i.i49 = call i32 @regmap_write(ptr noundef %30, i32 noundef 10, i32 noundef %conv2.i.i48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i49)
  %tobool.not.i.i.i50 = icmp eq i32 %call.i.i.i49, 0
  br i1 %tobool.not.i.i.i50, label %si1133_param_set.exit.i.i54, label %if.end.i51.si1133_update_adcsens.exit58_crit_edge

if.end.i51.si1133_update_adcsens.exit58_crit_edge: ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit58

si1133_param_set.exit.i.i54:                      ; preds = %if.end.i51
  %call2.i.i.i52 = call fastcc i32 @si1133_command(ptr noundef %1, i8 noundef zeroext -125) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i52)
  %tobool.not.i8.i53 = icmp eq i32 %call2.i.i.i52, 0
  br i1 %tobool.not.i8.i53, label %if.end.i9.i56, label %si1133_param_set.exit.i.i54.si1133_update_adcsens.exit58_crit_edge

si1133_param_set.exit.i.i54.si1133_update_adcsens.exit58_crit_edge: ; preds = %si1133_param_set.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_update_adcsens.exit58

if.end.i9.i56:                                    ; preds = %si1133_param_set.exit.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i55 = getelementptr %struct.si1133_data, ptr %1, i32 0, i32 5, i32 0
  %31 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv3.i47, ptr %arrayidx.i.i55, align 1
  br label %si1133_update_adcsens.exit58

si1133_update_adcsens.exit58:                     ; preds = %if.end.i9.i56, %si1133_param_set.exit.i.i54.si1133_update_adcsens.exit58_crit_edge, %if.end.i51.si1133_update_adcsens.exit58_crit_edge, %si1133_param_query.exit.i42.si1133_update_adcsens.exit58_crit_edge, %if.end14.si1133_update_adcsens.exit58_crit_edge
  %retval.0.i57 = phi i32 [ %call2.i.i40, %si1133_param_query.exit.i42.si1133_update_adcsens.exit58_crit_edge ], [ 0, %if.end.i9.i56 ], [ %call2.i.i.i52, %si1133_param_set.exit.i.i54.si1133_update_adcsens.exit58_crit_edge ], [ %call.i.i.i49, %if.end.i51.si1133_update_adcsens.exit58_crit_edge ], [ %call.i.i38, %if.end14.si1133_update_adcsens.exit58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_sens.i37) #6
  br label %cleanup

cleanup:                                          ; preds = %si1133_update_adcsens.exit58, %sw.bb8.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end.i.i, %if.end.i34.cleanup_crit_edge, %land.lhs.true.11.i.i.cleanup_crit_edge, %land.lhs.true.10.i.i.cleanup_crit_edge, %land.lhs.true.9.i.i.cleanup_crit_edge, %land.lhs.true.8.i.i.cleanup_crit_edge, %land.lhs.true.7.i.i.cleanup_crit_edge, %land.lhs.true.6.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %si1133_update_adcsens.exit, %si1133_scale_to_swgain.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i57, %si1133_update_adcsens.exit58 ], [ %retval.0.i30, %si1133_update_adcsens.exit ], [ -22, %si1133_scale_to_swgain.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.7.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.8.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.9.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.10.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.11.i.i.cleanup_crit_edge ], [ %call2.i.i35, %if.end.i.i ], [ %call.i.i32, %if.end.i34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1133_param_set(ptr noundef %data, i8 noundef zeroext %param, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 10, i32 noundef %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = and i8 %param, 63
  %3 = or i8 %2, -128
  %call2 = tail call fastcc i32 @si1133_command(ptr noundef %data, i8 noundef zeroext %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1133_command(ptr noundef %data, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %resp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.si1133_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp, align 4, !annotation !147
  %mutex = getelementptr inbounds %struct.si1133_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %rsp_seq = getelementptr inbounds %struct.si1133_data, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rsp_seq, align 4
  %add = add i32 %4, 1
  %and = and i32 %add, 15
  %conv = zext i8 %cmd to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 17
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %completion = getelementptr inbounds %struct.si1133_data, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 11, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then10, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.thread:                                    ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call121 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 11, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool.not122 = icmp eq i32 %call121, 0
  br i1 %tobool.not122, label %if.else, label %if.end.thread.do.end_crit_edge

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %call123 = phi i32 [ %call121, %if.end.thread.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %call123) #9
  br label %out

if.then10:                                        ; preds = %if.end
  %call13 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then10.out_crit_edge, label %if.end16

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %if.then10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call18 = call i32 @regmap_read(ptr noundef %11, i32 noundef 17, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.if.end79_crit_edge, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16.if.end79_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.else:                                          ; preds = %if.end.thread
  %call22 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call22, 25000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 425) #6
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call38135 = call i32 @regmap_read(ptr noundef %13, i32 noundef 17, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38135)
  %tobool39.not136 = icmp eq i32 %call38135, 0
  br i1 %tobool39.not136, label %if.else.lor.lhs.false_crit_edge, label %if.else.do.end76_crit_edge

if.else.do.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then58.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resp, align 4
  %and40 = and i32 %15, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and40, i32 %and)
  %cmp41 = icmp ne i32 %and40, %and
  %and44 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or.cond = and i1 %cmp41, %tobool45.not
  br i1 %or.cond, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call49 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call49, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call49, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then58

if.then58:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #6
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call38 = call i32 @regmap_read(ptr noundef %17, i32 noundef 17, ptr noundef nonnull %resp) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then58.lor.lhs.false_crit_edge, label %if.then58.do.end76_crit_edge

if.then58.do.end76_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

if.then58.lor.lhs.false_crit_edge:                ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call55 = call i32 @regmap_read(ptr noundef %19, i32 noundef 17, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool61.not = icmp eq i32 %call55, 0
  br i1 %tobool61.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end76_crit_edge

for.end.do.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp, align 4
  %and62 = and i32 %21, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and62, i32 %and)
  %cmp63 = icmp ne i32 %and62, %and
  %and66 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond140 = and i1 %cmp63, %tobool67.not
  br i1 %or.cond140, label %lor.rhs.do.end76_crit_edge, label %lor.rhs.if.end79_crit_edge

lor.rhs.if.end79_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

lor.rhs.do.end76_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

do.end76:                                         ; preds = %lor.rhs.do.end76_crit_edge, %for.end.do.end76_crit_edge, %if.then58.do.end76_crit_edge, %if.else.do.end76_crit_edge
  %tobool61.not128.ph = phi i32 [ %call38135, %if.else.do.end76_crit_edge ], [ %call55, %for.end.do.end76_crit_edge ], [ -110, %lor.rhs.do.end76_crit_edge ], [ %call38, %if.then58.do.end76_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %tobool61.not128.ph) #9
  br label %out

if.end79:                                         ; preds = %lor.rhs.if.end79_crit_edge, %if.end16.if.end79_crit_edge
  %22 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp, align 4
  %and80 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else85, label %if.then82

if.then82:                                        ; preds = %if.end79
  %and.i = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %24 = icmp ult i32 %and.i, 4
  br i1 %24, label %switch.lookup, label %if.then82.si1133_parse_response_err.exit_crit_edge

if.then82.si1133_parse_response_err.exit_crit_edge: ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %si1133_parse_response_err.exit

switch.lookup:                                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.si1133_command, i32 0, i32 %and.i
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep141 = getelementptr inbounds [4 x i32], ptr @switch.table.si1133_command.54, i32 0, i32 %and.i
  %26 = ptrtoint ptr %switch.gep141 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load142 = load i32, ptr %switch.gep141, align 4
  br label %si1133_parse_response_err.exit

si1133_parse_response_err.exit:                   ; preds = %switch.lookup, %if.then82.si1133_parse_response_err.exit_crit_edge
  %.str.42.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.42, %if.then82.si1133_parse_response_err.exit_crit_edge ]
  %retval.0.i120 = phi i32 [ %switch.load142, %switch.lookup ], [ -22, %if.then82.si1133_parse_response_err.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull %.str.42.sink.i, i32 noundef %conv) #9
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %si1133_parse_response_err.exit.out_crit_edge

si1133_parse_response_err.exit.out_crit_edge:     ; preds = %si1133_parse_response_err.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %si1133_parse_response_err.exit
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rsp_seq, align 4
  br label %out

if.else85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %rsp_seq, align 4
  br label %out

out:                                              ; preds = %if.else85, %if.end.i, %si1133_parse_response_err.exit.out_crit_edge, %do.end76, %if.end16.out_crit_edge, %if.then10.out_crit_edge, %do.end
  %err.1 = phi i32 [ %call123, %do.end ], [ %call18, %if.end16.out_crit_edge ], [ 0, %if.else85 ], [ %tobool61.not128.ph, %do.end76 ], [ -110, %if.then10.out_crit_edge ], [ %retval.0.i120, %si1133_parse_response_err.exit.out_crit_edge ], [ %retval.0.i120, %if.end.i ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1133_chan_set_adcconfig(ptr noundef %data, i8 noundef zeroext %adc, i8 noundef zeroext %adc_config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %adc_config to i32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 10, i32 noundef %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %si1133_param_set.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

si1133_param_set.exit:                            ; preds = %entry
  %mul = shl i8 %adc, 2
  %add = and i8 %mul, 60
  %2 = or i8 %add, -126
  %call2.i = tail call fastcc i32 @si1133_command(ptr noundef %data, i8 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %si1133_param_set.exit.cleanup_crit_edge

si1133_param_set.exit.cleanup_crit_edge:          ; preds = %si1133_param_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %si1133_param_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %adc to i32
  %arrayidx = getelementptr %struct.si1133_data, ptr %data, i32 0, i32 6, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %adc_config, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %si1133_param_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %si1133_param_set.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1133_chan_set_adcsens(ptr noundef %data, i8 noundef zeroext %adc, i8 noundef zeroext %adc_sens) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %adc_sens to i32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 10, i32 noundef %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %si1133_param_set.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

si1133_param_set.exit:                            ; preds = %entry
  %mul = shl i8 %adc, 2
  %add = and i8 %mul, 60
  %2 = or i8 %add, -125
  %call2.i = tail call fastcc i32 @si1133_command(ptr noundef %data, i8 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %si1133_param_set.exit.cleanup_crit_edge

si1133_param_set.exit.cleanup_crit_edge:          ; preds = %si1133_param_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %si1133_param_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %adc to i32
  %arrayidx = getelementptr %struct.si1133_data, ptr %data, i32 0, i32 5, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %adc_sens, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %si1133_param_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2.i, %si1133_param_set.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_si1133__288_1071_si1133_driver_init6, !1, !"__initcall__kmod_si1133__288_1071_si1133_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/si1133.c", i32 1071, i32 1}
!2 = !{ptr @__exitcall_si1133_driver_exit, !1, !"__exitcall_si1133_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/si1133.c", i32 1073, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/si1133.c", i32 1074, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/si1133.c", i32 1075, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/si1133.c", i32 1065, i32 16}
!12 = !{ptr @si1133_driver, !13, !"si1133_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/si1133.c", i32 1063, i32 26}
!14 = !{ptr @si1133_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/si1133.c", i32 1008, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/si1133.c", i32 1011, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @si1133_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @si1133_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @si1133_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/si1133.c", i32 1024, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/si1133.c", i32 1032, i32 3}
!30 = !{ptr @si1133_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @si1133_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/si1133.c", i32 1038, i32 3}
!34 = !{ptr @si1133_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @si1133_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/si1133.c", i32 1049, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @si1133_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @si1133_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @si1133_regmap_config, !45, !"si1133_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/si1133.c", i32 183, i32 35}
!46 = !{ptr @si1133_write_ranges_table, !47, !"si1133_write_ranges_table", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/si1133.c", i32 166, i32 41}
!48 = !{ptr @si1133_reg_ranges, !49, !"si1133_reg_ranges", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/si1133.c", i32 149, i32 34}
!50 = !{ptr @si1133_reg_ro_ranges, !51, !"si1133_reg_ro_ranges", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/si1133.c", i32 157, i32 34}
!52 = !{ptr @si1133_read_ranges_table, !53, !"si1133_read_ranges_table", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/si1133.c", i32 173, i32 41}
!54 = !{ptr @si1133_precious_table, !55, !"si1133_precious_table", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/si1133.c", i32 178, i32 41}
!56 = !{ptr @si1133_precious_ranges, !57, !"si1133_precious_ranges", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/si1133.c", i32 162, i32 34}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/si1133.c", i32 489, i32 18}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/si1133.c", i32 493, i32 18}
!62 = !{ptr @si1133_channels, !63, !"si1133_channels", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/si1133.c", i32 476, i32 35}
!64 = !{ptr @si1133_info, !65, !"si1133_info", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/si1133.c", i32 874, i32 30}
!66 = !{ptr @si1133_attribute_group, !67, !"si1133_attribute_group", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/si1133.c", i32 870, i32 37}
!68 = !{ptr @si1133_attributes, !69, !"si1133_attributes", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/si1133.c", i32 864, i32 26}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/si1133.c", i32 114, i32 8}
!72 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @iio_const_attr_integration_time_available, !71, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/si1133.c", i32 112, i32 8}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @iio_const_attr_scale_available, !75, !"iio_const_attr_scale_available", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/si1133.c", i32 403, i32 3}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @si1133_command._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @si1133_command._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/si1133.c", i32 427, i32 4}
!85 = !{ptr @si1133_command._entry.27, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @si1133_command._entry_ptr.29, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/light/si1133.c", i32 355, i32 3}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @si1133_parse_response_err._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @si1133_parse_response_err._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/si1133.c", i32 358, i32 3}
!94 = !{ptr @si1133_parse_response_err._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @si1133_parse_response_err._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/light/si1133.c", i32 362, i32 3}
!98 = !{ptr @si1133_parse_response_err._entry.35, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @si1133_parse_response_err._entry_ptr.37, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/light/si1133.c", i32 367, i32 3}
!102 = !{ptr @si1133_parse_response_err._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @si1133_parse_response_err._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/light/si1133.c", i32 370, i32 3}
!106 = !{ptr @si1133_parse_response_err._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @si1133_parse_response_err._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @lux_coeff, !109, !"lux_coeff", i1 false, i1 false}
!109 = !{!"../drivers/iio/light/si1133.c", i32 220, i32 38}
!110 = !{ptr @si1133_int_time_table, !111, !"si1133_int_time_table", i1 false, i1 false}
!111 = !{!"../drivers/iio/light/si1133.c", i32 134, i32 18}
!112 = distinct !{null, !113, !"si1133_scale_available", i1 false, i1 false}
!113 = !{!"../drivers/iio/light/si1133.c", i32 109, i32 18}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/light/si1133.c", i32 980, i32 2}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @si1133_validate_ids._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @si1133_validate_ids._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/si1133.c", i32 984, i32 3}
!122 = !{ptr @si1133_validate_ids._entry.47, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @si1133_validate_ids._entry_ptr.49, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/light/si1133.c", i32 338, i32 4}
!126 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @si1133_cmd_reset_sw._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @si1133_cmd_reset_sw._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/light/si1133.c", i32 650, i32 3}
!131 = !{ptr @si1133_threaded_irq_handler._rs, !130, !"_rs", i1 false, i1 false}
!132 = !{ptr @__func__.si1133_threaded_irq_handler, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @si1133_threaded_irq_handler._entry, !130, !"_entry", i1 false, i1 false}
!135 = !{ptr @si1133_threaded_irq_handler._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @si1133_ids, !137, !"si1133_ids", i1 false, i1 false}
!137 = !{!"../drivers/iio/light/si1133.c", i32 1057, i32 35}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
