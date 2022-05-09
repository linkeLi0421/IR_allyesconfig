; ModuleID = '/llk/IR_all_yes/drivers/iio/light/pa12203001.c_pt.bc'
source_filename = "../drivers/iio/light/pa12203001.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.pa12203001_data = type { ptr, %struct.mutex, i8, i8, i8, i8, ptr }

@__initcall__kmod_pa12203001__289_479_pa12203001_driver_init6 = internal global ptr @pa12203001_driver_init, section ".initcall6.init", align 4
@pa12203001_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pa12203001_probe, ptr @pa12203001_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pa12203001_pm_ops, ptr null, ptr null }, ptr @pa12203001_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pa12203001_driver_exit = internal global ptr @pa12203001_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"pa12203001.author=Adriana Reus <adriana.reus@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [76 x i8] c"pa12203001.description=Driver for TXC PA12203001 Proximity and Light Sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"pa12203001.file=drivers/iio/light/pa12203001\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"pa12203001.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pa12203001\00", [21 x i8] zeroinitializer }, align 32
@pa12203001_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pa12203001_suspend, ptr @pa12203001_resume, ptr @pa12203001_suspend, ptr @pa12203001_resume, ptr @pa12203001_suspend, ptr @pa12203001_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pa12203001_suspend, ptr @pa12203001_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@pa12203001_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"txcpa122\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pa12203001_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pa12203001_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr @pa12203001_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pa12203001:357:(&pa12203001_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@pa12203001_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@pa12203001_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @pa12203001_attr_group, ptr @pa12203001_read_raw, ptr null, ptr null, ptr @pa12203001_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pa12203001_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@pa12203001_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @pa12203001_volatile_regs_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@pa12203001_volatile_regs_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 11, i32 12 }, %struct.regmap_range { i32 14, i32 14 }], [16 x i8] zeroinitializer }, align 32
@pa12203001_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pa12203001_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pa12203001_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_scale_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.3, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0.007629 0.061036 0.106813 0.473029\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@pa12203001_scales = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7629, i32 61036, i32 106813, i32 473029], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 7629, i64 61036, i64 106813, i64 473029]
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"pa12203001_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 468, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 470, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"pa12203001_pm_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 449, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"pa12203001_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 461, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"pa12203001_regmap_config\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 121, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 357, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 361, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"pa12203001_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 304, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"pa12203001_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 99, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"pa12203001_volatile_regs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 116, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant [32 x i8] c"pa12203001_volatile_regs_ranges\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 111, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"pa12203001_attr_group\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 95, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"pa12203001_attrs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 90, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [46 x i8] c"iio_const_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 87, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"pa12203001_scales\00", align 1
@___asan_gen_.62 = private constant [34 x i8] c"../drivers/iio/light/pa12203001.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 60, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pa12203001_driver_exit, ptr @__initcall__kmod_pa12203001__289_479_pa12203001_driver_init6, ptr @pa12203001_driver_exit, ptr @pa12203001_driver, ptr @.str, ptr @pa12203001_pm_ops, ptr @pa12203001_id, ptr @pa12203001_probe._key, ptr @pa12203001_regmap_config, ptr @.str.1, ptr @pa12203001_probe.__key, ptr @.str.2, ptr @pa12203001_info, ptr @pa12203001_channels, ptr @pa12203001_volatile_regs, ptr @pa12203001_volatile_regs_ranges, ptr @pa12203001_attr_group, ptr @pa12203001_attrs, ptr @iio_const_attr_in_illuminance_scale_available, ptr @.str.3, ptr @.str.4, ptr @pa12203001_scales], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_volatile_regs_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa12203001_scales to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pa12203001_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pa12203001_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pa12203001_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #6
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
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pa12203001_regmap_config, ptr noundef nonnull @pa12203001_probe._key, ptr noundef nonnull @.str.1) #6
  %map = getelementptr inbounds %struct.pa12203001_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.pa12203001_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @pa12203001_probe.__key) #6
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pa12203001_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pa12203001_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_channels, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %map.i = getelementptr inbounds %struct.pa12203001_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.body.cleanup_crit_edge, label %for.cond.i

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %do.body
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %call3.1.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 1, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp slt i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 4
  %call3.2.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 2, i32 noundef 204) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %cmp4.2.i = icmp slt i32 %call3.2.i, 0
  br i1 %cmp4.2.i, label %for.cond.1.i.cleanup_crit_edge, label %for.cond.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 4
  %call3.3.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %cmp4.3.i = icmp slt i32 %call3.3.i, 0
  br i1 %cmp4.3.i, label %for.cond.2.i.cleanup_crit_edge, label %pa12203001_init.exit

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pa12203001_init.exit:                             ; preds = %for.cond.2.i
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 4
  %call3.4.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 17, i32 noundef 3) #6
  %23 = tail call i32 @llvm.smin.i32(i32 %call3.4.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4.i)
  %cmp = icmp slt i32 %call3.4.i, 0
  br i1 %cmp, label %pa12203001_init.exit.cleanup_crit_edge, label %if.end12

