; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/max31856.c_pt.bc'
source_filename = "../drivers/iio/temperature/max31856.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.max31856_data = type { ptr, i32, i8, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_max31856__230_484_max31856_driver_init6 = internal global ptr @max31856_driver_init, section ".initcall6.init", align 4
@max31856_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max31856_id, ptr @max31856_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max31856_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max31856_driver_exit = internal global ptr @max31856_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [72 x i8] c"max31856.author=Paresh Chaudhary <paresh.chaudhary@rockwellcollins.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [68 x i8] c"max31856.author=Patrick Havelange <patrick.havelange@essensium.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [63 x i8] c"max31856.description=Maxim MAX31856 thermocouple sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [47 x i8] c"max31856.file=drivers/iio/temperature/max31856\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"max31856.license=GPL\00", section ".modinfo", align 1
@max31856_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max31856\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max31856\00", [23 x i8] zeroinitializer }, align 32
@max31856_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31856\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max31856_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @max31856_group, ptr @max31856_read_raw, ptr null, ptr null, ptr @max31856_write_raw, ptr null, ptr @max31856_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max31856_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 67108869, i32 0, i32 33554432, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 21, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 5, i32 0, i32 33554432, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thermocouple-type\00", [46 x i8] zeroinitializer }, align 32
@max31856_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Could not read thermocouple type DT property, configuring as a K-Type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max31856_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/temperature/max31856.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max31856_probe._entry_ptr = internal global ptr @max31856_probe._entry, section ".printk_index", align 4
@max31856_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 451, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"error: thermocouple-type %u not supported by max31856\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max31856_probe._entry_ptr.10 = internal global ptr @max31856_probe._entry.7, section ".printk_index", align 4
@max31856_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 457, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: Failed to configure max31856\0A\00", [59 x i8] zeroinitializer }, align 32
@max31856_probe._entry_ptr.13 = internal global ptr @max31856_probe._entry.11, section ".printk_index", align 4
@max31856_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max31856_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max31856_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_fault_ovuv, ptr @iio_dev_attr_fault_oc, ptr @iio_dev_attr_in_temp_filter_notch_center_frequency, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_fault_ovuv = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault_ovuv, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_fault_oc = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault_oc, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_filter_notch_center_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_filter, ptr @set_filter }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fault_ovuv\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fault_oc\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_temp_filter_notch_center_frequency\00", [58 x i8] zeroinitializer }, align 32
@max31856_tc_types = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BEJKNRST", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@switch.table.max31856_write_raw = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5, i32 6, i32 7], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 25, i64 26]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 21]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 25, i64 26]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 50, i64 60]
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"max31856_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 476, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"max31856_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 464, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 478, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"max31856_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 470, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"max31856_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 395, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"max31856_channels\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 54, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 425, i32 47 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 429, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 449, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 457, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"max31856_group\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 391, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"max31856_attributes\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 384, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"iio_dev_attr_fault_ovuv\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_fault_oc\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [51 x i8] c"iio_dev_attr_in_temp_filter_notch_center_frequency\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 379, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 323, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 380, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 381, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"max31856_tc_types\00", align 1
@___asan_gen_.103 = private constant [38 x i8] c"../drivers/iio/temperature/max31856.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 81, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant [32 x i8] c"switch.table.max31856_write_raw\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_max31856_driver_exit, ptr @__initcall__kmod_max31856__230_484_max31856_driver_init6, ptr @max31856_driver_exit, ptr @max31856_probe._entry, ptr @max31856_probe._entry.11, ptr @max31856_probe._entry.7, ptr @max31856_probe._entry_ptr, ptr @max31856_probe._entry_ptr.10, ptr @max31856_probe._entry_ptr.13, ptr @max31856_driver, ptr @max31856_id, ptr @.str, ptr @max31856_of_match, ptr @max31856_info, ptr @max31856_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @max31856_group, ptr @max31856_attributes, ptr @iio_dev_attr_fault_ovuv, ptr @iio_dev_attr_fault_oc, ptr @iio_dev_attr_in_temp_filter_notch_center_frequency, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @max31856_tc_types, ptr @switch.table.max31856_write_raw], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fault_ovuv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fault_oc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_filter_notch_center_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31856_tc_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max31856_write_raw to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max31856_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max31856_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max31856_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max31856_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31856_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #9
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 4
  %filter_50hz = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %filter_50hz to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %filter_50hz, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @max31856_info, ptr %info, align 8
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %6 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %name4, align 8
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call1, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @max31856_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_channels, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %thermocouple_type = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %thermocouple_type, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.end11, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.2) #12
  %12 = ptrtoint ptr %thermocouple_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %thermocouple_type, align 4
  br label %sw.epilog

