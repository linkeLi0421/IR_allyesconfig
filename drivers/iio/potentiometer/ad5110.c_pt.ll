; ModuleID = '/llk/IR_all_yes/drivers/iio/potentiometer/ad5110.c_pt.bc'
source_filename = "../drivers/iio/potentiometer/ad5110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ad5110_cfg = type { i32, i32, i32 }
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
%struct.ad5110_data = type { ptr, i16, i8, %struct.mutex, ptr, [24 x i8], [2 x i8], [126 x i8] }

@__initcall__kmod_ad5110__288_340_ad5110_driver_init6 = internal global ptr @ad5110_driver_init, section ".initcall6.init", align 4
@ad5110_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ad5110_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5110_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad5110_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad5110_driver_exit = internal global ptr @ad5110_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"ad5110.author=Mugilraj Dhavachelvan <dmugil2000@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [48 x i8] c"ad5110.description=AD5110 digital potentiometer\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"ad5110.file=drivers/iio/potentiometer/ad5110\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"ad5110.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5110\00", [25 x i8] zeroinitializer }, align 32
@ad5110_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5110-10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ad5110_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5110-80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad5110_cfg, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5112-05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad5110_cfg, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5112-10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad5110_cfg, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5112-80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad5110_cfg, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5114-10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad5110_cfg, i64 60) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5114-80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad5110_cfg, i64 72) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@ad5110_id = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5110-10\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad5110-80\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ad5112-05\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ad5112-10\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ad5112-80\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ad5114-10\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ad5114-80\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ad5110_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@ad5110_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Refresh RDAC with EEPROM failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5110_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/potentiometer/ad5110.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5110_probe._entry_ptr = internal global ptr @ad5110_probe._entry, section ".printk_index", align 4
@ad5110_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Read resistor tolerance failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ad5110_probe._entry_ptr.9 = internal global ptr @ad5110_probe._entry.7, section ".printk_index", align 4
@ad5110_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad5110_attribute_group, ptr @ad5110_read_raw, ptr null, ptr null, ptr @ad5110_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5110_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 524301, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 }], [40 x i8] zeroinitializer }, align 32
@ad5110_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad5110_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad5110_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_store_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_store_eeprom = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @store_eeprom_show, ptr @store_eeprom_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"store_eeprom\00", [19 x i8] zeroinitializer }, align 32
@store_eeprom_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDAC to EEPROM write failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"store_eeprom_store\00", [45 x i8] zeroinitializer }, align 32
@store_eeprom_store._entry_ptr = internal global ptr @store_eeprom_store._entry, section ".printk_index", align 4
@ad5110_cfg = internal constant { [7 x %struct.ad5110_cfg], [44 x i8] } { [7 x %struct.ad5110_cfg] [%struct.ad5110_cfg { i32 128, i32 10, i32 0 }, %struct.ad5110_cfg { i32 128, i32 80, i32 0 }, %struct.ad5110_cfg { i32 64, i32 5, i32 1 }, %struct.ad5110_cfg { i32 64, i32 10, i32 1 }, %struct.ad5110_cfg { i32 64, i32 80, i32 1 }, %struct.ad5110_cfg { i32 32, i32 10, i32 2 }, %struct.ad5110_cfg { i32 32, i32 80, i32 2 }], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 19]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"ad5110_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 332, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 334, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"ad5110_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 269, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"ad5110_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 281, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 306, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 313, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 319, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"ad5110_info\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 258, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"ad5110_channels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 72, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"ad5110_attribute_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 195, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"ad5110_attributes\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 190, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_store_eeprom\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 188, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 178, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"ad5110_cfg\00", align 1
@___asan_gen_.84 = private constant [38 x i8] c"../drivers/iio/potentiometer/ad5110.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 49, i32 32 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ad5110_driver_exit, ptr @__initcall__kmod_ad5110__288_340_ad5110_driver_init6, ptr @ad5110_driver_exit, ptr @ad5110_probe._entry, ptr @ad5110_probe._entry.7, ptr @ad5110_probe._entry_ptr, ptr @ad5110_probe._entry_ptr.9, ptr @store_eeprom_store._entry, ptr @store_eeprom_store._entry_ptr, ptr @ad5110_driver, ptr @.str, ptr @ad5110_of_match, ptr @ad5110_id, ptr @ad5110_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ad5110_info, ptr @ad5110_channels, ptr @ad5110_attribute_group, ptr @ad5110_attributes, ptr @iio_dev_attr_store_eeprom, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ad5110_cfg], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_store_eeprom to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_eeprom_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5110_cfg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5110_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad5110_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5110_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5110_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5110_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 256) #5
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 128
  %lock = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5110_probe.__key) #5
  %enable = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %enable, align 2
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev1) #5
  %cfg = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %cfg, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %buf.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %buf.i, align 128
  %arrayidx2.i = getelementptr %struct.ad5110_data, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx2.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef %buf.i, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  %..i = select i1 %cmp4.not.i, i32 0, i32 -5
  %ret.0.i = select i1 %cmp.i, i32 %call.i.i, i32 %..i
  tail call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %buf.i, align 128
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx2.i, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef %buf.i, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end11.do.end17_crit_edge, label %if.else.i.i

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.else.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp5.not.i.i, label %if.end8.i.i, label %if.else.i.i.do.end17_crit_edge

