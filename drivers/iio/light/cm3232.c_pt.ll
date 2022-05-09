; ModuleID = '/llk/IR_all_yes/drivers/iio/light/cm3232.c_pt.bc'
source_filename = "../drivers/iio/light/cm3232.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.87 = type { i32, i32, i8 }
%struct.cm3232_als_info = type { i8, i8, i32, i32, i32 }
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
%struct.cm3232_chip = type { ptr, ptr, i8, i16 }

@__initcall__kmod_cm3232__288_431_cm3232_driver_init6 = internal global ptr @cm3232_driver_init, section ".initcall6.init", align 4
@cm3232_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cm3232_probe, ptr @cm3232_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cm3232_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cm3232_pm_ops, ptr null, ptr null }, ptr @cm3232_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cm3232_driver_exit = internal global ptr @cm3232_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"cm3232.author=Kevin Tsai <ktsai@capellamicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [54 x i8] c"cm3232.description=CM3232 ambient light sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"cm3232.file=drivers/iio/light/cm3232\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"cm3232.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cm3232\00", [25 x i8] zeroinitializer }, align 32
@cm3232_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm3232\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cm3232_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cm3232_suspend, ptr @cm3232_resume, ptr @cm3232_suspend, ptr @cm3232_resume, ptr @cm3232_suspend, ptr @cm3232_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cm3232_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cm3232\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cm3232_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262162, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@cm3232_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @cm3232_attribute_group, ptr @cm3232_read_raw, ptr null, ptr null, ptr @cm3232_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cm3232_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: register init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm3232_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/cm3232.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cm3232_probe._entry_ptr = internal global ptr @cm3232_probe._entry, section ".printk_index", align 4
@cm3232_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cm3232_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@cm3232_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_integration_time_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cm3232_get_it_available, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"in_illuminance_integration_time_available\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%06u \00", [23 x i8] zeroinitializer }, align 32
@cm3232_als_it_scales = internal constant { [6 x %struct.anon.87], [56 x i8] } { [6 x %struct.anon.87] [%struct.anon.87 { i32 0, i32 100000, i8 0 }, %struct.anon.87 { i32 0, i32 200000, i8 1 }, %struct.anon.87 { i32 0, i32 400000, i8 2 }, %struct.anon.87 { i32 0, i32 800000, i8 3 }, %struct.anon.87 { i32 1, i32 600000, i8 4 }, %struct.anon.87 { i32 3, i32 200000, i8 5 }], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cm3232_get_lux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error reading reg_addr_als\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm3232_get_lux\00", [17 x i8] zeroinitializer }, align 32
@cm3232_get_lux._entry_ptr = internal global ptr @cm3232_get_lux._entry, section ".printk_index", align 4
@cm3232_als_info_default = internal global { %struct.cm3232_als_info, [16 x i8] } { %struct.cm3232_als_info { i8 4, i8 50, i32 100000, i32 64, i32 100000 }, [16 x i8] zeroinitializer }, align 32
@cm3232_reg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading addr_id\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm3232_reg_init\00", [16 x i8] zeroinitializer }, align 32
@cm3232_reg_init._entry_ptr = internal global ptr @cm3232_reg_init._entry, section ".printk_index", align 4
@cm3232_reg_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing reg_cmd\0A\00", [41 x i8] zeroinitializer }, align 32
@cm3232_reg_init._entry_ptr.15 = internal global ptr @cm3232_reg_init._entry.13, section ".printk_index", align 4
@cm3232_reg_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cm3232_reg_init._entry_ptr.17 = internal global ptr @cm3232_reg_init._entry.16, section ".printk_index", align 4
@switch.table.cm3232_read_raw = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 5, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.cm3232_read_raw.18 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 5, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 18]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 100000, i64 200000, i64 400000, i64 800000]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"cm3232_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 418, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 420, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"cm3232_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 412, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"cm3232_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 406, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"cm3232_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 372, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"cm3232_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 300, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"cm3232_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 322, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 351, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"cm3232_attribute_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 318, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"cm3232_attributes\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 313, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant [55 x i8] c"iio_dev_attr_in_illuminance_integration_time_available\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 310, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 294, i32 48 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"cm3232_als_it_scales\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 45, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 297, i32 53 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 219, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"cm3232_als_info_default\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 62, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 95, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 107, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private constant [30 x i8] c"../drivers/iio/light/cm3232.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 118, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [29 x i8] c"switch.table.cm3232_read_raw\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [32 x i8] c"switch.table.cm3232_read_raw.18\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_cm3232_driver_exit, ptr @__initcall__kmod_cm3232__288_431_cm3232_driver_init6, ptr @cm3232_driver_exit, ptr @cm3232_get_lux._entry, ptr @cm3232_get_lux._entry_ptr, ptr @cm3232_probe._entry, ptr @cm3232_probe._entry_ptr, ptr @cm3232_reg_init._entry, ptr @cm3232_reg_init._entry.13, ptr @cm3232_reg_init._entry.16, ptr @cm3232_reg_init._entry_ptr, ptr @cm3232_reg_init._entry_ptr.15, ptr @cm3232_reg_init._entry_ptr.17, ptr @cm3232_driver, ptr @.str, ptr @cm3232_of_match, ptr @cm3232_pm_ops, ptr @cm3232_id, ptr @cm3232_channels, ptr @cm3232_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cm3232_attribute_group, ptr @cm3232_attributes, ptr @iio_dev_attr_in_illuminance_integration_time_available, ptr @.str.6, ptr @.str.7, ptr @cm3232_als_it_scales, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cm3232_als_info_default, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @switch.table.cm3232_read_raw, ptr @switch.table.cm3232_read_raw.18], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_integration_time_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_als_it_scales to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_get_lux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_als_info_default to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_reg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_reg_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3232_reg_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cm3232_read_raw to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cm3232_read_raw.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cm3232_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm3232_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @cm3232_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cm3232_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cm3232_info, ptr %info, align 8
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %id, ptr %name3, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = load ptr, ptr %1, align 4
  %als_info.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %als_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cm3232_als_info_default, ptr %als_info.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %9, i8 noundef zeroext 83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %als_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %als_info.i, align 4
  %hw_id.i = getelementptr inbounds %struct.cm3232_als_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hw_id.i, align 1
  %15 = trunc i32 %call.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp4.not.i = icmp eq i8 %14, %15
  br i1 %cmp4.not.i, label %if.end7.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end7.i:                                        ; preds = %if.end.i
  %regs_cmd.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 65, ptr %regs_cmd.i, align 4
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i
  %17 = ptrtoint ptr %als_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %als_info.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %21 = ptrtoint ptr %regs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %regs_cmd.i, align 4
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %cm3232_reg_init.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.11, %if.end.cleanup.sink.split.i_crit_edge ], [ @.str.14, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ @.str.14, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.end.cleanup.sink.split.i_crit_edge ], [ %call9.i, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev30.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull %.str.14.sink.i) #8
  br label %do.end