if.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %thermocouple_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %thermocouple_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %switch = icmp ult i32 %.pr, 8
  br i1 %switch, label %if.end11.sw.epilog_crit_edge, label %do.end15

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %.pr) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end11.sw.epilog_crit_edge, %if.end11.thread
  %call18 = tail call fastcc i32 @max31856_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end23, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end15 ], [ %call18, %do.end23 ], [ %call27, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max31856_init(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i81 = alloca %struct.spi_message, align 4
  %t.i.i82 = alloca %struct.spi_transfer, align 4
  %buf.i83 = alloca [2 x i8], align 1
  %msg.i.i.i68 = alloca %struct.spi_message, align 4
  %t.i.i69 = alloca %struct.spi_transfer, align 4
  %buf.i70 = alloca [2 x i8], align 1
  %reg.addr.i66 = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %reg_cr0_val = alloca i8, align 1
  %reg_cr1_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_cr0_val) #9
  %0 = ptrtoint ptr %reg_cr0_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_cr0_val, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_cr1_val) #9
  %1 = ptrtoint ptr %reg_cr1_val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %reg_cr1_val, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg.addr.i, align 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %4, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %reg_cr0_val, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg_cr0_val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_cr0_val, align 1
  %7 = and i8 %6, 127
  store i8 %7, ptr %reg_cr0_val, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %8, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #9
  %13 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 92)
  %15 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  %17 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.max31856_write.exit_crit_edge

if.end.max31856_write.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %max31856_write.exit

max31856_write.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end.max31856_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %max31856_write.exit.cleanup_crit_edge