if.else.i.i.do.end17_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end8.i.i:                                      ; preds = %if.else.i.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %call.i39.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef %buf.i, i32 noundef 1, i16 noundef zeroext 513) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i)
  %cmp13.i.i = icmp slt i32 %call.i39.i.i, 0
  br i1 %cmp13.i.i, label %if.end8.i.i.do.end17_crit_edge, label %if.else16.i.i

if.end8.i.i.do.end17_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.else16.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i.i)
  %cmp17.not.i.i = icmp eq i32 %call.i39.i.i, 1
  br i1 %cmp17.not.i.i, label %if.end.i, label %if.else16.i.i.do.end17_crit_edge

if.else16.i.i.do.end17_crit_edge:                 ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end.i:                                         ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.i, align 128
  %conv24.i.i = zext i8 %16 to i32
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg, align 4
  %kohms.i = getelementptr inbounds %struct.ad5110_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %kohms.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kohms.i, align 4
  %and.i = and i32 %conv24.i.i, 127
  %mul.i = mul nuw nsw i32 %and.i, 10
  %mul1.i = mul i32 %mul.i, %20
  %div1.i = lshr i32 %mul1.i, 3
  %conv.i = trunc i32 %div1.i to i16
  %tol.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 1
  %and2.i = and i32 %conv24.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %conv8.i = sub i16 0, %conv.i
  %spec.select = select i1 %tobool3.not.i, i16 %conv8.i, i16 %conv.i
  %21 = ptrtoint ptr %tol.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %spec.select, ptr %tol.i, align 4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ad5110_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ad5110_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name19 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %26 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %name, ptr %name19, align 8
  %call20 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

do.end17:                                         ; preds = %if.else16.i.i.do.end17_crit_edge, %if.end8.i.i.do.end17_crit_edge, %if.else.i.i.do.end17_crit_edge, %if.end11.do.end17_crit_edge
  %ret.0.i.ph.i = phi i32 [ -5, %if.else16.i.i.do.end17_crit_edge ], [ -5, %if.else.i.i.do.end17_crit_edge ], [ %call.i39.i.i, %if.end8.i.i.do.end17_crit_edge ], [ %call.i.i.i, %if.end11.do.end17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end.i, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %do.end10 ], [ %ret.0.i.ph.i, %do.end17 ], [ %call20, %if.end.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5110_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb6
    i32 19, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %buf.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %buf.i, align 128
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %conv.i = trunc i32 %5 to i8
  %arrayidx2.i = getelementptr %struct.ad5110_data, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef %buf.i, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.ad5110_read.exit.thread_crit_edge, label %if.else.i

sw.bb.ad5110_read.exit.thread_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp5.not.i, label %if.end8.i, label %if.else.i.ad5110_read.exit.thread_crit_edge

if.else.i.ad5110_read.exit.thread_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

if.end8.i:                                        ; preds = %if.else.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %call.i39.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef %buf.i, i32 noundef 1, i16 noundef zeroext 513) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp13.i = icmp slt i32 %call.i39.i, 0
  br i1 %cmp13.i, label %if.end8.i.ad5110_read.exit.thread_crit_edge, label %if.else16.i

if.end8.i.ad5110_read.exit.thread_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

