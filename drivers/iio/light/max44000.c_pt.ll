; ModuleID = '/llk/IR_all_yes/drivers/iio/light/max44000.c_pt.bc'
source_filename = "../drivers/iio/light/max44000.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.87, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.87 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.max44000_data = type { %struct.mutex, ptr, %struct.anon.86 }
%struct.anon.86 = type { [2 x i16], i64 }

@__initcall__kmod_max44000__288_624_max44000_driver_init6 = internal global ptr @max44000_driver_init, section ".initcall6.init", align 4
@max44000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max44000_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max44000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max44000_driver_exit = internal global ptr @max44000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"max44000.author=Crestez Dan Leonard <leonard.crestez@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [68 x i8] c"max44000.description=MAX44000 Ambient and Infrared Proximity Sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"max44000.file=drivers/iio/light/max44000\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"max44000.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max44000\00", [23 x i8] zeroinitializer }, align 32
@max44000_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max44000\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max44000_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max44000_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @max44000_writeable_reg, ptr @max44000_readable_reg, ptr @max44000_volatile_reg, ptr @max44000_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"max44000:537:(&max44000_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@max44000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 539, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regmap_init failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max44000_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/max44000.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max44000_probe._entry_ptr = internal global ptr @max44000_probe._entry, section ".printk_index", align 4
@max44000_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@max44000_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @max44000_attribute_group, ptr @max44000_read_raw, ptr null, ptr null, ptr @max44000_write_raw, ptr null, ptr @max44000_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max44000_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.87 { i8 117, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 262148, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 1, %struct.anon.87 { i8 117, i8 8, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.87 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.87 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.24, ptr null, i8 32 }], [64 x i8] zeroinitializer }, align 32
@max44000_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to write default CFG_RX: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@max44000_probe._entry_ptr.10 = internal global ptr @max44000_probe._entry.8, section ".printk_index", align 4
@max44000_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write init config: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max44000_probe._entry_ptr.13 = internal global ptr @max44000_probe._entry.11, section ".printk_index", align 4
@max44000_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@max44000_probe._entry_ptr.15 = internal global ptr @max44000_probe._entry.14, section ".printk_index", align 4
@max44000_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 587, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read init status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max44000_probe._entry_ptr.18 = internal global ptr @max44000_probe._entry.16, section ".printk_index", align 4
@max44000_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@max44000_probe._entry_ptr.21 = internal global ptr @max44000_probe._entry.19, section ".printk_index", align 4
@max44000_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max44000_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max44000_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_illuminance_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_illuminance_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_illuminance_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @max44000_int_time_avail_str, %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_illuminance_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @max44000_scale_avail_str, %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@max44000_int_time_avail_str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"0.100 0.025 0.00625 0.0015625\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"illuminance_integration_time_available\00", [57 x i8] zeroinitializer }, align 32
@max44000_scale_avail_str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.03125 0.125 0.5 4\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"illuminance_scale_available\00", [36 x i8] zeroinitializer }, align 32
@max44000_alspga_shift = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 4, i32 7], [16 x i8] zeroinitializer }, align 32
@max44000_int_time_avail_ns_array = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100000000, i32 25000000, i32 6250000, i32 1562500], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 18]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 8]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 18]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 18]
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"max44000_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 615, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 617, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"max44000_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 601, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"max44000_regmap_config\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 476, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 537, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 539, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 543, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"max44000_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 405, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"max44000_channels\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 135, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 561, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 572, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 580, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 587, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 594, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"max44000_attribute_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 401, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"max44000_attributes\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 395, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant [54 x i8] c"iio_const_attr_illuminance_integration_time_available\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [43 x i8] c"iio_const_attr_illuminance_scale_available\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"max44000_int_time_avail_str\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 113, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 392, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"max44000_scale_avail_str\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 126, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 393, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [22 x i8] c"max44000_alspga_shift\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 89, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant [33 x i8] c"max44000_int_time_avail_ns_array\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 107, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [32 x i8] c"../drivers/iio/light/max44000.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 163, i32 18 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max44000_driver_exit, ptr @__initcall__kmod_max44000__288_624_max44000_driver_init6, ptr @max44000_driver_exit, ptr @max44000_probe._entry, ptr @max44000_probe._entry.11, ptr @max44000_probe._entry.14, ptr @max44000_probe._entry.16, ptr @max44000_probe._entry.19, ptr @max44000_probe._entry.8, ptr @max44000_probe._entry_ptr, ptr @max44000_probe._entry_ptr.10, ptr @max44000_probe._entry_ptr.13, ptr @max44000_probe._entry_ptr.15, ptr @max44000_probe._entry_ptr.18, ptr @max44000_probe._entry_ptr.21, ptr @max44000_driver, ptr @.str, ptr @max44000_id, ptr @max44000_probe._key, ptr @max44000_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max44000_probe.__key, ptr @.str.7, ptr @max44000_info, ptr @max44000_channels, ptr @.str.9, ptr @.str.12, ptr @.str.17, ptr @.str.20, ptr @max44000_attribute_group, ptr @max44000_attributes, ptr @iio_const_attr_illuminance_integration_time_available, ptr @iio_const_attr_illuminance_scale_available, ptr @max44000_int_time_avail_str, ptr @.str.22, ptr @max44000_scale_avail_str, ptr @.str.23, ptr @max44000_alspga_shift, ptr @max44000_int_time_avail_ns_array, ptr @.str.24], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_illuminance_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_illuminance_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_int_time_avail_str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_scale_avail_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_alspga_shift to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max44000_int_time_avail_ns_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max44000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max44000_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max44000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max44000_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44000_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max44000_regmap_config, ptr noundef nonnull @max44000_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.body10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