max31856_write.exit.cleanup_crit_edge:            ; preds = %max31856_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %max31856_write.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i66)
  %27 = ptrtoint ptr %reg.addr.i66 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %reg.addr.i66, align 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %call.i67 = call i32 @spi_write_then_read(ptr noundef %29, ptr noundef nonnull %reg.addr.i66, i32 noundef 1, ptr noundef nonnull %reg_cr1_val, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool8.not = icmp eq i32 %call.i67, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %30 = ptrtoint ptr %reg_cr1_val to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_cr1_val, align 1
  %32 = and i8 %31, -128
  %thermocouple_type = getelementptr inbounds %struct.max31856_data, ptr %data, i32 0, i32 1
  %33 = ptrtoint ptr %thermocouple_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %thermocouple_type, align 4
  %35 = trunc i32 %34 to i8
  %.masked = and i8 %35, -113
  %36 = or i8 %32, %.masked
  %averaging = getelementptr inbounds %struct.max31856_data, ptr %data, i32 0, i32 3
  %37 = ptrtoint ptr %averaging to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %averaging, align 4
  %.tr = trunc i32 %38 to i8
  %39 = shl i8 %.tr, 4
  %conv21 = or i8 %39, %36
  store i8 %conv21, ptr %reg_cr1_val, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i70) #9
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i70, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -127, ptr %buf.i70, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv21, ptr %40, align 1
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i69) #9
  %45 = getelementptr inbounds i8, ptr %t.i.i69, i32 4
  %46 = call ptr @memset(ptr %45, i32 0, i32 92)
  %47 = ptrtoint ptr %t.i.i69 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i70, ptr %t.i.i69, align 4
  %len1.i.i71 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i69, i32 0, i32 2
  %48 = ptrtoint ptr %len1.i.i71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %len1.i.i71, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i68) #9
  %49 = getelementptr inbounds i8, ptr %msg.i.i.i68, i32 8
  %50 = call ptr @memset(ptr %49, i32 0, i32 40)
  %51 = ptrtoint ptr %msg.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %msg.i.i.i68, ptr %msg.i.i.i68, align 4
  %prev.i.i.i.i.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i68, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i68, ptr %prev.i.i.i.i.i.i.i72, align 4
  %resources.i.i.i.i.i.i73 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i68, i32 0, i32 10
  %53 = ptrtoint ptr %resources.i.i.i.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %resources.i.i.i.i.i.i73, ptr %resources.i.i.i.i.i.i73, align 4
  %prev.i2.i.i.i.i.i.i74 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i68, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %prev.i2.i.i.i.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %resources.i.i.i.i.i.i73, ptr %prev.i2.i.i.i.i.i.i74, align 4
  %transfer_list.i.i.i.i.i75 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i69, i32 0, i32 18
  %call.i.i.i.i.i.i.i76 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i75, ptr noundef nonnull %msg.i.i.i68, ptr noundef nonnull %msg.i.i.i68) #9
  br i1 %call.i.i.i.i.i.i.i76, label %if.end.i.i.i.i.i.i.i78, label %if.end10.max31856_write.exit80_crit_edge

if.end10.max31856_write.exit80_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_write.exit80

if.end.i.i.i.i.i.i.i78:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %transfer_list.i.i.i.i.i75, ptr %prev.i.i.i.i.i.i.i72, align 4
  %56 = ptrtoint ptr %transfer_list.i.i.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i.i68, ptr %transfer_list.i.i.i.i.i75, align 4
  %prev3.i.i.i.i.i.i.i77 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i69, i32 0, i32 18, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i.i68, ptr %prev3.i.i.i.i.i.i.i77, align 4
  %58 = ptrtoint ptr %msg.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %transfer_list.i.i.i.i.i75, ptr %msg.i.i.i68, align 4
  br label %max31856_write.exit80

max31856_write.exit80:                            ; preds = %if.end.i.i.i.i.i.i.i78, %if.end10.max31856_write.exit80_crit_edge
  %call.i.i.i79 = call i32 @spi_sync(ptr noundef %44, ptr noundef nonnull %msg.i.i.i68) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i68) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i69) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i79)
  %tobool24.not = icmp eq i32 %call.i.i.i79, 0
  br i1 %tobool24.not, label %if.end26, label %max31856_write.exit80.cleanup_crit_edge