pa12203001_init.exit.cleanup_crit_edge:           ; preds = %pa12203001_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %pa12203001_init.exit
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.pa12203001_data, ptr %25, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %map.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 1, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end12.pa12203001_power_chip.exit.thread_crit_edge, label %if.end.i

if.end12.pa12203001_power_chip.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit.thread

if.end.i:                                         ; preds = %if.end12
  %als_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %als_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %als_enabled.i.i, align 4
  %29 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i.i, align 4
  %call.i.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 2, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i.i11.i, 0
  br i1 %cmp.i12.i, label %if.end.i.pa12203001_power_chip.exit.thread_crit_edge, label %if.end16

if.end.i.pa12203001_power_chip.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit.thread

pa12203001_power_chip.exit.thread:                ; preds = %if.end.i.pa12203001_power_chip.exit.thread_crit_edge, %if.end12.pa12203001_power_chip.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i.i.i, %if.end12.pa12203001_power_chip.exit.thread_crit_edge ], [ %call.i.i11.i, %if.end.i.pa12203001_power_chip.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end.i
  %px_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %25, i32 0, i32 3
  %31 = ptrtoint ptr %px_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %px_enabled.i.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %if.end16.out_err_crit_edge, label %if.end21

if.end16.out_err_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end21:                                         ; preds = %if.end16
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %call25 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end21.out_err_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.out_err_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

out_err:                                          ; preds = %if.end21.out_err_crit_edge, %if.end16.out_err_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end16.out_err_crit_edge ], [ %call25, %if.end21.out_err_crit_edge ]
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  %lock.i62 = getelementptr inbounds %struct.pa12203001_data, ptr %33, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i62, i32 noundef 0) #6
  %map.i.i63 = getelementptr inbounds %struct.pa12203001_data, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %map.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i.i63, align 4
  %call.i.i.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64)
  %cmp.i.i65 = icmp slt i32 %call.i.i.i64, 0
  br i1 %cmp.i.i65, label %out_err.pa12203001_power_chip.exit73_crit_edge, label %if.end.i69

out_err.pa12203001_power_chip.exit73_crit_edge:   ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit73

if.end.i69:                                       ; preds = %out_err
  %als_enabled.i.i66 = getelementptr inbounds %struct.pa12203001_data, ptr %33, i32 0, i32 2
  %36 = ptrtoint ptr %als_enabled.i.i66 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %als_enabled.i.i66, align 4
  %37 = ptrtoint ptr %map.i.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i.i63, align 4
  %call.i.i11.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i67)
  %cmp.i12.i68 = icmp slt i32 %call.i.i11.i67, 0
  br i1 %cmp.i12.i68, label %if.end.i69.pa12203001_power_chip.exit73_crit_edge, label %if.end.i15.i71

if.end.i69.pa12203001_power_chip.exit73_crit_edge: ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit73

if.end.i15.i71:                                   ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %px_enabled.i.i70 = getelementptr inbounds %struct.pa12203001_data, ptr %33, i32 0, i32 3
  %39 = ptrtoint ptr %px_enabled.i.i70 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %px_enabled.i.i70, align 1
  br label %pa12203001_power_chip.exit73

pa12203001_power_chip.exit73:                     ; preds = %if.end.i15.i71, %if.end.i69.pa12203001_power_chip.exit73_crit_edge, %out_err.pa12203001_power_chip.exit73_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i62) #6
  br label %cleanup

