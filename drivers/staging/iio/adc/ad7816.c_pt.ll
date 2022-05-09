; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/adc/ad7816.c_pt.bc'
source_filename = "../drivers/staging/iio/adc/ad7816.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ad7816_chip_info = type { i32, ptr, ptr, ptr, ptr, [5 x i8], i8, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad7816__234_447_ad7816_driver_init6 = internal global ptr @ad7816_driver_init, section ".initcall6.init", align 4
@ad7816_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7816_id, ptr @ad7816_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7816_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7816_driver_exit = internal global ptr @ad7816_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [51 x i8] c"ad7816.author=Sonic Zhang <sonic.zhang@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [79 x i8] c"ad7816.description=Analog Devices AD7816/7/8 digital temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [43 x i8] c"ad7816.file=drivers/staging/iio/adc/ad7816\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"ad7816.license=GPL v2\00", section ".modinfo", align 1
@ad7816_id = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7816\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7817\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7816\00", [25 x i8] zeroinitializer }, align 32
@ad7816_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7816\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7817\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdwr\00", [27 x i8] zeroinitializer }, align 32
@ad7816_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request rdwr GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7816_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/iio/adc/ad7816.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7816_probe._entry_ptr = internal global ptr @ad7816_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"convert\00", [24 x i8] zeroinitializer }, align 32
@ad7816_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request convert GPIO: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ad7816_probe._entry_ptr.10 = internal global ptr @ad7816_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@ad7816_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request busy GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ad7816_probe._entry_ptr.14 = internal global ptr @ad7816_probe._entry.12, section ".printk_index", align 4
@ad7816_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @ad7816_event_attribute_group, ptr @ad7816_attribute_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7816_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 417, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s temperature sensor and ADC registered.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ad7816_probe._entry_ptr.18 = internal global ptr @ad7816_probe._entry.15, section ".printk_index", align 4
@ad7816_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.19, ptr null, ptr null, ptr @ad7816_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7816_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7816_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@ad7816_event_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_oti, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_oti = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7816_show_oti, ptr @ad7816_set_oti }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oti\00", [28 x i8] zeroinitializer }, align 32
@ad7816_show_oti._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid oti channel id %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad7816_show_oti\00", [16 x i8] zeroinitializer }, align 32
@ad7816_show_oti._entry_ptr = internal global ptr @ad7816_show_oti._entry, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ad7816_set_oti._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.25, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ad7816_set_oti\00", [17 x i8] zeroinitializer }, align 32
@ad7816_set_oti._entry_ptr = internal global ptr @ad7816_set_oti._entry, section ".printk_index", align 4
@ad7816_spi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPI oti data write error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad7816_spi_write\00", [47 x i8] zeroinitializer }, align 32
@ad7816_spi_write._entry_ptr = internal global ptr @ad7816_spi_write._entry, section ".printk_index", align 4
@ad7816_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iio_dev_attr_available_modes, ptr @iio_dev_attr_mode, ptr @iio_dev_attr_channel, ptr @iio_dev_attr_value, ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_available_modes = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7816_show_available_modes, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_mode = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7816_show_mode, ptr @ad7816_store_mode }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_channel = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7816_show_channel, ptr @ad7816_store_channel }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7816_show_value, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"available_modes\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"full\0Apower-save\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power-save\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"full\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@ad7816_store_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid channel id %lu for %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad7816_store_channel\00", [43 x i8] zeroinitializer }, align 32
@ad7816_store_channel._entry_ptr = internal global ptr @ad7816_store_channel._entry, section ".printk_index", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7818\00", [25 x i8] zeroinitializer }, align 32
@ad7816_store_channel._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid channel id %lu for ad7818.\0A\00", [60 x i8] zeroinitializer }, align 32
@ad7816_store_channel._entry_ptr.40 = internal global ptr @ad7816_store_channel._entry.38, section ".printk_index", align 4
@ad7816_store_channel._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid channel id %lu for ad7816.\0A\00", [60 x i8] zeroinitializer }, align 32
@ad7816_store_channel._entry_ptr.43 = internal global ptr @ad7816_store_channel._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%.2d\0A\00", [23 x i8] zeroinitializer }, align 32
@ad7816_spi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 74, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SPI channel setting error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad7816_spi_read\00", [16 x i8] zeroinitializer }, align 32
@ad7816_spi_read._entry_ptr = internal global ptr @ad7816_spi_read._entry, section ".printk_index", align 4
@ad7816_spi_read._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 96, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPI data read error\0A\00", [43 x i8] zeroinitializer }, align 32
@ad7816_spi_read._entry_ptr.50 = internal global ptr @ad7816_spi_read._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7]
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"ad7816_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 439, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"ad7816_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 430, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 441, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ad7816_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 422, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 370, i32 49 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 373, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 377, i32 52 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 381, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 386, i32 50 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 390, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"ad7816_info\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 343, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 416, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [29 x i8] c"ad7816_event_attribute_group\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 338, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"ad7816_attribute_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 249, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 340, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"ad7816_event_attributes\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 333, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"iio_dev_attr_oti\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 330, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 278, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 284, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 286, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 305, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 114, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"ad7816_attributes\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 241, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_available_modes\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"iio_dev_attr_mode\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"iio_dev_attr_channel\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"iio_dev_attr_value\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 162, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 159, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 150, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 127, i32 23 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 128, i32 22 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 139, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 208, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 190, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 193, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 194, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 198, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 239, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 23 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 74, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [36 x i8] c"../drivers/staging/iio/adc/ad7816.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 96, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ad7816_driver_exit, ptr @__initcall__kmod_ad7816__234_447_ad7816_driver_init6, ptr @ad7816_driver_exit, ptr @ad7816_probe._entry, ptr @ad7816_probe._entry.12, ptr @ad7816_probe._entry.15, ptr @ad7816_probe._entry.8, ptr @ad7816_probe._entry_ptr, ptr @ad7816_probe._entry_ptr.10, ptr @ad7816_probe._entry_ptr.14, ptr @ad7816_probe._entry_ptr.18, ptr @ad7816_set_oti._entry, ptr @ad7816_set_oti._entry_ptr, ptr @ad7816_show_oti._entry, ptr @ad7816_show_oti._entry_ptr, ptr @ad7816_spi_read._entry, ptr @ad7816_spi_read._entry.48, ptr @ad7816_spi_read._entry_ptr, ptr @ad7816_spi_read._entry_ptr.50, ptr @ad7816_spi_write._entry, ptr @ad7816_spi_write._entry_ptr, ptr @ad7816_store_channel._entry, ptr @ad7816_store_channel._entry.38, ptr @ad7816_store_channel._entry.41, ptr @ad7816_store_channel._entry_ptr, ptr @ad7816_store_channel._entry_ptr.40, ptr @ad7816_store_channel._entry_ptr.43, ptr @ad7816_driver, ptr @ad7816_id, ptr @.str, ptr @ad7816_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @ad7816_info, ptr @.str.16, ptr @.str.17, ptr @ad7816_event_attribute_group, ptr @ad7816_attribute_group, ptr @.str.19, ptr @ad7816_event_attributes, ptr @iio_dev_attr_oti, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ad7816_attributes, ptr @iio_dev_attr_available_modes, ptr @iio_dev_attr_mode, ptr @iio_dev_attr_channel, ptr @iio_dev_attr_value, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_event_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_oti to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_show_oti._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_set_oti._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_spi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_available_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_channel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_store_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_store_channel._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_store_channel._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_spi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7816_spi_read._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7816_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7816_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7816_driver, i32 0, i32 4)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_probe(ptr noundef %spi_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi_dev, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi_dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i, align 4
  %spi_dev3 = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %spi_dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi_dev, ptr %spi_dev3, align 4
  %uglygep = getelementptr i8, ptr %1, i32 20
  %4 = call ptr @memset(ptr %uglygep, i32 203, i32 5)
  %call4 = tail call ptr @spi_get_device_id(ptr noundef %spi_dev) #11
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call4, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %call6 = tail call ptr @devm_gpiod_get(ptr noundef %spi_dev, ptr noundef nonnull @.str.1, i32 noundef 7) #11
  %rdwr_pin = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rdwr_pin to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %rdwr_pin, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.2, i32 noundef %9) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %spi_dev, ptr noundef nonnull @.str.7, i32 noundef 7) #11
  %convert_pin = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %convert_pin to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %convert_pin, align 4
  %cmp.i118 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.9, i32 noundef %11) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp ult i32 %13, 2
  br i1 %switch, label %if.then30, label %if.end25.if.end43_crit_edge

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then30:                                        ; preds = %if.end25
  %call32 = tail call ptr @devm_gpiod_get(ptr noundef %spi_dev, ptr noundef nonnull @.str.11, i32 noundef 1) #11
  %busy_pin = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %busy_pin to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %busy_pin, align 4
  %cmp.i119 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then35, label %if.then30.if.end43_crit_edge