do.body10:                                        ; preds = %if.end
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @max44000_probe.__key) #7
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @max44000_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @max44000_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %num_channels, align 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 2, i32 noundef 240) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end20

do.end18:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call14) #10
  br label %cleanup

if.end20:                                         ; preds = %do.body10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 3, i32 noundef 15, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp22 = icmp slt i32 %call.i.i, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i.i) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 48, ptr %reg, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 1, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call30) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call39 = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call39) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %call48 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @max44000_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end53, %do.end44, %do.end35, %do.end26, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %call14, %do.end18 ], [ %call.i.i, %do.end26 ], [ %call30, %do.end35 ], [ %call39, %do.end44 ], [ %call48, %do.end53 ], [ %call57, %if.end55 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
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
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44000_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %4 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %regval, align 4, !annotation !86
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val.i, align 2, !annotation !86
  %regmap.i = getelementptr inbounds %struct.max44000_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %val.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.max44000_read_alsval.exit.thread_crit_edge, label %if.end.i

if.then.max44000_read_alsval.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %max44000_read_alsval.exit.thread

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i.i, align 4, !annotation !86
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %max44000_read_alstim.exit.thread.i, label %max44000_read_alstim.exit.i

max44000_read_alstim.exit.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %max44000_read_alsval.exit.thread

max44000_read_alstim.exit.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %19 = lshr i32 %16, 1
  %mul.i = and i32 %19, 6
  %shl.i = shl nuw nsw i32 %conv.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  %20 = trunc i32 %shl.i to i16
  %conv = select i1 %tobool.not.i, i16 %20, i16 16383
  %scan = getelementptr inbounds %struct.max44000_data, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %scan to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %scan, align 2
  br label %if.end5

max44000_read_alsval.exit.thread:                 ; preds = %max44000_read_alstim.exit.thread.i, %if.then.max44000_read_alsval.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  br label %out_unlock

if.end5:                                          ; preds = %max44000_read_alstim.exit.i, %entry.if.end5_crit_edge
  %index.0 = phi i32 [ 1, %max44000_read_alstim.exit.i ], [ 0, %entry.if.end5_crit_edge ]
  %22 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_scan_mask, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not = icmp eq i32 %26, 0
  br i1 %tobool8.not, label %if.end5.if.end19_crit_edge, label %if.then9

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9:                                         ; preds = %if.end5
  %regmap = getelementptr inbounds %struct.max44000_data, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %28, i32 noundef 22, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.out_unlock_crit_edge, label %if.end14

if.then9.out_unlock_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regval, align 4
  %conv15 = trunc i32 %30 to i16
  %scan16 = getelementptr inbounds %struct.max44000_data, ptr %3, i32 0, i32 2
  %arrayidx18 = getelementptr [2 x i16], ptr %scan16, i32 0, i32 %index.0
  %31 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv15, ptr %arrayidx18, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.end5.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef %3) #7
  %scan21 = getelementptr inbounds %struct.max44000_data, ptr %3, i32 0, i32 2
  %call22 = call i64 @iio_get_time_ns(ptr noundef %1) #7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scan_timestamp.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i48 = icmp eq i8 %33, 0
  br i1 %tobool.not.i48, label %if.end19.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end19.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %35, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan21, i32 %sub.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call22, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end19.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i49 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan21) #7
  br label %cleanup