cleanup:                                          ; preds = %pa12203001_power_chip.exit73, %if.end21.cleanup_crit_edge, %pa12203001_power_chip.exit.thread, %pa12203001_init.exit.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %ret.0, %pa12203001_power_chip.exit73 ], [ -12, %entry.cleanup_crit_edge ], [ %23, %pa12203001_init.exit.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %ret.0.i.ph, %pa12203001_power_chip.exit.thread ], [ %call3.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call3.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call3.1.i, %for.cond.i.cleanup_crit_edge ], [ %call3.i, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %map.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.pa12203001_power_chip.exit_crit_edge, label %if.end.i

entry.pa12203001_power_chip.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit

if.end.i:                                         ; preds = %entry
  %als_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %als_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %als_enabled.i.i, align 4
  %7 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i, align 4
  %call.i.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i.i11.i, 0
  br i1 %cmp.i12.i, label %if.end.i.pa12203001_power_chip.exit_crit_edge, label %if.end.i15.i

if.end.i.pa12203001_power_chip.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit

if.end.i15.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %px_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %px_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %px_enabled.i.i, align 1
  br label %pa12203001_power_chip.exit

pa12203001_power_chip.exit:                       ; preds = %if.end.i15.i, %if.end.i.pa12203001_power_chip.exit_crit_edge, %entry.pa12203001_power_chip.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i15.i ], [ %call.i.i11.i, %if.end.i.pa12203001_power_chip.exit_crit_edge ], [ %call.i.i.i, %entry.pa12203001_power_chip.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_byte = alloca i32, align 4
  %reg_word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_byte) #6
  %2 = ptrtoint ptr %reg_byte to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_byte, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_word) #6
  %3 = ptrtoint ptr %reg_word to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %reg_word, align 2, !annotation !55
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 6, label %sw.bb1
    i32 8, label %sw.bb12
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = tail call fastcc i32 @pa12203001_set_power_state(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %map = getelementptr inbounds %struct.pa12203001_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 11, ptr noundef nonnull %reg_word, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.reg_err_crit_edge, label %if.end6

if.end.reg_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_err

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %reg_word to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_word, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %val, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i67.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i67.i, ptr %last_busy.i.i, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev35.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i68.i = call i32 @__pm_runtime_suspend(ptr noundef %dev35.i, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %cmp8 = icmp slt i32 %call.i68.i, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb
  %call13 = tail call fastcc i32 @pa12203001_set_power_state(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %sw.bb12.cleanup_crit_edge, label %if.end17

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %sw.bb12
  %map18 = getelementptr inbounds %struct.pa12203001_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %map18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map18, align 4
  %call19 = call i32 @regmap_read(ptr noundef %20, i32 noundef 14, ptr noundef nonnull %reg_byte) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.reg_err_crit_edge, label %if.end23

if.end17.reg_err_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_err

if.end23:                                         ; preds = %if.end17
  %21 = ptrtoint ptr %reg_byte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_byte, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i67.i67 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i68 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i.i68 to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i67.i67, ptr %last_busy.i.i68, align 8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev35.i69 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %call.i68.i70 = call i32 @__pm_runtime_suspend(ptr noundef %dev35.i69, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i70)
  %cmp25 = icmp slt i32 %call.i68.i70, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end23.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %map30 = getelementptr inbounds %struct.pa12203001_data, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %map30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map30, align 4
  %call31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %reg_byte) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %sw.bb29.cleanup_crit_edge, label %if.end35

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val, align 4
  %32 = ptrtoint ptr %reg_byte to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_byte, align 4
  %and = lshr i32 %33, 4
  %shr = and i32 %and, 3
  %arrayidx = getelementptr [4 x i32], ptr @pa12203001_scales, i32 0, i32 %shr
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val2, align 4
  br label %cleanup

reg_err:                                          ; preds = %if.end17.reg_err_crit_edge, %if.end.reg_err_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end17.reg_err_crit_edge ], [ %call3, %if.end.reg_err_crit_edge ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i67.i71 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i72 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4, i32 12, i32 22
  %39 = ptrtoint ptr %last_busy.i.i72 to i32
  call void @__asan_store8_noabort(i32 %39)
  store volatile i64 %call.i67.i71, ptr %last_busy.i.i72, align 8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %dev35.i73 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %call.i68.i74 = call i32 @__pm_runtime_suspend(ptr noundef %dev35.i73, i32 noundef 13) #6
  br label %cleanup

cleanup:                                          ; preds = %reg_err, %if.end35, %sw.bb29.cleanup_crit_edge, %sw.epilog, %if.end23.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end35 ], [ %ret.0, %reg_err ], [ 1, %sw.epilog ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call.i68.i, %if.end6.cleanup_crit_edge ], [ %call13, %sw.bb12.cleanup_crit_edge ], [ %call.i68.i70, %if.end23.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call31, %sw.bb29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_word) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_byte) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_byte = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_byte) #6
  %2 = ptrtoint ptr %reg_byte to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_byte, align 4, !annotation !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %map = getelementptr inbounds %struct.pa12203001_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %reg_byte) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp ne i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %for.body.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %5 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 7629, label %for.body.preheader.if.then5_crit_edge
    i32 61036, label %if.then5.fold.split
    i32 106813, label %if.then5.fold.split20
    i32 473029, label %if.then5.fold.split21
  ]

