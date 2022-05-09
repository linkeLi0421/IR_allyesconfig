; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/max31865.c_pt.bc'
source_filename = "../drivers/iio/temperature/max31865.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.max31865_data = type { ptr, %struct.mutex, i8, i8, [30 x i8], [2 x i8], [126 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_max31865__230_345_max31865_driver_init6 = internal global ptr @max31865_driver_init, section ".initcall6.init", align 4
@max31865_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @max31865_id, ptr @max31865_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max31865_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max31865_driver_exit = internal global ptr @max31865_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [61 x i8] c"max31865.author=Navin Sankar Velliangiri <navin@linumiz.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [75 x i8] c"max31865.description=Maxim MAX31865 RTD-to-Digital Converter sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [47 x i8] c"max31865.file=drivers/iio/temperature/max31865\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"max31865.license=GPL v2\00", section ".modinfo", align 1
@max31865_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"max31865\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max31865\00", [23 x i8] zeroinitializer }, align 32
@max31865_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31865\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max31865_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@max31865_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @max31865_group, ptr @max31865_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max31865_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"maxim,3-wire\00", [19 x i8] zeroinitializer }, align 32
@max31865_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 318, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: Failed to configure max31865\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max31865_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/temperature/max31865.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max31865_probe._entry_ptr = internal global ptr @max31865_probe._entry, section ".printk_index", align 4
@max31865_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max31865_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max31865_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_fault_ovuv, ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr @iio_dev_attr_in_filter_notch_center_frequency, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_fault_ovuv = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault_ovuv, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @max31865_show_samp_freq, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_filter_notch_center_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_filter, ptr @set_filter }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fault_ovuv\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@max31865_show_samp_freq = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"50 60\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"in_filter_notch_center_frequency\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 50, i64 60]
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"max31865_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 337, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"max31865_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 325, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 339, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"max31865_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 331, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 300, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"max31865_info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 281, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"max31865_channels\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 43, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 308, i32 46 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 318, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"max31865_group\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 277, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"max31865_attributes\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 270, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"iio_dev_attr_fault_ovuv\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [46 x i8] c"iio_dev_attr_in_filter_notch_center_frequency\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 266, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 211, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"max31865_show_samp_freq\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 41, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 265, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [38 x i8] c"../drivers/iio/temperature/max31865.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 267, i32 8 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_max31865_driver_exit, ptr @__initcall__kmod_max31865__230_345_max31865_driver_init6, ptr @max31865_driver_exit, ptr @max31865_probe._entry, ptr @max31865_probe._entry_ptr, ptr @max31865_driver, ptr @max31865_id, ptr @.str, ptr @max31865_of_match, ptr @max31865_probe.__key, ptr @.str.1, ptr @max31865_info, ptr @max31865_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @max31865_group, ptr @max31865_attributes, ptr @iio_dev_attr_fault_ovuv, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_dev_attr_in_filter_notch_center_frequency, ptr @.str.8, ptr @.str.9, ptr @max31865_show_samp_freq, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fault_ovuv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_filter_notch_center_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31865_show_samp_freq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max31865_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max31865_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max31865_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max31865_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31865_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %filter_50hz = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %filter_50hz to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %filter_50hz, align 32
  %lock = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max31865_probe.__key) #7
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @max31865_info, ptr %info, align 8
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %name4, align 8
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call1, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @max31865_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_channels, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool.i.not = icmp ne ptr %call.i, null
  %spec.select = zext i1 %tobool.i.not to i8
  %11 = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %11, align 1
  %call10 = tail call fastcc i32 @max31865_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call19, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max31865_init(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg.addr.i, align 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 128
  %buf.i = getelementptr inbounds %struct.max31865_data, ptr %data, i32 0, i32 5
  %call.i = call i32 @spi_write_then_read(ptr noundef %2, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef %buf.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i, align 128
  %three_wire = getelementptr inbounds %struct.max31865_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %three_wire to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %three_wire, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  %7 = or i8 %4, 16
  %spec.select = select i1 %tobool1.not, i8 %4, i8 %7
  %filter_50hz = getelementptr inbounds %struct.max31865_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %filter_50hz to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %filter_50hz, align 32, !range !61
  %cfg.1 = or i8 %spec.select, %9
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %buf.i, align 128
  %arrayidx14 = getelementptr %struct.max31865_data, ptr %data, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cfg.1, ptr %arrayidx14, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %14 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.max31865_write.exit_crit_edge

if.end.max31865_write.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %max31865_write.exit

max31865_write.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %if.end.max31865_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %max31865_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %max31865_write.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31865_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i47.i = alloca %struct.spi_message, align 4
  %t.i.i.i48.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i.i49.i = alloca i8, align 1
  %reg.addr.i44.i = alloca i8, align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i.i = alloca i8, align 1
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %reg.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #7
  %3 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg.addr.i.i.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %buf.i.i.i = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 5
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %reg.addr.i.i.i, i32 noundef 1, ptr noundef %buf.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.max31865_rtd_read.exit_crit_edge

sw.bb.max31865_rtd_read.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_rtd_read.exit

if.end.i.i:                                       ; preds = %sw.bb
  %6 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.i.i.i, align 128
  store i8 -128, ptr %buf.i.i.i, align 128
  %8 = or i8 %7, -128
  %arrayidx5.i.i = getelementptr %struct.max31865_data, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx5.i.i, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  %12 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 92)
  %14 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.end.i.i.enable_bias.exit.i_crit_edge

if.end.i.i.enable_bias.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_bias.exit.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %enable_bias.exit.i

enable_bias.exit.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.end.i.i.enable_bias.exit.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %enable_bias.exit.i.max31865_rtd_read.exit_crit_edge

enable_bias.exit.i.max31865_rtd_read.exit_crit_edge: ; preds = %enable_bias.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_rtd_read.exit

if.end.i:                                         ; preds = %enable_bias.exit.i
  call void @msleep(i32 noundef 11) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %26 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %reg.addr.i.i, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %28, ptr noundef nonnull %reg.addr.i.i, i32 noundef 1, ptr noundef %buf.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.max31865_rtd_read.exit_crit_edge

if.end.i.max31865_rtd_read.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_rtd_read.exit

if.end4.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf.i.i.i, align 128
  %31 = or i8 %30, 34
  store i8 -128, ptr %buf.i.i.i, align 128
  %32 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx5.i.i, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %35 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 92)
  %37 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %39 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end4.i.max31865_write.exit.i_crit_edge