max31856_write.exit80.cleanup_crit_edge:          ; preds = %max31856_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %max31856_write.exit80
  %59 = ptrtoint ptr %reg_cr0_val to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %reg_cr0_val, align 1
  %61 = and i8 %60, 14
  %filter_50hz = getelementptr inbounds %struct.max31856_data, ptr %data, i32 0, i32 2
  %62 = ptrtoint ptr %filter_50hz to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %filter_50hz, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool39.not = icmp eq i8 %63, 0
  %64 = and i8 %60, 14
  %65 = or i8 %64, -112
  %66 = or i8 %61, -111
  %storemerge = select i1 %tobool39.not, i8 %65, i8 %66
  %67 = ptrtoint ptr %reg_cr0_val to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %storemerge, ptr %reg_cr0_val, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i83) #9
  %68 = getelementptr inbounds [2 x i8], ptr %buf.i83, i32 0, i32 1
  %69 = ptrtoint ptr %buf.i83 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -128, ptr %buf.i83, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %storemerge, ptr %68, align 1
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i82) #9
  %73 = getelementptr inbounds i8, ptr %t.i.i82, i32 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 92)
  %75 = ptrtoint ptr %t.i.i82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i83, ptr %t.i.i82, align 4
  %len1.i.i84 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i82, i32 0, i32 2
  %76 = ptrtoint ptr %len1.i.i84 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %len1.i.i84, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i81) #9
  %77 = getelementptr inbounds i8, ptr %msg.i.i.i81, i32 8
  %78 = call ptr @memset(ptr %77, i32 0, i32 40)
  %79 = ptrtoint ptr %msg.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %msg.i.i.i81, ptr %msg.i.i.i81, align 4
  %prev.i.i.i.i.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i81, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i.i81, ptr %prev.i.i.i.i.i.i.i85, align 4
  %resources.i.i.i.i.i.i86 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i81, i32 0, i32 10
  %81 = ptrtoint ptr %resources.i.i.i.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %resources.i.i.i.i.i.i86, ptr %resources.i.i.i.i.i.i86, align 4
  %prev.i2.i.i.i.i.i.i87 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i81, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %prev.i2.i.i.i.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %resources.i.i.i.i.i.i86, ptr %prev.i2.i.i.i.i.i.i87, align 4
  %transfer_list.i.i.i.i.i88 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i82, i32 0, i32 18
  %call.i.i.i.i.i.i.i89 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i88, ptr noundef nonnull %msg.i.i.i81, ptr noundef nonnull %msg.i.i.i81) #9
  br i1 %call.i.i.i.i.i.i.i89, label %if.end.i.i.i.i.i.i.i91, label %if.end26.max31856_write.exit93_crit_edge

if.end26.max31856_write.exit93_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_write.exit93

if.end.i.i.i.i.i.i.i91:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %prev.i.i.i.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i.i.i.i.i88, ptr %prev.i.i.i.i.i.i.i85, align 4
  %84 = ptrtoint ptr %transfer_list.i.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i.i81, ptr %transfer_list.i.i.i.i.i88, align 4
  %prev3.i.i.i.i.i.i.i90 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i82, i32 0, i32 18, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i.i81, ptr %prev3.i.i.i.i.i.i.i90, align 4
  %86 = ptrtoint ptr %msg.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i.i.i.i.i88, ptr %msg.i.i.i81, align 4
  br label %max31856_write.exit93

max31856_write.exit93:                            ; preds = %if.end.i.i.i.i.i.i.i91, %if.end26.max31856_write.exit93_crit_edge
  %call.i.i.i92 = call i32 @spi_sync(ptr noundef %72, ptr noundef nonnull %msg.i.i.i81) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i81) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i82) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i83) #9
  br label %cleanup

cleanup:                                          ; preds = %max31856_write.exit93, %max31856_write.exit80.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %max31856_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i92, %max31856_write.exit93 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.i.i, %max31856_write.exit.cleanup_crit_edge ], [ %call.i67, %if.end6.cleanup_crit_edge ], [ %call.i.i.i79, %max31856_write.exit80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_cr1_val) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_cr0_val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31856_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.addr.i52.i = alloca i8, align 1
  %reg.addr.i50.i = alloca i8, align 1
  %reg.addr.i.i = alloca i8, align 1
  %reg_val.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 25, label %sw.bb4
    i32 26, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg_val.i) #9
  %3 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !69
  %4 = getelementptr inbounds [3 x i8], ptr %reg_val.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !69
  %6 = getelementptr inbounds [3 x i8], ptr %reg_val.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !69
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel2.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %9, label %sw.bb.max31856_thermocouple_read.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 21, label %sw.bb6.i
  ]

sw.bb.max31856_thermocouple_read.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_thermocouple_read.exit.thread

sw.bb.i:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  %11 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 12, ptr %reg.addr.i.i, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %13, ptr noundef nonnull %reg.addr.i.i, i32 noundef 1, ptr noundef nonnull %reg_val.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.max31856_thermocouple_read.exit.thread_crit_edge