out_unlock:                                       ; preds = %if.then9.out_unlock_crit_edge, %max44000_read_alsval.exit.thread
  call void @mutex_unlock(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %iio_push_to_buffers_with_timestamp.exit
  %trig25 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %trig25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trig25, align 4
  call void @iio_trigger_notify_done(ptr noundef %38) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max44000_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 16
  %switch.cast = trunc i32 %switch.tableidx to i16
  %switch.downshift = lshr i16 -12313, %switch.cast
  %1 = and i16 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.masked = icmp ne i16 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max44000_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %reg)
  %0 = icmp ult i32 %reg, 23
  %switch.cast = trunc i32 %reg to i23
  %switch.downshift = lshr i23 -4087809, %switch.cast
  %1 = and i23 %switch.downshift, 1
  %switch.masked = icmp ne i23 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max44000_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %reg)
  %0 = icmp ult i32 %reg, 23
  %switch.cast = trunc i32 %reg to i23
  %switch.downshift = lshr i23 -4194255, %switch.cast
  %1 = and i23 %switch.downshift, 1
  %switch.masked = icmp ne i23 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max44000_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp = icmp eq i32 %reg, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44000_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val.i87 = alloca i32, align 4
  %val.i80 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !86
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb18
    i32 18, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %sw.bb.cleanup_crit_edge [
    i32 6, label %sw.bb1
    i32 8, label %sw.bb4
    i32 1, label %sw.bb11
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i, align 2, !annotation !86
  %regmap.i = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %val.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb1.max44000_read_alsval.exit.thread_crit_edge, label %if.end.i

sw.bb1.max44000_read_alsval.exit.thread_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %max44000_read_alsval.exit.thread

if.end.i:                                         ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i.i, align 4, !annotation !86
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %max44000_read_alstim.exit.thread.i, label %max44000_read_alstim.exit.i

max44000_read_alstim.exit.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %max44000_read_alsval.exit.thread

max44000_read_alstim.exit.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %16 to i32
  %and.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %17 = lshr i32 %14, 1
  %mul.i = and i32 %17, 6
  %shl.i = shl nuw nsw i32 %conv.i, %mul.i
  %retval.0.i = select i1 %tobool.not.i, i32 %shl.i, i32 16383
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

max44000_read_alsval.exit.thread:                 ; preds = %max44000_read_alstim.exit.thread.i, %sw.bb1.max44000_read_alsval.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %max44000_read_alstim.exit.thread.i ], [ %call.i, %sw.bb1.max44000_read_alsval.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %20, i32 noundef 22, ptr noundef nonnull %regval) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp slt i32 %call6, 0
  br i1 %cmp8, label %sw.bb4.cleanup_crit_edge, label %if.end10

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regval, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %24 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %regval.i, align 4, !annotation !86
  %regmap.i74 = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i74, align 4
  %call.i75 = call i32 @regmap_read(ptr noundef %26, i32 noundef 3, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i76 = icmp slt i32 %call.i75, 0
  br i1 %cmp.i76, label %max44000_read_led_current_raw.exit, label %if.end.i78

if.end.i78:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i, align 4
  %and.i77 = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i77)
  %cmp1.i = icmp ugt i32 %and.i77, 7
  %sub.i = add nsw i32 %and.i77, -4
  %spec.select = select i1 %cmp1.i, i32 %sub.i, i32 %and.i77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %val, align 4
  br label %cleanup