if.then30.if.end43_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.13, i32 noundef %15) #14
  br label %cleanup

if.end43:                                         ; preds = %if.then30.if.end43_crit_edge, %if.end25.if.end43_crit_edge
  %call44 = tail call ptr @spi_get_device_id(ptr noundef %spi_dev) #11
  %name45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %16 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call44, ptr %name45, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ad7816_info, ptr %info, align 8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi_dev, i32 0, i32 8
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not = icmp eq i32 %20, 0
  br i1 %tobool46.not, label %if.end43.if.end55_crit_edge, label %if.then47

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then47:                                        ; preds = %if.end43
  %call51 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi_dev, i32 noundef %20, ptr noundef null, ptr noundef nonnull @ad7816_event_handler, i32 noundef 8200, ptr noundef %call44, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then47.if.end55_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end55:                                         ; preds = %if.then47.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %call57 = tail call i32 @__devm_iio_device_register(ptr noundef %spi_dev, ptr noundef nonnull %call, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.end63, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name45, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_dev, ptr noundef nonnull @.str.16, ptr noundef %22) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end55.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then35, %if.then18, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then9 ], [ %11, %if.then18 ], [ %15, %if.then35 ], [ 0, %do.end63 ], [ -12, %entry.cleanup_crit_edge ], [ %call51, %if.then47.cleanup_crit_edge ], [ %call57, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @iio_get_time_ns(ptr noundef %private) #11
  %call1 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 562988608126976, i64 noundef %call) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_show_oti(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel_id = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_id, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ugt i8 %3, 4
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7 = icmp eq i8 %3, 0
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %oti_data = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %oti_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oti_data, align 1
  %conv11 = zext i8 %5 to i32
  %add = add nsw i32 %conv11, -103
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %add)
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx17 = getelementptr %struct.ad7816_chip_info, ptr %1, i32 0, i32 5, i32 %conv
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %conv18)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.then9 ], [ %call19, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_set_oti(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #5 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.addr.i = alloca i8, align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !133
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel_id = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp = icmp ugt i8 %4, 4
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9 = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  br i1 %cmp9, label %if.then11, label %if.else19

if.then11:                                        ; preds = %if.else
  %7 = add i32 %6, -153
  call void @__sanitizer_cov_trace_const_cmp4(i32 -248, i32 %7)
  %8 = icmp ult i32 %7, -248
  br i1 %8, label %if.then11.cleanup_crit_edge, label %if.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nsw i32 %6, 103
  br label %if.end29

if.else19:                                        ; preds = %if.else
  %9 = add i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -248, i32 %9)
  %10 = icmp ult i32 %9, -248
  br i1 %10, label %if.else19.cleanup_crit_edge, label %if.else19.if.end29_crit_edge

if.else19.if.end29_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.else19.if.end29_crit_edge, %if.end17
  %data.0.in = phi i32 [ %add, %if.end17 ], [ %6, %if.else19.if.end29_crit_edge ]
  %data.0 = trunc i32 %data.0.in to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %11 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %data.0, ptr %data.addr.i, align 1
  %spi_dev1.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %spi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi_dev1.i, align 4
  %rdwr_pin.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdwr_pin.i, align 4
  call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #11
  %16 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdwr_pin.i, align 4
  call void @gpiod_set_value(ptr noundef %17, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %18 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 92)
  %20 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data.addr.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %22 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end29.spi_write.exit.i_crit_edge

if.end29.spi_write.exit.i_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end29.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %ad7816_spi_write.exit.thread, label %ad7816_spi_write.exit

ad7816_spi_write.exit.thread:                     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  br label %cleanup

ad7816_spi_write.exit:                            ; preds = %spi_write.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool31.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool31.not, label %if.end33, label %ad7816_spi_write.exit.cleanup_crit_edge

ad7816_spi_write.exit.cleanup_crit_edge:          ; preds = %ad7816_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %ad7816_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %channel_id, align 1
  %idxprom = zext i8 %33 to i32
  %arrayidx = getelementptr %struct.ad7816_chip_info, ptr %1, i32 0, i32 5, i32 %idxprom
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %data.0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %ad7816_spi_write.exit.cleanup_crit_edge, %ad7816_spi_write.exit.thread, %if.else19.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %if.end33 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %if.else19.cleanup_crit_edge ], [ -5, %ad7816_spi_write.exit.cleanup_crit_edge ], [ -5, %ad7816_spi_write.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7816_show_available_modes(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.29, i32 17)
  ret i32 16
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7816_show_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mode = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.31, i32 12)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.32, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 11, %if.then ], [ 5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_store_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %rdwr_pin3 = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rdwr_pin3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdwr_pin3, align 4
  %not.tobool.not = xor i1 %tobool.not, true
  %. = zext i1 %not.tobool.not to i32
  %.9 = select i1 %tobool.not, i8 2, i8 1
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef %.) #11
  %4 = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.9, ptr %4, align 2
  ret i32 %len
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_show_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel_id = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_id, align 1
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_store_channel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !133
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 7, label %if.end.if.else_crit_edge
    i32 4, label %if.end.if.else_crit_edge45
    i32 3, label %if.end.if.else_crit_edge46
    i32 2, label %if.end.if.else_crit_edge47
    i32 1, label %if.end.if.else_crit_edge48
    i32 0, label %if.end.if.else_crit_edge49
  ]