sw.bb.i.max31856_thermocouple_read.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_thermocouple_read.exit.thread

if.end.i:                                         ; preds = %sw.bb.i
  %14 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_val.i, align 1
  %conv.i.i.i = zext i8 %15 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %conv2.i.i.i = zext i8 %17 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %6, align 1
  %conv5.i.i.i = zext i8 %19 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %shr.i = lshr i32 %or6.i.i.i, 5
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool3.not.i = icmp sgt i8 %15, -1
  br i1 %tobool3.not.i, label %if.end.i.sw.epilog.i_crit_edge, label %if.then4.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = or i32 %shr.i, -524288
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i50.i) #9
  %21 = ptrtoint ptr %reg.addr.i50.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 9, ptr %reg.addr.i50.i, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i51.i = call i32 @spi_write_then_read(ptr noundef %23, ptr noundef nonnull %reg.addr.i50.i, i32 noundef 1, ptr noundef nonnull %reg_val.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i50.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool9.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %sw.bb6.i.max31856_thermocouple_read.exit.thread_crit_edge

sw.bb6.i.max31856_thermocouple_read.exit.thread_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_thermocouple_read.exit.thread

if.end11.i:                                       ; preds = %sw.bb6.i
  %24 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_val.i, align 1
  %conv13.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %4, align 1
  %28 = lshr i16 %27, 2
  %29 = zext i16 %28 to i32
  %add.i = add nuw nsw i32 %29, %conv13.i
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %tobool21.not.i = icmp sgt i16 %27, -1
  br i1 %tobool21.not.i, label %if.end11.i.sw.epilog.i_crit_edge, label %if.then22.i

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then22.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub23.i = add nsw i32 %add.i, -16384
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then22.i, %if.then4.i
  %sub23.sink.i = phi i32 [ %sub23.i, %if.then22.i ], [ %sub.i, %if.then4.i ]
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub23.sink.i, ptr %val, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end11.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i52.i) #9
  %32 = ptrtoint ptr %reg.addr.i52.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 15, ptr %reg.addr.i52.i, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i53.i = call i32 @spi_write_then_read(ptr noundef %34, ptr noundef nonnull %reg.addr.i52.i, i32 noundef 1, ptr noundef nonnull %reg_val.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i52.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool27.not.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %sw.epilog.i.max31856_thermocouple_read.exit.thread_crit_edge

sw.epilog.i.max31856_thermocouple_read.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_thermocouple_read.exit.thread

if.end29.i:                                       ; preds = %sw.epilog.i
  %35 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg_val.i, align 1
  %37 = and i8 %36, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool33.not.i = icmp eq i8 %37, 0
  br i1 %tobool33.not.i, label %38, label %if.end29.i.max31856_thermocouple_read.exit.thread_crit_edge

if.end29.i.max31856_thermocouple_read.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max31856_thermocouple_read.exit.thread

max31856_thermocouple_read.exit.thread:           ; preds = %if.end29.i.max31856_thermocouple_read.exit.thread_crit_edge, %sw.epilog.i.max31856_thermocouple_read.exit.thread_crit_edge, %sw.bb6.i.max31856_thermocouple_read.exit.thread_crit_edge, %sw.bb.i.max31856_thermocouple_read.exit.thread_crit_edge, %sw.bb.max31856_thermocouple_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end29.i.max31856_thermocouple_read.exit.thread_crit_edge ], [ %call.i53.i, %sw.epilog.i.max31856_thermocouple_read.exit.thread_crit_edge ], [ -22, %sw.bb.max31856_thermocouple_read.exit.thread_crit_edge ], [ %call.i51.i, %sw.bb6.i.max31856_thermocouple_read.exit.thread_crit_edge ], [ %call.i.i, %sw.bb.i.max31856_thermocouple_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg_val.i) #9
  br label %cleanup