max44000_read_led_current_raw.exit:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %31, label %sw.bb18.cleanup_crit_edge [
    i32 1, label %sw.bb20
    i32 6, label %sw.bb21
  ]

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 10, ptr %val, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb18
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i80) #7
  %34 = ptrtoint ptr %val.i80 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %val.i80, align 4, !annotation !86
  %regmap.i81 = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i81, align 4
  %call.i82 = call i32 @regmap_read(ptr noundef %36, i32 noundef 2, ptr noundef nonnull %val.i80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %max44000_read_alspga.exit.thread, label %max44000_read_alspga.exit

max44000_read_alspga.exit.thread:                 ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i80) #7
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

max44000_read_alspga.exit:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val.i80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i80, align 4
  %and.i84 = and i32 %38, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i80) #7
  call void @mutex_unlock(ptr noundef %1) #7
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %val, align 4
  %arrayidx = getelementptr [4 x i32], ptr @max44000_alspga_shift, i32 0, i32 %and.i84
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 12, %41
  %42 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %val2, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i87) #7
  %43 = ptrtoint ptr %val.i87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i87, align 4, !annotation !86
  %regmap.i88 = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %regmap.i88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i88, align 4
  %call.i89 = call i32 @regmap_read(ptr noundef %45, i32 noundef 2, ptr noundef nonnull %val.i87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %max44000_read_alstim.exit.thread, label %max44000_read_alstim.exit

max44000_read_alstim.exit.thread:                 ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i87) #7
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

max44000_read_alstim.exit:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %val.i87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i87, align 4
  %and.i91 = lshr i32 %47, 2
  %shr.i = and i32 %and.i91, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i87) #7
  call void @mutex_unlock(ptr noundef %1) #7
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %val, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @max44000_int_time_avail_ns_array, i32 0, i32 %shr.i
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx36, align 4
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %max44000_read_alstim.exit, %max44000_read_alstim.exit.thread, %max44000_read_alspga.exit, %max44000_read_alspga.exit.thread, %sw.bb20, %sw.bb18.cleanup_crit_edge, %max44000_read_led_current_raw.exit, %if.end.i78, %if.end10, %sw.bb4.cleanup_crit_edge, %max44000_read_alsval.exit.thread, %max44000_read_alstim.exit.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %max44000_read_alstim.exit ], [ 11, %max44000_read_alspga.exit ], [ 1, %sw.bb20 ], [ 1, %if.end.i78 ], [ 1, %if.end10 ], [ 1, %max44000_read_alstim.exit.i ], [ %call6, %sw.bb4.cleanup_crit_edge ], [ %call.i75, %max44000_read_led_current_raw.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %max44000_read_alsval.exit.thread ], [ %call.i82, %max44000_read_alspga.exit.thread ], [ %call.i89, %max44000_read_alstim.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max44000_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %land.lhs.true
    i32 18, label %land.lhs.true5
    i32 2, label %land.lhs.true35
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %val)
  %5 = icmp ugt i32 %val, 11
  br i1 %5, label %if.then.cleanup.sink.split_crit_edge, label %if.end.i

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %val)
  %cmp2.i = icmp ugt i32 %val, 7
  %add.i = add nuw nsw i32 %val, 4
  %spec.select.i = select i1 %cmp2.i, i32 %add.i, i32 %val
  %regmap.i = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3, i32 noundef 15, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %cleanup.sink.split