for.body.preheader.if.then5_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5.fold.split20:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5.fold.split21:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %if.then5.fold.split21, %if.then5.fold.split20, %if.then5.fold.split, %for.body.preheader.if.then5_crit_edge
  %i.018.lcssa = phi i32 [ 0, %for.body.preheader.if.then5_crit_edge ], [ 16, %if.then5.fold.split ], [ 32, %if.then5.fold.split20 ], [ 48, %if.then5.fold.split21 ]
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 48, i32 noundef %i.018.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.body.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_byte) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pa12203001_set_power_state(ptr noundef %data, i1 noundef zeroext %on, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp ne i8 %0, 0
  %1 = and i1 %tobool1.not, %on
  br i1 %1, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %px_enabled = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %px_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %px_enabled, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %map.i = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then3.err_crit_edge, label %pa12203001_als_enable.exit

if.then3.err_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

pa12203001_als_enable.exit:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %als_enabled.i = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %als_enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %als_enabled.i, align 4
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %als_needs_enable = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %als_needs_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %als_needs_enable, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.else, %pa12203001_als_enable.exit
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  %8 = and i8 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp ne i8 %8, 0
  %9 = and i1 %tobool14.not, %on
  br i1 %9, label %if.then15, label %if.end8.if.end27_crit_edge

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %if.end8
  %lock16 = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock16, i32 noundef 0) #6
  %als_enabled = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %als_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %als_enabled, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.else24, label %if.then18

if.then18:                                        ; preds = %if.then15
  %map.i60 = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %map.i60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i60, align 4
  %call.i.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %cmp.i62 = icmp slt i32 %call.i.i61, 0
  br i1 %cmp.i62, label %if.then18.err_crit_edge, label %pa12203001_px_enable.exit

if.then18.err_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

pa12203001_px_enable.exit:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %px_enabled.i = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 3
  br label %if.end25

if.else24:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %px_needs_enable = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 5
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %pa12203001_px_enable.exit
  %px_enabled.i.sink = phi ptr [ %px_enabled.i, %pa12203001_px_enable.exit ], [ %px_needs_enable, %if.else24 ]
  %14 = ptrtoint ptr %px_enabled.i.sink to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %px_enabled.i.sink, align 1
  tail call void @mutex_unlock(ptr noundef %lock16) #6
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end8.if.end27_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  br i1 %on, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end27
  %dev = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i65 = icmp slt i32 %call.i, 0
  br i1 %cmp.i65, label %if.then.i, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then29
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !58
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %cleanup

if.else31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call.i67 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i67, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %call.i68 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev35, i32 noundef 13) #6
  br label %cleanup