38:                                               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg_val.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %39 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %40)
  %cond = icmp eq i32 %40, 21
  br i1 %cond, label %sw.bb3, label %sw.default

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 15, ptr %val, align 4
  %42 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 625000, ptr %val2, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %val, align 4
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 812500, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %averaging = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %averaging to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %averaging, align 4
  %shl = shl nuw i32 1, %46
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %thermocouple_type = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %thermocouple_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %thermocouple_type, align 4
  %arrayidx = getelementptr [8 x i8], ptr @max31856_tc_types, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %51 to i32
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb4, %sw.default, %sw.bb3, %38, %max31856_thermocouple_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 12, %sw.bb5 ], [ 1, %sw.bb4 ], [ 2, %sw.default ], [ 2, %sw.bb3 ], [ -22, %entry.cleanup_crit_edge ], [ 1, %38 ], [ %retval.0.i.ph, %max31856_thermocouple_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31856_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mask, label %entry.cleanup23_crit_edge [
    i32 25, label %sw.bb
    i32 26, label %for.cond.preheader
  ]

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

for.cond.preheader:                               ; preds = %entry
  %conv9 = trunc i32 %val to i8
  %conv.i = and i32 %val, 255
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  %sub.i38 = add i8 %conv9, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %conv9, i8 %sub.i38
  %switch.tableidx = add i8 %spec.select.i, -66
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 19
  br i1 %6, label %switch.hole_check, label %for.cond.preheader.cleanup23_crit_edge

for.cond.preheader.cleanup23_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

sw.bb:                                            ; preds = %entry
  %7 = add i32 %val, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %7)
  %8 = icmp ult i32 %7, -16
  br i1 %8, label %sw.bb.cleanup23_crit_edge, label %if.end

sw.bb.cleanup23_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.ctlz.i32(i32 %val, i1 false) #9, !range !71
  %shl = lshr i32 -2147483648, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp3 = icmp ult i32 %shl, %val
  %spec.select.v = select i1 %cmp3, i32 32, i32 31
  %spec.select = sub nsw i32 %spec.select.v, %9
  %averaging = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %averaging to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %averaging, align 4
  br label %cleanup23.sink.split

switch.hole_check:                                ; preds = %for.cond.preheader
  %switch.maskindex = zext i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 463625, %switch.maskindex
  %11 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %switch.lobit.not = icmp eq i32 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup23_crit_edge, label %switch.lookup

switch.hole_check.cleanup23_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.max31856_write_raw, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %thermocouple_type = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %thermocouple_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.load, ptr %thermocouple_type, align 4
  br label %cleanup23.sink.split

cleanup23.sink.split:                             ; preds = %switch.lookup, %if.end
  %call6 = tail call fastcc i32 @max31856_init(ptr noundef %1)
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.sink.split, %switch.hole_check.cleanup23_crit_edge, %sw.bb.cleanup23_crit_edge, %for.cond.preheader.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ -22, %sw.bb.cleanup23_crit_edge ], [ -22, %entry.cleanup23_crit_edge ], [ -22, %for.cond.preheader.cleanup23_crit_edge ], [ 0, %cleanup23.sink.split ], [ -22, %switch.hole_check.cleanup23_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max31856_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %mask)
  %cond = icmp eq i32 %mask, 26
  %. = select i1 %cond, i32 12, i32 1
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fault_ovuv(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #9
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  %3 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %reg.addr.i.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i.i, i32 noundef 1, ptr noundef nonnull %reg_val.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.show_fault.exit_crit_edge

entry.show_fault.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %show_fault.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_val.i, align 1
  %and13.i = lshr i8 %7, 1
  %and13.i.lobit = and i8 %and13.i, 1
  %8 = zext i8 %and13.i.lobit to i32
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %8) #9
  br label %show_fault.exit