cm3232_reg_init.exit:                             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool5.not = icmp eq i32 %call22.i, 0
  br i1 %tobool5.not, label %if.end8, label %cm3232_reg_init.exit.do.end_crit_edge

cm3232_reg_init.exit.do.end_crit_edge:            ; preds = %cm3232_reg_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %cm3232_reg_init.exit.do.end_crit_edge, %cleanup.sink.split.i, %if.end.i.do.end_crit_edge
  %retval.0.i27 = phi i32 [ %call22.i, %cm3232_reg_init.exit.do.end_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -19, %if.end.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end8:                                          ; preds = %cm3232_reg_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i27, %do.end ], [ %call9, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  tail call void @iio_device_unregister(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb3
    i32 18, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %als_info2.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %als_info2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %als_info2.i, align 4
  %regs_cmd.i.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs_cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regs_cmd.i.i, align 4
  %9 = lshr i8 %8, 2
  %trunc.i.i = trunc i8 %9 to i3
  %switch.tableidx = xor i3 %trunc.i.i, -4
  %switch.maskindex = zext i3 %switch.tableidx to i8
  %switch.shifted = lshr i8 -13, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %sw.bb.cleanup_crit_edge, label %switch.lookup

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  %11 = zext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cm3232_read_raw, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr [6 x %struct.anon.87], ptr @cm3232_als_it_scales, i32 0, i32 %switch.load
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %val213.i.i = getelementptr [6 x %struct.anon.87], ptr @cm3232_als_it_scales, i32 0, i32 %switch.load, i32 1
  %15 = ptrtoint ptr %val213.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val213.i.i, align 4
  %mul.i = mul i32 %14, 1000000
  %add.i = add i32 %mul.i, %16
  %mlux_per_bit.i = getelementptr inbounds %struct.cm3232_als_info, ptr %6, i32 0, i32 3
  %17 = ptrtoint ptr %mlux_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mlux_per_bit.i, align 4
  %conv.i = sext i32 %18 to i64
  %mlux_per_bit_base_it.i = getelementptr inbounds %struct.cm3232_als_info, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %mlux_per_bit_base_it.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mlux_per_bit_base_it.i, align 4
  %conv3.i = sext i32 %20 to i64
  %mul4.i = mul nsw i64 %conv3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul4.i)
  %cmp164.i.i.i = icmp ult i64 %mul4.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !73

if.then168.i.i.i:                                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i = trunc i64 %mul4.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %mul4.i) #9, !srcloc !74
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %21, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %call6.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %4, i8 noundef zeroext 80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i, label %cm3232_get_lux.exit