land.lhs.true5:                                   ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp7 = icmp eq i32 %9, 6
  br i1 %cmp7, label %if.then8, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true5
  %mul = mul i32 %val, 1000000000
  %add = add i32 %mul, %val2
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500000, i32 %add)
  %cmp25.not = icmp slt i32 %add, 62500000
  br i1 %cmp25.not, label %for.cond.1, label %if.then8.for.end_crit_edge

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625000, i32 %add)
  %cmp25.not.1 = icmp slt i32 %add, 15625000
  br i1 %cmp25.not.1, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3906250, i32 %add)
  %cmp25.not.2 = icmp slt i32 %add, 3906250
  %spec.select = select i1 %cmp25.not.2, i32 12, i32 8
  br label %for.end

for.end:                                          ; preds = %for.cond.2, %for.cond.1.for.end_crit_edge, %if.then8.for.end_crit_edge
  %__fc_i.0.lcssa = phi i32 [ 0, %if.then8.for.end_crit_edge ], [ 4, %for.cond.1.for.end_crit_edge ], [ %spec.select, %for.cond.2 ]
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %regmap.i129 = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i129 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i129, align 4
  %call.i.i130 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 2, i32 noundef 12, i32 noundef %__fc_i.0.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %cleanup.sink.split

land.lhs.true35:                                  ; preds = %entry
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp37 = icmp eq i32 %13, 6
  br i1 %cmp37, label %if.then39, label %land.lhs.true35.cleanup_crit_edge

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true35
  %mul40 = mul i32 %val, 1000000
  %add41 = add i32 %mul40, %val2
  call void @__sanitizer_cov_trace_const_cmp4(i32 78125, i32 %add41)
  %cmp75.not = icmp sgt i32 %add41, 78125
  br i1 %cmp75.not, label %for.cond47.1, label %if.then39.for.end81_crit_edge

if.then39.for.end81_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

for.cond47.1:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 312500, i32 %add41)
  %cmp75.not.1 = icmp ugt i32 %add41, 312500
  br i1 %cmp75.not.1, label %for.cond47.2, label %for.cond47.1.for.end81_crit_edge

for.cond47.1.for.end81_crit_edge:                 ; preds = %for.cond47.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

for.cond47.2:                                     ; preds = %for.cond47.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2250000, i32 %add41)
  %cmp75.not.2 = icmp ugt i32 %add41, 2250000
  %spec.select133 = select i1 %cmp75.not.2, i32 3, i32 2
  br label %for.end81