if.else16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i)
  %cmp17.not.i = icmp eq i32 %call.i39.i, 1
  br i1 %cmp17.not.i, label %if.end, label %if.else16.i.ad5110_read.exit.thread_crit_edge

if.else16.i.ad5110_read.exit.thread_crit_edge:    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

ad5110_read.exit.thread:                          ; preds = %if.else16.i.ad5110_read.exit.thread_crit_edge, %if.end8.i.ad5110_read.exit.thread_crit_edge, %if.else.i.ad5110_read.exit.thread_crit_edge, %sw.bb.ad5110_read.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -5, %if.else16.i.ad5110_read.exit.thread_crit_edge ], [ -5, %if.else.i.ad5110_read.exit.thread_crit_edge ], [ %call.i39.i, %if.end8.i.ad5110_read.exit.thread_crit_edge ], [ %call.i.i, %sw.bb.ad5110_read.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.i, align 128
  %conv24.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv24.i, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %cfg = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 4
  %shift = getelementptr inbounds %struct.ad5110_cfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift, align 4
  %shr = ashr i32 %15, %19
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cfg3 = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %mul = mul i32 %23, 70
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %val, align 4
  %25 = load ptr, ptr %cfg3, align 4
  %kohms = getelementptr inbounds %struct.ad5110_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %kohms to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %kohms, align 4
  %mul5 = mul i32 %27, 1000
  %tol = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %tol to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tol, align 4
  %conv = sext i16 %29 to i32
  %add = add i32 %mul5, %conv
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cfg7 = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %cfg7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg7, align 4
  %kohms8 = getelementptr inbounds %struct.ad5110_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %kohms8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %kohms8, align 4
  %mul9 = mul i32 %34, 1000
  %tol10 = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %tol10 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tol10, align 4
  %conv11 = sext i16 %36 to i32
  %add12 = add i32 %mul9, %conv11
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add12, ptr %val, align 4
  %38 = load ptr, ptr %cfg7, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %41 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val2, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enable, align 2, !range !60
  %44 = zext i8 %43 to i32
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb6, %sw.bb2, %if.end, %ad5110_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb15 ], [ 10, %sw.bb6 ], [ 10, %sw.bb2 ], [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i.ph, %ad5110_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5110_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 19, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cfg = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp = icmp slt i32 %6, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp1 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %shift = getelementptr inbounds %struct.ad5110_cfg, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift, align 4
  %shl = shl i32 %val, %8
  %conv = trunc i32 %shl to i8
  %lock.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %buf.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %buf.i, align 128
  %arrayidx2.i = getelementptr %struct.ad5110_data, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx2.i, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef %buf.i, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  %..i = select i1 %cmp4.not.i, i32 0, i32 -5
  %ret.0.i = select i1 %cmp.i, i32 %call.i.i, i32 %..i
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %13 = icmp ugt i32 %val, 1
  br i1 %13, label %sw.bb4.cleanup_crit_edge, label %if.end11

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %sw.bb4
  %enable = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable, align 2, !range !60
  %16 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp13 = icmp eq i32 %16, %val
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool17 = icmp ne i32 %val, 0
  %not.tobool17 = xor i1 %tobool17, true
  %conv18 = zext i1 %not.tobool17 to i8
  %lock.i40 = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i40, i32 noundef 0) #5
  %buf.i41 = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %buf.i41, align 128
  %arrayidx2.i42 = getelementptr %struct.ad5110_data, ptr %1, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx2.i42 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv18, ptr %arrayidx2.i42, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %call.i.i43 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef %buf.i41, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %cmp.i44 = icmp slt i32 %call.i.i43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i43)
  %cmp4.not.i45 = icmp eq i32 %call.i.i43, 2
  %..i46 = select i1 %cmp4.not.i45, i32 0, i32 -5
  %ret.0.i47 = select i1 %cmp.i44, i32 %call.i.i43, i32 %..i46
  tail call void @mutex_unlock(ptr noundef %lock.i40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i47)
  %tobool20.not = icmp eq i32 %ret.0.i47, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %frombool = zext i1 %tobool17 to i8
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %enable, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %ret.0.i, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %ret.0.i47, %if.end16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_eeprom_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %lock.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %buf.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %buf.i, align 128
  %arrayidx2.i = getelementptr %struct.ad5110_data, ptr %1, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef %buf.i, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.ad5110_read.exit.thread_crit_edge, label %if.else.i