do.end.i:                                         ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9) #8
  br label %cleanup

cm3232_get_lux.exit:                              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.i = trunc i32 %call6.i to i16
  %regs_als.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %regs_als.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv11.i, ptr %regs_als.i, align 2
  %conv11.mask.i = and i32 %call6.i, 65535
  %conv13.i = zext i32 %conv11.mask.i to i64
  %mul14.i = mul i64 %dividend.addr.0.i.i.i, %conv13.i
  %calibscale.i = getelementptr inbounds %struct.cm3232_als_info, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %calibscale.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %calibscale.i, align 4
  %conv15.i = sext i32 %24 to i64
  %mul16.i = mul i64 %mul14.i, %conv15.i
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul16.i, i32 0) #9, !srcloc !75
  %asmresult.i.i.i58.i = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i59.i = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul16.i, i64 %asmresult.i.i.i58.i, i32 %asmresult4.i.i.i59.i) #9, !srcloc !76
  %asmresult10.i.i.i71.i = extractvalue { i64, i32 } %26, 0
  %div158.i.i76115.i = lshr i64 %asmresult10.i.i.i71.i, 16
  %27 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %div158.i.i76115.i, i32 0) #9, !srcloc !75
  %asmresult.i.i.i90.i = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i91.i = extractvalue { i64, i32 } %27, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %div158.i.i76115.i, i64 %asmresult.i.i.i90.i, i32 %asmresult4.i.i.i91.i) #9, !srcloc !76
  %asmresult10.i.i.i103.i = extractvalue { i64, i32 } %28, 0
  %div158.i.i108116.i = lshr i64 %asmresult10.i.i.i103.i, 9
  %29 = tail call i64 @llvm.umin.i64(i64 %div158.i.i108116.i, i64 65535) #5
  %conv23.i = trunc i64 %29 to i32
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv23.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %als_info1 = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %als_info1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %als_info1, align 4
  %calibscale = getelementptr inbounds %struct.cm3232_als_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %calibscale to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %calibscale, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %regs_cmd.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %regs_cmd.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %regs_cmd.i, align 4
  %38 = lshr i8 %37, 2
  %trunc.i = trunc i8 %38 to i3
  %switch.tableidx18 = xor i3 %trunc.i, -4
  %switch.maskindex20 = zext i3 %switch.tableidx18 to i8
  %switch.shifted21 = lshr i8 -13, %switch.maskindex20
  %39 = and i8 %switch.shifted21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %switch.lobit22.not = icmp eq i8 %39, 0
  br i1 %switch.lobit22.not, label %sw.bb4.cleanup_crit_edge, label %switch.lookup19

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup19:                                  ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %40 = zext i3 %switch.tableidx18 to i32
  %switch.gep24 = getelementptr inbounds [8 x i32], ptr @switch.table.cm3232_read_raw.18, i32 0, i32 %40
  %41 = ptrtoint ptr %switch.gep24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load25 = load i32, ptr %switch.gep24, align 4
  %arrayidx.i = getelementptr [6 x %struct.anon.87], ptr @cm3232_als_it_scales, i32 0, i32 %switch.load25
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  %val213.i = getelementptr [6 x %struct.anon.87], ptr @cm3232_als_it_scales, i32 0, i32 %switch.load25, i32 1
  %45 = ptrtoint ptr %val213.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val213.i, align 4
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup19, %sw.bb4.cleanup_crit_edge, %sw.bb3, %cm3232_get_lux.exit, %do.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb3 ], [ 1, %cm3232_get_lux.exit ], [ -22, %entry.cleanup_crit_edge ], [ 2, %switch.lookup19 ], [ %call6.i, %do.end.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 18, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %als_info1 = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %als_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %als_info1, align 4
  %calibscale = getelementptr inbounds %struct.cm3232_als_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %calibscale to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val, ptr %calibscale, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %val, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.4.i
    i32 3, label %land.lhs.true.5.i
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb2
  %9 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %val2, label %land.lhs.true.i.cleanup_crit_edge [
    i32 100000, label %land.lhs.true.i.if.then.i_crit_edge
    i32 200000, label %if.then.fold.split.i
    i32 400000, label %if.then.fold.split43.i
    i32 800000, label %if.then.fold.split44.i
  ]

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.fold.split.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.fold.split43.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.fold.split44.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.5.i.if.then.i_crit_edge, %land.lhs.true.4.i.if.then.i_crit_edge, %if.then.fold.split44.i, %if.then.fold.split43.i, %if.then.fold.split.i, %land.lhs.true.i.if.then.i_crit_edge
  %i.038.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.then.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.then.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split43.i ], [ 3, %if.then.fold.split44.i ]
  %it.i = getelementptr [6 x %struct.anon.87], ptr @cm3232_als_it_scales, i32 0, i32 %i.038.lcssa.i, i32 2
  %10 = ptrtoint ptr %it.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %it.i, align 4
  %shl.i = shl i8 %11, 2
  %regs_cmd.i = getelementptr inbounds %struct.cm3232_chip, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regs_cmd.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %regs_cmd.i, align 4
  %14 = and i8 %13, -29
  %or.i = or i8 %14, %shl.i
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp slt i32 %call.i, 0
  br i1 %cmp17.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %regs_cmd.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or.i, ptr %regs_cmd.i, align 4
  br label %cleanup