err:                                              ; preds = %if.then18.err_crit_edge, %if.then3.err_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %if.then3.err_crit_edge ], [ %call.i.i61, %if.then18.err_crit_edge ]
  %lock38 = getelementptr inbounds %struct.pa12203001_data, ptr %data, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock38) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.else31, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.then29.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ %call.i68, %if.else31 ], [ 0, %if.then29.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %map.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.pa12203001_power_chip.exit_crit_edge, label %if.end.i

entry.pa12203001_power_chip.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit

if.end.i:                                         ; preds = %entry
  %als_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %als_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %als_enabled.i.i, align 4
  %7 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i, align 4
  %call.i.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i.i11.i, 0
  br i1 %cmp.i12.i, label %if.end.i.pa12203001_power_chip.exit_crit_edge, label %if.end.i15.i

if.end.i.pa12203001_power_chip.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit

if.end.i15.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %px_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %px_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %px_enabled.i.i, align 1
  br label %pa12203001_power_chip.exit

pa12203001_power_chip.exit:                       ; preds = %if.end.i15.i, %if.end.i.pa12203001_power_chip.exit_crit_edge, %entry.pa12203001_power_chip.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i15.i ], [ %call.i.i11.i, %if.end.i.pa12203001_power_chip.exit_crit_edge ], [ %call.i.i.i, %entry.pa12203001_power_chip.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %map.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.pa12203001_power_chip.exit_crit_edge, label %if.end.i

entry.pa12203001_power_chip.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit

if.end.i:                                         ; preds = %entry
  %als_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %als_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %als_enabled.i.i, align 4
  %7 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i, align 4
  %call.i.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 2, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i.i11.i, 0
  br i1 %cmp.i12.i, label %if.end.i.pa12203001_power_chip.exit_crit_edge, label %if.end.i15.i

if.end.i.pa12203001_power_chip.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_power_chip.exit

if.end.i15.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %px_enabled.i.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %px_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %px_enabled.i.i, align 1
  br label %pa12203001_power_chip.exit

pa12203001_power_chip.exit:                       ; preds = %if.end.i15.i, %if.end.i.pa12203001_power_chip.exit_crit_edge, %entry.pa12203001_power_chip.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i15.i ], [ %call.i.i11.i, %if.end.i.pa12203001_power_chip.exit_crit_edge ], [ %call.i.i.i, %entry.pa12203001_power_chip.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pa12203001_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %als_needs_enable = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %als_needs_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %als_needs_enable, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %map.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.pa12203001_als_enable.exit_crit_edge, label %if.end.i

if.then.pa12203001_als_enable.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_als_enable.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %als_enabled.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %als_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %als_enabled.i, align 4
  br label %pa12203001_als_enable.exit

pa12203001_als_enable.exit:                       ; preds = %if.end.i, %if.then.pa12203001_als_enable.exit_crit_edge
  %9 = ptrtoint ptr %als_needs_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %als_needs_enable, align 2
  br label %if.end

if.end:                                           ; preds = %pa12203001_als_enable.exit, %entry.if.end_crit_edge
  %px_needs_enable = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %px_needs_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %px_needs_enable, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %map.i17 = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %map.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i17, align 4
  %call.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.i19 = icmp slt i32 %call.i.i18, 0
  br i1 %cmp.i19, label %if.then5.pa12203001_px_enable.exit_crit_edge, label %if.end.i20

if.then5.pa12203001_px_enable.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pa12203001_px_enable.exit

if.end.i20:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %px_enabled.i = getelementptr inbounds %struct.pa12203001_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %px_enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %px_enabled.i, align 1
  br label %pa12203001_px_enable.exit

pa12203001_px_enable.exit:                        ; preds = %if.end.i20, %if.then5.pa12203001_px_enable.exit_crit_edge
  %15 = ptrtoint ptr %px_needs_enable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %px_needs_enable, align 1
  br label %if.end8

if.end8:                                          ; preds = %pa12203001_px_enable.exit, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_pa12203001__289_479_pa12203001_driver_init6, !1, !"__initcall__kmod_pa12203001__289_479_pa12203001_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/pa12203001.c", i32 479, i32 1}
!2 = !{ptr @__exitcall_pa12203001_driver_exit, !1, !"__exitcall_pa12203001_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/pa12203001.c", i32 481, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/pa12203001.c", i32 482, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/pa12203001.c", i32 483, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/pa12203001.c", i32 470, i32 11}
!12 = !{ptr @pa12203001_driver, !13, !"pa12203001_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/pa12203001.c", i32 468, i32 26}
!14 = !{ptr @pa12203001_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/pa12203001.c", i32 357, i32 14}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pa12203001_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/pa12203001.c", i32 361, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pa12203001_regmap_config, !21, !"pa12203001_regmap_config", i1 false, i1 false}
!21 = !{!"../drivers/iio/light/pa12203001.c", i32 121, i32 35}
!22 = !{ptr @pa12203001_volatile_regs, !23, !"pa12203001_volatile_regs", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/pa12203001.c", i32 116, i32 41}
!24 = !{ptr @pa12203001_volatile_regs_ranges, !25, !"pa12203001_volatile_regs_ranges", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/pa12203001.c", i32 111, i32 34}
!26 = !{ptr @pa12203001_info, !27, !"pa12203001_info", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/pa12203001.c", i32 304, i32 30}
!28 = !{ptr @pa12203001_attr_group, !29, !"pa12203001_attr_group", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/pa12203001.c", i32 95, i32 37}
!30 = !{ptr @pa12203001_attrs, !31, !"pa12203001_attrs", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/pa12203001.c", i32 90, i32 26}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/pa12203001.c", i32 87, i32 8}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @iio_const_attr_in_illuminance_scale_available, !33, !"iio_const_attr_in_illuminance_scale_available", i1 false, i1 false}
!36 = !{ptr @pa12203001_scales, !37, !"pa12203001_scales", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/pa12203001.c", i32 60, i32 18}
!38 = !{ptr @pa12203001_channels, !39, !"pa12203001_channels", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/pa12203001.c", i32 99, i32 35}
!40 = distinct !{null, !41, !"regvals", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/pa12203001.c", i32 79, i32 3}
!42 = !{ptr @pa12203001_pm_ops, !43, !"pa12203001_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/pa12203001.c", i32 449, i32 32}
!44 = !{ptr @pa12203001_id, !45, !"pa12203001_id", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/pa12203001.c", i32 461, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i8 0, i8 2}
!57 = !{i64 2148218568}
!58 = !{i64 703391, i64 703416, i64 703438, i64 703454, i64 703466, i64 703486, i64 703510, i64 703526, i64 703538}
!59 = !{i64 2148218756}