for.end81:                                        ; preds = %for.cond47.2, %for.cond47.1.for.end81_crit_edge, %if.then39.for.end81_crit_edge
  %__fc_i43.0.lcssa = phi i32 [ 0, %if.then39.for.end81_crit_edge ], [ 1, %for.cond47.1.for.end81_crit_edge ], [ %spec.select133, %for.cond47.2 ]
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %regmap.i131 = getelementptr inbounds %struct.max44000_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i131 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i131, align 4
  %call.i.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 2, i32 noundef 3, i32 noundef %__fc_i43.0.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end81, %for.end, %if.end.i, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i.i132, %for.end81 ], [ %call.i.i130, %for.end ], [ %call.i.i, %if.end.i ], [ -34, %if.then.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true35.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true35.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max44000_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mask, label %entry.if.else7_crit_edge [
    i32 18, label %land.lhs.true
    i32 2, label %land.lhs.true3
  ]

entry.if.else7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else7

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1 = icmp eq i32 %2, 6
  br i1 %cmp1, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.else7_crit_edge

land.lhs.true.if.else7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else7

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true3:                                   ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp5 = icmp eq i32 %4, 6
  br i1 %cmp5, label %land.lhs.true3.return_crit_edge, label %land.lhs.true3.if.else7_crit_edge

land.lhs.true3.if.else7_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else7

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else7:                                         ; preds = %land.lhs.true3.if.else7_crit_edge, %land.lhs.true.if.else7_crit_edge, %entry.if.else7_crit_edge
  br label %return

return:                                           ; preds = %if.else7, %land.lhs.true3.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.else7 ], [ 3, %land.lhs.true.return_crit_edge ], [ 2, %land.lhs.true3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_max44000__288_624_max44000_driver_init6, !1, !"__initcall__kmod_max44000__288_624_max44000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/max44000.c", i32 624, i32 1}
!2 = !{ptr @__exitcall_max44000_driver_exit, !1, !"__exitcall_max44000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/max44000.c", i32 626, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/max44000.c", i32 627, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/max44000.c", i32 628, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/max44000.c", i32 617, i32 11}
!12 = !{ptr @max44000_driver, !13, !"max44000_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/max44000.c", i32 615, i32 26}
!14 = !{ptr @max44000_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/max44000.c", i32 537, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/max44000.c", i32 539, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max44000_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max44000_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @max44000_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/max44000.c", i32 543, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/max44000.c", i32 561, i32 3}
!30 = !{ptr @max44000_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max44000_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/max44000.c", i32 572, i32 3}
!34 = !{ptr @max44000_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max44000_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @max44000_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/max44000.c", i32 580, i32 3}
!38 = !{ptr @max44000_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/max44000.c", i32 587, i32 3}
!41 = !{ptr @max44000_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @max44000_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/max44000.c", i32 594, i32 3}
!45 = !{ptr @max44000_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @max44000_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @max44000_regmap_config, !48, !"max44000_regmap_config", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/max44000.c", i32 476, i32 35}
!49 = !{ptr @max44000_info, !50, !"max44000_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/max44000.c", i32 405, i32 30}
!51 = !{ptr @max44000_attribute_group, !52, !"max44000_attribute_group", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/max44000.c", i32 401, i32 37}
!53 = !{ptr @max44000_attributes, !54, !"max44000_attributes", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/max44000.c", i32 395, i32 26}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/max44000.c", i32 392, i32 8}
!57 = !{ptr @iio_const_attr_illuminance_integration_time_available, !56, !"iio_const_attr_illuminance_integration_time_available", i1 false, i1 false}
!58 = !{ptr @max44000_int_time_avail_str, !59, !"max44000_int_time_avail_str", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/max44000.c", i32 113, i32 19}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/max44000.c", i32 393, i32 8}
!62 = !{ptr @iio_const_attr_illuminance_scale_available, !61, !"iio_const_attr_illuminance_scale_available", i1 false, i1 false}
!63 = !{ptr @max44000_scale_avail_str, !64, !"max44000_scale_avail_str", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/max44000.c", i32 126, i32 19}
!65 = !{ptr @max44000_alspga_shift, !66, !"max44000_alspga_shift", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/max44000.c", i32 89, i32 18}
!67 = !{ptr @max44000_int_time_avail_ns_array, !68, !"max44000_int_time_avail_ns_array", i1 false, i1 false}
!68 = !{!"../drivers/iio/light/max44000.c", i32 107, i32 18}
!69 = distinct !{null, !70, !"max44000_scale_avail_ulux_array", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/max44000.c", i32 120, i32 18}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/max44000.c", i32 163, i32 18}
!73 = !{ptr @max44000_channels, !74, !"max44000_channels", i1 false, i1 false}
!74 = !{!"../drivers/iio/light/max44000.c", i32 135, i32 35}
!75 = !{ptr @max44000_id, !76, !"max44000_id", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/max44000.c", i32 601, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