land.lhs.true.4.i:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %val2)
  %cmp7.4.i = icmp eq i32 %val2, 600000
  br i1 %cmp7.4.i, label %land.lhs.true.4.i.if.then.i_crit_edge, label %land.lhs.true.4.i.cleanup_crit_edge

land.lhs.true.4.i.cleanup_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.4.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true.5.i:                                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %val2)
  %cmp7.5.i = icmp eq i32 %val2, 200000
  br i1 %cmp7.5.i, label %land.lhs.true.5.i.if.then.i_crit_edge, label %land.lhs.true.5.i.cleanup_crit_edge

land.lhs.true.5.i.cleanup_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.5.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

cleanup:                                          ; preds = %land.lhs.true.5.i.cleanup_crit_edge, %land.lhs.true.4.i.cleanup_crit_edge, %if.end.i, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_get_it_available(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 100000) #5
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 200000) #5
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 400000) #5
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 800000) #5
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 600000) #5
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 200000) #5
  %add.5 = add i32 %call.5, %add.4
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %add.5
  %sub3 = sub i32 4096, %add.5
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.8) #5
  %add5 = add i32 %call4, %add.5
  ret i32 %add5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %regs_cmd = getelementptr inbounds %struct.cm3232_chip, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regs_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regs_cmd, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %regs_cmd, align 4
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %8) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3232_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %regs_cmd = getelementptr inbounds %struct.cm3232_chip, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regs_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regs_cmd, align 4
  %8 = and i8 %7, -2
  store i8 %8, ptr %regs_cmd, align 4
  %9 = or i8 %8, 64
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %9) #5
  ret i32 %call7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_cm3232__288_431_cm3232_driver_init6, !1, !"__initcall__kmod_cm3232__288_431_cm3232_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/cm3232.c", i32 431, i32 1}