entry.ad5110_read.exit.thread_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp5.not.i, label %if.end8.i, label %if.else.i.ad5110_read.exit.thread_crit_edge

if.else.i.ad5110_read.exit.thread_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

if.end8.i:                                        ; preds = %if.else.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %call.i39.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef %buf.i, i32 noundef 1, i16 noundef zeroext 513) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp13.i = icmp slt i32 %call.i39.i, 0
  br i1 %cmp13.i, label %if.end8.i.ad5110_read.exit.thread_crit_edge, label %if.else16.i

if.end8.i.ad5110_read.exit.thread_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

if.else16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i)
  %cmp17.not.i = icmp eq i32 %call.i39.i, 1
  br i1 %cmp17.not.i, label %if.end, label %if.else16.i.ad5110_read.exit.thread_crit_edge

if.else16.i.ad5110_read.exit.thread_crit_edge:    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5110_read.exit.thread

ad5110_read.exit.thread:                          ; preds = %if.else16.i.ad5110_read.exit.thread_crit_edge, %if.end8.i.ad5110_read.exit.thread_crit_edge, %if.else.i.ad5110_read.exit.thread_crit_edge, %entry.ad5110_read.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -5, %if.else16.i.ad5110_read.exit.thread_crit_edge ], [ -5, %if.else.i.ad5110_read.exit.thread_crit_edge ], [ %call.i39.i, %if.end8.i.ad5110_read.exit.thread_crit_edge ], [ %call.i.i, %entry.ad5110_read.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.i, align 128
  %conv24.i = zext i8 %9 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  %cfg = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 4
  %shift = getelementptr inbounds %struct.ad5110_cfg, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift, align 4
  %shr = lshr i32 %conv24.i, %13
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %val, align 4
  %call3 = call i32 @iio_format_value(ptr noundef %buf, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad5110_read.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %ret.0.i.ph, %ad5110_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_eeprom_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %buf.i = getelementptr inbounds %struct.ad5110_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buf.i, align 128
  %arrayidx2.i = getelementptr %struct.ad5110_data, ptr %1, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef %buf.i, i32 noundef 2, i16 noundef zeroext 512) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  %..i = select i1 %cmp4.not.i, i32 0, i32 -5
  %ret.0.i = select i1 %cmp.i, i32 %call.i.i, i32 %..i
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %ret.0.i, %do.end ], [ %len, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_ad5110__288_340_ad5110_driver_init6, !1, !"__initcall__kmod_ad5110__288_340_ad5110_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 340, i32 1}
!2 = !{ptr @__exitcall_ad5110_driver_exit, !1, !"__exitcall_ad5110_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 342, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 343, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 344, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 334, i32 11}
!12 = !{ptr @ad5110_driver, !13, !"ad5110_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 332, i32 26}
!14 = !{ptr @ad5110_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 306, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 313, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ad5110_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ad5110_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 319, i32 3}
!27 = !{ptr @ad5110_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ad5110_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ad5110_info, !30, !"ad5110_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 258, i32 30}
!31 = !{ptr @ad5110_attribute_group, !32, !"ad5110_attribute_group", i1 false, i1 false}
!32 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 195, i32 37}
!33 = !{ptr @ad5110_attributes, !34, !"ad5110_attributes", i1 false, i1 false}
!34 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 190, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 188, i32 8}
!37 = !{ptr @iio_dev_attr_store_eeprom, !36, !"iio_dev_attr_store_eeprom", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 178, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @store_eeprom_store._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @store_eeprom_store._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ad5110_channels, !44, !"ad5110_channels", i1 false, i1 false}
!44 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 72, i32 35}
!45 = !{ptr @ad5110_of_match, !46, !"ad5110_of_match", i1 false, i1 false}
!46 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 269, i32 34}
!47 = !{ptr @ad5110_cfg, !48, !"ad5110_cfg", i1 false, i1 false}
!48 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 49, i32 32}
!49 = !{ptr @ad5110_id, !50, !"ad5110_id", i1 false, i1 false}
!50 = !{!"../drivers/iio/potentiometer/ad5110.c", i32 281, i32 35}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i8 0, i8 2}