if.end.if.else_crit_edge49:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.if.else_crit_edge48:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.if.else_crit_edge47:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.if.else_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.if.else_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %spi_dev = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %spi_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi_dev, align 4
  %name = getelementptr i8, ptr %dev, i32 1064
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %4, ptr noundef %9) #14
  br label %cleanup

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.if.else_crit_edge45, %if.end.if.else_crit_edge46, %if.end.if.else_crit_edge47, %if.end.if.else_crit_edge48, %if.end.if.else_crit_edge49
  %name6 = getelementptr i8, ptr %dev, i32 1064
  %10 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name6, align 8
  %call7 = call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(7) @.str.37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp10 = icmp ugt i32 %4, 1
  %or.cond = select i1 %cmp8, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.end14, label %if.else17

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %spi_dev15 = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %spi_dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi_dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef %4) #14
  br label %cleanup

if.else17:                                        ; preds = %if.else
  %call19 = call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(7) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp ne i32 %call19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp22.not = icmp eq i32 %4, 0
  %or.cond44 = select i1 %cmp20, i1 true, i1 %cmp22.not
  br i1 %or.cond44, label %if.end31, label %do.end26

do.end26:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %spi_dev27 = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %spi_dev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_dev27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef %4) #14
  br label %cleanup

if.end31:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %4 to i8
  %channel_id = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %channel_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %channel_id, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end26, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ -22, %do.end26 ], [ %len, %if.end31 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7816_show_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %msg.i.i62.i = alloca %struct.spi_message, align 4
  %t.i63.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spi_dev1.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #11
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %buf.i, align 2, !annotation !133
  %rdwr_pin.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdwr_pin.i, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #11
  %7 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdwr_pin.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #11
  %channel_id.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %channel_id.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %spi_write.exit.i.ad7816_spi_read.exit.thread_crit_edge, label %if.end.i

spi_write.exit.i.ad7816_spi_read.exit.thread_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ad7816_spi_read.exit.thread

if.end.i:                                         ; preds = %spi_write.exit.i
  %23 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdwr_pin.i, align 4
  call void @gpiod_set_value(ptr noundef %24, i32 noundef 1) #11
  %mode.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp4.i = icmp eq i8 %26, 2
  %convert_pin.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %convert_pin.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %convert_pin.i, align 4
  %..i = zext i1 %cmp4.i to i32
  %not.cmp4.i = xor i1 %cmp4.i, true
  %.76.i = zext i1 %not.cmp4.i to i32
  call void @gpiod_set_value(ptr noundef %28, i32 noundef %..i) #11
  %29 = ptrtoint ptr %convert_pin.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %convert_pin.i, align 4
  call void @gpiod_set_value(ptr noundef %30, i32 noundef %.76.i) #11
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch.i = icmp ult i32 %32, 2
  br i1 %switch.i, label %while.cond.preheader.i, label %if.end.i.if.end27.i_crit_edge

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %busy_pin.i = getelementptr inbounds %struct.ad7816_chip_info, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %busy_pin.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %busy_pin.i, align 4
  %call1773.i = call i32 @gpiod_get_value(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1773.i)
  %tobool.not74.i = icmp eq i32 %call1773.i, 0
  br i1 %tobool.not74.i, label %while.cond.preheader.i.if.end27.i_crit_edge, label %while.cond.preheader.i.do.end22.i_crit_edge

while.cond.preheader.i.do.end22.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %do.end22.i

while.cond.preheader.i.if.end27.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

do.end22.i:                                       ; preds = %do.end22.i.do.end22.i_crit_edge, %while.cond.preheader.i.do.end22.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !135
  %35 = ptrtoint ptr %busy_pin.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %busy_pin.i, align 4
  %call17.i = call i32 @gpiod_get_value(ptr noundef %36) #11
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %do.end22.i.if.end27.i_crit_edge, label %do.end22.i.do.end22.i_crit_edge

do.end22.i.do.end22.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

do.end22.i.if.end27.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end22.i.if.end27.i_crit_edge, %while.cond.preheader.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %37 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdwr_pin.i, align 4
  call void @gpiod_set_value(ptr noundef %38, i32 noundef 0) #11
  %39 = ptrtoint ptr %rdwr_pin.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rdwr_pin.i, align 4
  call void @gpiod_set_value(ptr noundef %40, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i63.i) #11
  %41 = call ptr @memset(ptr %t.i63.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i63.i, i32 0, i32 1
  %42 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i, ptr %rx_buf.i.i, align 4
  %len1.i64.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i63.i, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i64.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %len1.i64.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i62.i) #11
  %44 = getelementptr inbounds i8, ptr %msg.i.i62.i, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i62.i, ptr %msg.i.i62.i, align 4
  %prev.i.i.i.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i62.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i62.i, ptr %prev.i.i.i.i.i.i65.i, align 4
  %resources.i.i.i.i.i66.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i62.i, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i66.i, ptr %resources.i.i.i.i.i66.i, align 4
  %prev.i2.i.i.i.i.i67.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i62.i, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i66.i, ptr %prev.i2.i.i.i.i.i67.i, align 4
  %transfer_list.i.i.i.i68.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i63.i, i32 0, i32 18
  %call.i.i.i.i.i.i69.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i68.i, ptr noundef nonnull %msg.i.i62.i, ptr noundef nonnull %msg.i.i62.i) #11
  br i1 %call.i.i.i.i.i.i69.i, label %if.end.i.i.i.i.i.i71.i, label %if.end27.i.spi_read.exit.i_crit_edge