if.end4.i.max31865_write.exit.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %max31865_write.exit.i

max31865_write.exit.i:                            ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end4.i.max31865_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %34, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %max31865_write.exit.i.max31865_rtd_read.exit_crit_edge

max31865_write.exit.i.max31865_rtd_read.exit_crit_edge: ; preds = %max31865_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_rtd_read.exit

if.end13.i:                                       ; preds = %max31865_write.exit.i
  %filter_50hz.i = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %filter_50hz.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %filter_50hz.i, align 32, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool14.not.i = icmp eq i8 %50, 0
  %..i = select i1 %tobool14.not.i, i32 52, i32 63
  call void @msleep(i32 noundef %..i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i44.i) #7
  %51 = ptrtoint ptr %reg.addr.i44.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %reg.addr.i44.i, align 1
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 128
  %call.i46.i = call i32 @spi_write_then_read(ptr noundef %53, ptr noundef nonnull %reg.addr.i44.i, i32 noundef 1, ptr noundef %buf.i.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i44.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool18.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end13.i.max31865_rtd_read.exit_crit_edge

if.end13.i.max31865_rtd_read.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_rtd_read.exit

if.end20.i:                                       ; preds = %if.end13.i
  %54 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %buf.i.i.i, align 1
  %56 = lshr i16 %55, 1
  %57 = zext i16 %56 to i32
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i49.i) #7
  %59 = ptrtoint ptr %reg.addr.i.i49.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %reg.addr.i.i49.i, align 1
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 128
  %call.i.i51.i = call i32 @spi_write_then_read(ptr noundef %61, ptr noundef nonnull %reg.addr.i.i49.i, i32 noundef 1, ptr noundef %buf.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i49.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.end.i60.i, label %if.end20.i.max31865_rtd_read.exit_crit_edge

if.end20.i.max31865_rtd_read.exit_crit_edge:      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_rtd_read.exit

if.end.i60.i:                                     ; preds = %if.end20.i
  %62 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %buf.i.i.i, align 128
  %64 = and i8 %63, 127
  store i8 -128, ptr %buf.i.i.i, align 128
  %65 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx5.i.i, align 1
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i48.i) #7
  %68 = getelementptr inbounds i8, ptr %t.i.i.i48.i, i32 4
  %69 = call ptr @memset(ptr %68, i32 0, i32 92)
  %70 = ptrtoint ptr %t.i.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i.i.i, ptr %t.i.i.i48.i, align 4
  %len1.i.i.i54.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i48.i, i32 0, i32 2
  %71 = ptrtoint ptr %len1.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %len1.i.i.i54.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i47.i) #7
  %72 = getelementptr inbounds i8, ptr %msg.i.i.i.i47.i, i32 8
  %73 = call ptr @memset(ptr %72, i32 0, i32 40)
  %74 = ptrtoint ptr %msg.i.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %msg.i.i.i.i47.i, ptr %msg.i.i.i.i47.i, align 4
  %prev.i.i.i.i.i.i.i.i55.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i47.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i.i.i47.i, ptr %prev.i.i.i.i.i.i.i.i55.i, align 4
  %resources.i.i.i.i.i.i.i56.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i47.i, i32 0, i32 10
  %76 = ptrtoint ptr %resources.i.i.i.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i.i.i.i.i56.i, ptr %resources.i.i.i.i.i.i.i56.i, align 4
  %prev.i2.i.i.i.i.i.i.i57.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i47.i, i32 0, i32 10, i32 1
  %77 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i.i.i.i.i56.i, ptr %prev.i2.i.i.i.i.i.i.i57.i, align 4
  %transfer_list.i.i.i.i.i.i58.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i48.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i59.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i58.i, ptr noundef nonnull %msg.i.i.i.i47.i, ptr noundef nonnull %msg.i.i.i.i47.i) #7
  br i1 %call.i.i.i.i.i.i.i.i59.i, label %if.end.i.i.i.i.i.i.i.i62.i, label %if.end.i60.i.max31865_write.exit.i64.i_crit_edge