show_fault.exit:                                  ; preds = %if.end.i, %entry.show_fault.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ %call.i.i, %entry.show_fault.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fault_oc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %reg_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val.i) #9
  %2 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg_val.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  %3 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %reg.addr.i.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i.i, i32 noundef 1, ptr noundef nonnull %reg_val.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.show_fault.exit_crit_edge

entry.show_fault.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %show_fault.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_val.i, align 1
  %and13.i = and i8 %7, 1
  %8 = zext i8 %and13.i to i32
  %call7.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %8) #9
  br label %show_fault.exit

show_fault.exit:                                  ; preds = %if.end.i, %entry.show_fault.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ %call.i.i, %entry.show_fault.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_filter(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %filter_50hz = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %filter_50hz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter_50hz, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 60, i32 50
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %cond)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_filter(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #9
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %freq, align 4, !annotation !69
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %freq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 50, label %if.end.sw.epilog_crit_edge
    i32 60, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %filter_50hz4 = getelementptr inbounds %struct.max31856_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %filter_50hz4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %filter_50hz4, align 4
  %call5 = call fastcc i32 @max31856_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !48, !50, !51, !53, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_max31856__230_484_max31856_driver_init6, !1, !"__initcall__kmod_max31856__230_484_max31856_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/max31856.c", i32 484, i32 1}
!2 = !{ptr @__exitcall_max31856_driver_exit, !1, !"__exitcall_max31856_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/max31856.c", i32 486, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/max31856.c", i32 487, i32 1}
!7 = !{ptr @__UNIQUE_ID_description233, !8, !"__UNIQUE_ID_description233", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/max31856.c", i32 488, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/iio/temperature/max31856.c", i32 489, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/max31856.c", i32 478, i32 11}
!14 = !{ptr @max31856_driver, !15, !"max31856_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/max31856.c", i32 476, i32 26}
!16 = !{ptr @max31856_id, !17, !"max31856_id", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/max31856.c", i32 464, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/temperature/max31856.c", i32 425, i32 47}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/temperature/max31856.c", i32 429, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @max31856_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @max31856_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/temperature/max31856.c", i32 449, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max31856_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @max31856_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/temperature/max31856.c", i32 457, i32 3}
!35 = !{ptr @max31856_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max31856_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @max31856_info, !38, !"max31856_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/temperature/max31856.c", i32 395, i32 30}
!39 = !{ptr @max31856_group, !40, !"max31856_group", i1 false, i1 false}
!40 = !{!"../drivers/iio/temperature/max31856.c", i32 391, i32 37}
!41 = !{ptr @max31856_attributes, !42, !"max31856_attributes", i1 false, i1 false}
!42 = !{!"../drivers/iio/temperature/max31856.c", i32 384, i32 26}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/temperature/max31856.c", i32 379, i32 8}
!45 = !{ptr @iio_dev_attr_fault_ovuv, !44, !"iio_dev_attr_fault_ovuv", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/temperature/max31856.c", i32 323, i32 22}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/temperature/max31856.c", i32 380, i32 8}
!50 = !{ptr @iio_dev_attr_fault_oc, !49, !"iio_dev_attr_fault_oc", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/temperature/max31856.c", i32 381, i32 8}
!53 = !{ptr @iio_dev_attr_in_temp_filter_notch_center_frequency, !52, !"iio_dev_attr_in_temp_filter_notch_center_frequency", i1 false, i1 false}
!54 = !{ptr @max31856_tc_types, !55, !"max31856_tc_types", i1 false, i1 false}
!55 = !{!"../drivers/iio/temperature/max31856.c", i32 81, i32 19}
!56 = !{ptr @max31856_channels, !57, !"max31856_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/temperature/max31856.c", i32 54, i32 35}
!58 = !{ptr @max31856_of_match, !59, !"max31856_of_match", i1 false, i1 false}
!59 = !{!"../drivers/iio/temperature/max31856.c", i32 470, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i8 0, i8 2}
!71 = !{i32 0, i32 33}