if.end27.i.spi_read.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i71.i:                           ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i68.i, ptr %prev.i.i.i.i.i.i65.i, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i62.i, ptr %transfer_list.i.i.i.i68.i, align 4
  %prev3.i.i.i.i.i.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i63.i, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i62.i, ptr %prev3.i.i.i.i.i.i70.i, align 4
  %53 = ptrtoint ptr %msg.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i68.i, ptr %msg.i.i62.i, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i71.i, %if.end27.i.spi_read.exit.i_crit_edge
  %call.i.i72.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i62.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i62.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i63.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i)
  %cmp31.i = icmp slt i32 %call.i.i72.i, 0
  br i1 %cmp31.i, label %spi_read.exit.i.ad7816_spi_read.exit.thread_crit_edge, label %ad7816_spi_read.exit

spi_read.exit.i.ad7816_spi_read.exit.thread_crit_edge: ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ad7816_spi_read.exit.thread

ad7816_spi_read.exit.thread:                      ; preds = %spi_read.exit.i.ad7816_spi_read.exit.thread_crit_edge, %spi_write.exit.i.ad7816_spi_read.exit.thread_crit_edge
  %.str.46.sink = phi ptr [ @.str.46, %spi_write.exit.i.ad7816_spi_read.exit.thread_crit_edge ], [ @.str.49, %spi_read.exit.i.ad7816_spi_read.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.46.sink) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #11
  br label %cleanup