if.end.i60.i.max31865_write.exit.i64.i_crit_edge: ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max31865_write.exit.i64.i

if.end.i.i.i.i.i.i.i.i62.i:                       ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i.i.i.i.i.i58.i, ptr %prev.i.i.i.i.i.i.i.i55.i, align 4
  %79 = ptrtoint ptr %transfer_list.i.i.i.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i.i.i47.i, ptr %transfer_list.i.i.i.i.i.i58.i, align 4
  %prev3.i.i.i.i.i.i.i.i61.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i48.i, i32 0, i32 18, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i.i.i47.i, ptr %prev3.i.i.i.i.i.i.i.i61.i, align 4
  %81 = ptrtoint ptr %msg.i.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i.i.i.i.i.i58.i, ptr %msg.i.i.i.i47.i, align 4
  br label %max31865_write.exit.i64.i

max31865_write.exit.i64.i:                        ; preds = %if.end.i.i.i.i.i.i.i.i62.i, %if.end.i60.i.max31865_write.exit.i64.i_crit_edge
  %call.i.i.i.i63.i = call i32 @spi_sync(ptr noundef %67, ptr noundef nonnull %msg.i.i.i.i47.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i47.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i48.i) #7
  br label %max31865_rtd_read.exit

max31865_rtd_read.exit:                           ; preds = %max31865_write.exit.i64.i, %if.end20.i.max31865_rtd_read.exit_crit_edge, %if.end13.i.max31865_rtd_read.exit_crit_edge, %max31865_write.exit.i.max31865_rtd_read.exit_crit_edge, %if.end.i.max31865_rtd_read.exit_crit_edge, %enable_bias.exit.i.max31865_rtd_read.exit_crit_edge, %sw.bb.max31865_rtd_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i.i.i, %enable_bias.exit.i.max31865_rtd_read.exit_crit_edge ], [ %call.i.i, %if.end.i.max31865_rtd_read.exit_crit_edge ], [ %call.i.i.i.i, %max31865_write.exit.i.max31865_rtd_read.exit_crit_edge ], [ %call.i46.i, %if.end13.i.max31865_rtd_read.exit_crit_edge ], [ %call.i.i.i.i63.i, %max31865_write.exit.i64.i ], [ %call.i.i51.i, %if.end20.i.max31865_rtd_read.exit_crit_edge ], [ %call.i.i.i, %sw.bb.max31865_rtd_read.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %.call1 = select i1 %tobool.not, i32 1, i32 %retval.0.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 31, ptr %val, align 4
  %83 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 250000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %max31865_rtd_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb3 ], [ %.call1, %max31865_rtd_read.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fault_ovuv(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %2 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %reg.addr.i.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %buf.i.i = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 5
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %4, ptr noundef nonnull %reg.addr.i.i, i32 noundef 1, ptr noundef %buf.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.show_fault.exit_crit_edge

entry.show_fault.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %show_fault.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i.i, align 128
  %7 = lshr i8 %6, 2
  %.lobit.i = and i8 %7, 1
  %8 = zext i8 %.lobit.i to i32
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %8) #7
  br label %show_fault.exit

show_fault.exit:                                  ; preds = %if.end.i, %entry.show_fault.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end.i ], [ %call.i.i, %entry.show_fault.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_filter(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %filter_50hz = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %filter_50hz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter_50hz, align 32, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 60, i32 50
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %cond)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_filter(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #7
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %freq, align 4, !annotation !62
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %freq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 50, label %if.end.sw.epilog_crit_edge
    i32 60, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %filter_50hz4 = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %filter_50hz4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %filter_50hz4, align 32
  %lock = getelementptr inbounds %struct.max31865_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call5 = call fastcc i32 @max31865_init(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  %len.call5 = select i1 %tobool7.not, i32 %len, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %len.call5, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_max31865__230_345_max31865_driver_init6, !1, !"__initcall__kmod_max31865__230_345_max31865_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/max31865.c", i32 345, i32 1}
!2 = !{ptr @__exitcall_max31865_driver_exit, !1, !"__exitcall_max31865_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/max31865.c", i32 347, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/max31865.c", i32 348, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/max31865.c", i32 349, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/temperature/max31865.c", i32 339, i32 11}
!12 = !{ptr @max31865_driver, !13, !"max31865_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/max31865.c", i32 337, i32 26}
!14 = !{ptr @max31865_id, !15, !"max31865_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/max31865.c", i32 325, i32 35}
!16 = !{ptr @max31865_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/max31865.c", i32 300, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/temperature/max31865.c", i32 308, i32 46}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/temperature/max31865.c", i32 318, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max31865_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @max31865_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @max31865_info, !30, !"max31865_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/temperature/max31865.c", i32 281, i32 30}
!31 = !{ptr @max31865_group, !32, !"max31865_group", i1 false, i1 false}
!32 = !{!"../drivers/iio/temperature/max31865.c", i32 277, i32 37}
!33 = !{ptr @max31865_attributes, !34, !"max31865_attributes", i1 false, i1 false}
!34 = !{!"../drivers/iio/temperature/max31865.c", i32 270, i32 26}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/temperature/max31865.c", i32 266, i32 8}
!37 = !{ptr @iio_dev_attr_fault_ovuv, !36, !"iio_dev_attr_fault_ovuv", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/temperature/max31865.c", i32 211, i32 22}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/temperature/max31865.c", i32 265, i32 8}
!42 = !{ptr @iio_const_attr_sampling_frequency_available, !41, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!43 = !{ptr @max31865_show_samp_freq, !44, !"max31865_show_samp_freq", i1 false, i1 false}
!44 = !{!"../drivers/iio/temperature/max31865.c", i32 41, i32 19}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/temperature/max31865.c", i32 267, i32 8}
!47 = !{ptr @iio_dev_attr_in_filter_notch_center_frequency, !46, !"iio_dev_attr_in_filter_notch_center_frequency", i1 false, i1 false}
!48 = !{ptr @max31865_channels, !49, !"max31865_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/temperature/max31865.c", i32 43, i32 35}
!50 = !{ptr @max31865_of_match, !51, !"max31865_of_match", i1 false, i1 false}
!51 = !{!"../drivers/iio/temperature/max31865.c", i32 331, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"auto-init"}