!2 = !{ptr @__exitcall_cm3232_driver_exit, !1, !"__exitcall_cm3232_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/cm3232.c", i32 433, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/cm3232.c", i32 434, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/cm3232.c", i32 435, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/cm3232.c", i32 420, i32 11}
!12 = !{ptr @cm3232_driver, !13, !"cm3232_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/cm3232.c", i32 418, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/cm3232.c", i32 351, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cm3232_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cm3232_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @cm3232_channels, !23, !"cm3232_channels", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/cm3232.c", i32 300, i32 35}
!24 = !{ptr @cm3232_info, !25, !"cm3232_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/cm3232.c", i32 322, i32 30}
!26 = !{ptr @cm3232_attribute_group, !27, !"cm3232_attribute_group", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/cm3232.c", i32 318, i32 37}
!28 = !{ptr @cm3232_attributes, !29, !"cm3232_attributes", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/cm3232.c", i32 313, i32 26}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/cm3232.c", i32 310, i32 8}
!32 = !{ptr @iio_dev_attr_in_illuminance_integration_time_available, !31, !"iio_dev_attr_in_illuminance_integration_time_available", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/cm3232.c", i32 294, i32 48}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/cm3232.c", i32 297, i32 53}
!37 = !{ptr @cm3232_als_it_scales, !38, !"cm3232_als_it_scales", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/cm3232.c", i32 45, i32 3}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/cm3232.c", i32 219, i32 3}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cm3232_get_lux._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cm3232_get_lux._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/cm3232.c", i32 95, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cm3232_reg_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cm3232_reg_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/cm3232.c", i32 107, i32 3}
!51 = !{ptr @cm3232_reg_init._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cm3232_reg_init._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @cm3232_reg_init._entry.16, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/cm3232.c", i32 118, i32 3}
!55 = !{ptr @cm3232_reg_init._entry_ptr.17, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @cm3232_als_info_default, !57, !"cm3232_als_info_default", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/cm3232.c", i32 62, i32 31}
!58 = !{ptr @cm3232_of_match, !59, !"cm3232_of_match", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/cm3232.c", i32 412, i32 34}
!60 = !{ptr @cm3232_pm_ops, !61, !"cm3232_pm_ops", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/cm3232.c", i32 406, i32 32}
!62 = !{ptr @cm3232_id, !63, !"cm3232_id", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/cm3232.c", i32 372, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2149021044, i64 2149021324, i64 2149021658, i64 2149021992}
!75 = !{i64 1535500, i64 1535527, i64 1535549, i64 1535577}
!76 = !{i64 1535908, i64 1535935, i64 1535968, i64 1535989, i64 1536016, i64 1536042}