ad7816_spi_read.exit:                             ; preds = %spi_read.exit.i
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %buf.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i)
  %tobool.not = icmp eq i32 %call.i.i72.i, 0
  br i1 %tobool.not, label %if.end, label %ad7816_spi_read.exit.cleanup_crit_edge

ad7816_spi_read.exit.cleanup_crit_edge:           ; preds = %ad7816_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ad7816_spi_read.exit
  %56 = lshr i16 %55, 6
  %57 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %channel_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp = icmp eq i8 %58, 0
  br i1 %cmp, label %if.then6, label %if.end23

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %59 = lshr i16 %55, 8
  %narrow = add nuw nsw i16 %59, 153
  %conv9 = zext i16 %narrow to i32
  %60 = and i16 %56, 3
  %sext = shl i32 %conv9, 24
  %conv12 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp13 = icmp slt i32 %sext, 0
  %narrow33 = sub nuw nsw i16 4, %60
  %spec.select = select i1 %cmp13, i16 %narrow33, i16 %60
  %narrow37 = mul nuw nsw i16 %spec.select, 25
  %mul = zext i16 %narrow37 to i32
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %conv12, i32 noundef %mul)
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv24 = zext i16 %56 to i32
  %call25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %conv24)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then6, %ad7816_spi_read.exit.cleanup_crit_edge, %ad7816_spi_read.exit.thread
  %retval.0 = phi i32 [ %call22, %if.then6 ], [ %call25, %if.end23 ], [ -5, %ad7816_spi_read.exit.cleanup_crit_edge ], [ -5, %ad7816_spi_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !81, !83, !84, !86, !88, !90, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !115, !116, !117, !118, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_ad7816__234_447_ad7816_driver_init6, !1, !"__initcall__kmod_ad7816__234_447_ad7816_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 447, i32 1}
!2 = !{ptr @__exitcall_ad7816_driver_exit, !1, !"__exitcall_ad7816_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 449, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 450, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 451, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 441, i32 11}
!12 = !{ptr @ad7816_driver, !13, !"ad7816_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 439, i32 26}
!14 = !{ptr @ad7816_id, !15, !"ad7816_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 430, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 370, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 373, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad7816_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad7816_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 377, i32 52}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 381, i32 3}
!30 = !{ptr @ad7816_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ad7816_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 386, i32 50}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 390, i32 4}
!36 = !{ptr @ad7816_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ad7816_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 416, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ad7816_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ad7816_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ad7816_info, !44, !"ad7816_info", i1 false, i1 false}
!44 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 343, i32 30}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 340, i32 10}
!47 = !{ptr @ad7816_event_attribute_group, !48, !"ad7816_event_attribute_group", i1 false, i1 false}
!48 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 338, i32 37}
!49 = !{ptr @ad7816_event_attributes, !50, !"ad7816_event_attributes", i1 false, i1 false}
!50 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 333, i32 26}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 330, i32 8}
!53 = !{ptr @iio_dev_attr_oti, !52, !"iio_dev_attr_oti", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 278, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ad7816_show_oti._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ad7816_show_oti._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 284, i32 23}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 286, i32 22}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 305, i32 3}
!65 = !{ptr @ad7816_set_oti._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ad7816_set_oti._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 114, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ad7816_spi_write._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ad7816_spi_write._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ad7816_attribute_group, !73, !"ad7816_attribute_group", i1 false, i1 false}
!73 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 249, i32 37}
!74 = !{ptr @ad7816_attributes, !75, !"ad7816_attributes", i1 false, i1 false}
!75 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 241, i32 26}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 162, i32 8}
!78 = !{ptr @iio_dev_attr_available_modes, !77, !"iio_dev_attr_available_modes", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 159, i32 22}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 150, i32 8}
!83 = !{ptr @iio_dev_attr_mode, !82, !"iio_dev_attr_mode", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 127, i32 23}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 128, i32 22}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 139, i32 18}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 208, i32 8}
!92 = !{ptr @iio_dev_attr_channel, !91, !"iio_dev_attr_channel", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 190, i32 3}
!95 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ad7816_store_channel._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ad7816_store_channel._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 193, i32 37}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 194, i32 3}
!102 = !{ptr @ad7816_store_channel._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ad7816_store_channel._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 198, i32 3}
!106 = !{ptr @ad7816_store_channel._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ad7816_store_channel._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 239, i32 8}
!110 = !{ptr @iio_dev_attr_value, !109, !"iio_dev_attr_value", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 234, i32 23}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 74, i32 3}
!115 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ad7816_spi_read._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ad7816_spi_read._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 96, i32 3}
!120 = !{ptr @ad7816_spi_read._entry.48, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ad7816_spi_read._entry_ptr.50, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @ad7816_of_match, !123, !"ad7816_of_match", i1 false, i1 false}
!123 = !{!"../drivers/staging/iio/adc/ad7816.c", i32 422, i32 34}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{i64 2154307006}
!135 = !{i64 2154306848}
