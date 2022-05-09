; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/frequency/ad9834.c_pt.bc'
source_filename = "../drivers/staging/iio/frequency/ad9834.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ad9834_state = type { ptr, ptr, i16, i16, %struct.spi_transfer, %struct.spi_message, [2 x %struct.spi_transfer], %struct.spi_message, %struct.mutex, [8 x i8], i16, [2 x i16], [122 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_ad9834__290_541_ad9834_driver_init6 = internal global ptr @ad9834_driver_init, section ".initcall6.init", align 4
@ad9834_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad9834_id, ptr @ad9834_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad9834_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad9834_driver_exit = internal global ptr @ad9834_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad9834.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [66 x i8] c"ad9834.description=Analog Devices AD9833/AD9834/AD9837/AD9838 DDS\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"ad9834.file=drivers/staging/iio/frequency/ad9834\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad9834.license=GPL v2\00", section ".modinfo", align 1
@ad9834_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad9833\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad9834\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad9837\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad9838\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad9834\00", [25 x i8] zeroinitializer }, align 32
@ad9834_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9833\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9834\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9837\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad9838\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@ad9834_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified AVDD supply\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad9834_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/iio/frequency/ad9834.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad9834_probe._entry_ptr = internal global ptr @ad9834_probe._entry, section ".printk_index", align 4
@ad9834_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad9834_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable master clock\0A\00", [33 x i8] zeroinitializer }, align 32
@ad9834_probe._entry_ptr.10 = internal global ptr @ad9834_probe._entry.8, section ".printk_index", align 4
@ad9833_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad9833_attribute_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad9834_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad9834_attribute_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad9834_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ad9834_probe._entry_ptr.13 = internal global ptr @ad9834_probe._entry.11, section ".printk_index", align 4
@ad9833_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad9833_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad9833_attributes = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @iio_dev_attr_out_altvoltage0_frequency0, ptr @iio_dev_attr_out_altvoltage0_frequency1, ptr getelementptr (i8, ptr @iio_const_attr_out_altvoltage0_frequency_scale, i64 4), ptr @iio_dev_attr_out_altvoltage0_phase0, ptr @iio_dev_attr_out_altvoltage0_phase1, ptr getelementptr (i8, ptr @iio_const_attr_out_altvoltage0_phase_scale, i64 4), ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, ptr @iio_dev_attr_out_altvoltage0_phasesymbol, ptr @iio_dev_attr_out_altvoltage0_out_enable, ptr @iio_dev_attr_out_altvoltage0_out0_wavetype, ptr @iio_dev_attr_out_altvoltage0_out0_wavetype_available, ptr null], [48 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency0 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 16384, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency1 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 32768, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_out_altvoltage0_frequency_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.16, %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phase0 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 49152, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phase1 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 57344, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_out_altvoltage0_phase_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.20, %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequencysymbol = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 2048, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phasesymbol = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 1024, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out_enable = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 256, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out0_wavetype = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_store_wavetype }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out0_wavetype_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9834_show_out0_wavetype_available, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_altvoltage0_frequency0\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_altvoltage0_frequency1\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_frequency_scale\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"out_altvoltage0_phase0\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"out_altvoltage0_phase1\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.0015339808\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_altvoltage0_phase_scale\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_frequencysymbol\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_altvoltage0_phasesymbol\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_altvoltage0_out_enable\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out_altvoltage0_out0_wavetype\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sine\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"triangle\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"square\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"out_altvoltage0_out0_wavetype_available\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sine triangle square\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sine triangle\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ad9834_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad9834_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad9834_attributes = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @iio_dev_attr_out_altvoltage0_frequency0, ptr @iio_dev_attr_out_altvoltage0_frequency1, ptr getelementptr (i8, ptr @iio_const_attr_out_altvoltage0_frequency_scale, i64 4), ptr @iio_dev_attr_out_altvoltage0_phase0, ptr @iio_dev_attr_out_altvoltage0_phase1, ptr getelementptr (i8, ptr @iio_const_attr_out_altvoltage0_phase_scale, i64 4), ptr @iio_dev_attr_out_altvoltage0_pincontrol_en, ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, ptr @iio_dev_attr_out_altvoltage0_phasesymbol, ptr @iio_dev_attr_out_altvoltage0_out_enable, ptr @iio_dev_attr_out_altvoltage0_out1_enable, ptr @iio_dev_attr_out_altvoltage0_out0_wavetype, ptr @iio_dev_attr_out_altvoltage0_out1_wavetype, ptr @iio_dev_attr_out_altvoltage0_out0_wavetype_available, ptr @iio_dev_attr_out_altvoltage0_out1_wavetype_available, ptr null], [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_pincontrol_en = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 512, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out1_enable = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_write }, i64 32, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out1_wavetype = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9834_store_wavetype }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out1_wavetype_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9834_show_out1_wavetype_available, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out_altvoltage0_pincontrol_en\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_altvoltage0_out1_enable\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out_altvoltage0_out1_wavetype\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"out_altvoltage0_out1_wavetype_available\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 32, i64 256, i64 512, i64 1024, i64 2048, i64 16384, i64 32768, i64 49152, i64 57344]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"ad9834_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 533, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"ad9834_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 514, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 535, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"ad9834_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 523, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 413, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 419, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 433, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 442, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"ad9833_info\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 388, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"ad9834_info\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 384, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 491, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"ad9833_attribute_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 380, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"ad9833_attributes\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 361, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_out_altvoltage0_frequency0\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_out_altvoltage0_frequency1\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [47 x i8] c"iio_const_attr_out_altvoltage0_frequency_scale\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_out_altvoltage0_phase0\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_out_altvoltage0_phase1\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [43 x i8] c"iio_const_attr_out_altvoltage0_phase_scale\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_out_altvoltage0_frequencysymbol\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_out_altvoltage0_phasesymbol\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_out_altvoltage0_out_enable\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [43 x i8] c"iio_dev_attr_out_altvoltage0_out0_wavetype\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [53 x i8] c"iio_dev_attr_out_altvoltage0_out0_wavetype_available\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 324, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 325, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 327, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 329, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 330, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 332, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 326, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 331, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 336, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 339, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 234, i32 24 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 238, i32 31 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 247, i32 46 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 297, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 288, i32 9 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 292, i32 9 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 294, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"ad9834_attribute_group\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 376, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"ad9834_attributes\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 342, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant [43 x i8] c"iio_dev_attr_out_altvoltage0_pincontrol_en\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_out_altvoltage0_out1_enable\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [43 x i8] c"iio_dev_attr_out_altvoltage0_out1_wavetype\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [53 x i8] c"iio_dev_attr_out_altvoltage0_out1_wavetype_available\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 334, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 337, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 340, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 317, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [42 x i8] c"../drivers/staging/iio/frequency/ad9834.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 310, i32 9 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad9834_driver_exit, ptr @__initcall__kmod_ad9834__290_541_ad9834_driver_init6, ptr @ad9834_driver_exit, ptr @ad9834_probe._entry, ptr @ad9834_probe._entry.11, ptr @ad9834_probe._entry.8, ptr @ad9834_probe._entry_ptr, ptr @ad9834_probe._entry_ptr.10, ptr @ad9834_probe._entry_ptr.13, ptr @ad9834_driver, ptr @ad9834_id, ptr @.str, ptr @ad9834_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad9834_probe.__key, ptr @.str.7, ptr @.str.9, ptr @ad9833_info, ptr @ad9834_info, ptr @.str.12, ptr @ad9833_attribute_group, ptr @ad9833_attributes, ptr @iio_dev_attr_out_altvoltage0_frequency0, ptr @iio_dev_attr_out_altvoltage0_frequency1, ptr @iio_const_attr_out_altvoltage0_frequency_scale, ptr @iio_dev_attr_out_altvoltage0_phase0, ptr @iio_dev_attr_out_altvoltage0_phase1, ptr @iio_const_attr_out_altvoltage0_phase_scale, ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, ptr @iio_dev_attr_out_altvoltage0_phasesymbol, ptr @iio_dev_attr_out_altvoltage0_out_enable, ptr @iio_dev_attr_out_altvoltage0_out0_wavetype, ptr @iio_dev_attr_out_altvoltage0_out0_wavetype_available, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ad9834_attribute_group, ptr @ad9834_attributes, ptr @iio_dev_attr_out_altvoltage0_pincontrol_en, ptr @iio_dev_attr_out_altvoltage0_out1_enable, ptr @iio_dev_attr_out_altvoltage0_out1_wavetype, ptr @iio_dev_attr_out_altvoltage0_out1_wavetype_available, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9833_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9833_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9833_attributes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_out_altvoltage0_frequency_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phase0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phase1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_out_altvoltage0_phase_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequencysymbol to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phasesymbol to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out_enable to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out0_wavetype to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out0_wavetype_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9834_attributes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_pincontrol_en to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out1_enable to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out1_wavetype to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out1_wavetype_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9834_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad9834_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad9834_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad9834_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9834_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @regulator_enable(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9834_disable_reg, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i231 = tail call i32 @regulator_disable(ptr noundef %call) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ad9834_probe.__key) #7
  %call22 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef null) #7
  %mclk = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call22, ptr %mclk, align 4
  %cmp.i200 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call.i201 = tail call i32 @clk_prepare(ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool.not.i202 = icmp eq i32 %call.i201, 0
  br i1 %tobool.not.i202, label %if.end.i, label %if.end28.do.end35_crit_edge

if.end28.do.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

if.end.i:                                         ; preds = %if.end28
  %call1.i = tail call i32 @clk_enable(ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call22) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then3.i, %if.end28.do.end35_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i201, %if.end28.do.end35_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end.i
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %call.i203 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9834_disable_clk, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool.not.i204 = icmp eq i32 %call.i203, 0
  br i1 %tobool.not.i204, label %if.end43, label %devm_add_action_or_reset.exit207

devm_add_action_or_reset.exit207:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %2, align 128
  %call45 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call45, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %conv = trunc i32 %9 to i16
  %devid = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %devid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %devid, align 2
  %call46 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name47 = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 15
  %11 = ptrtoint ptr %name47 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call46, ptr %name47, align 8
  %12 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %devid, align 2
  %switch.and = and i16 %13, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %14 = select i1 %switch.selectcmp, ptr @ad9833_info, ptr @ad9834_info
  %info50 = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 17
  %15 = ptrtoint ptr %info50 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %info50, align 8
  %16 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call13, align 8
  %data = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 10
  %xfer = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 4
  %17 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len, align 4
  %msg = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 5
  %19 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 5, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 5, i32 10
  %23 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 5, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 4, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end43.spi_message_add_tail.exit_crit_edge

if.end43.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 4, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end43.spi_message_add_tail.exit_crit_edge
  %freq_data = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 11
  %freq_xfer = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 6
  %29 = ptrtoint ptr %freq_xfer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %freq_data, ptr %freq_xfer, align 4
  %len58 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 0, i32 2
  %30 = ptrtoint ptr %len58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %len58, align 4
  %cs_change = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 0, i32 7
  %31 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %arrayidx62 = getelementptr %struct.ad9834_state, ptr %2, i32 0, i32 11, i32 1
  %arrayidx64 = getelementptr %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx62, ptr %arrayidx64, align 4
  %len68 = getelementptr %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 1, i32 2
  %33 = ptrtoint ptr %len68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %len68, align 4
  %freq_msg = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 7
  %34 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 7, i32 1
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %freq_msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %freq_msg, ptr %freq_msg, align 4
  %prev.i.i.i208 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 7, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %freq_msg, ptr %prev.i.i.i208, align 4
  %resources.i.i209 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 7, i32 10
  %38 = ptrtoint ptr %resources.i.i209 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i209, ptr %resources.i.i209, align 4
  %prev.i2.i.i210 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 7, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i210 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i209, ptr %prev.i2.i.i210, align 4
  %transfer_list.i211 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 0, i32 18
  %call.i.i.i213 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i211, ptr noundef %freq_msg, ptr noundef %freq_msg) #7
  br i1 %call.i.i.i213, label %if.end.i.i.i215, label %spi_message_add_tail.exit.spi_message_add_tail.exit216_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit216_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit216

if.end.i.i.i215:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %prev.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i211, ptr %prev.i.i.i208, align 4
  %41 = ptrtoint ptr %transfer_list.i211 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %freq_msg, ptr %transfer_list.i211, align 4
  %prev3.i.i.i214 = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %freq_msg, ptr %prev3.i.i.i214, align 4
  %43 = ptrtoint ptr %freq_msg to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i211, ptr %freq_msg, align 4
  br label %spi_message_add_tail.exit216

spi_message_add_tail.exit216:                     ; preds = %if.end.i.i.i215, %spi_message_add_tail.exit.spi_message_add_tail.exit216_crit_edge
  %transfer_list.i217 = getelementptr %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 1, i32 18
  %44 = ptrtoint ptr %prev.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i208, align 4
  %call.i.i.i219 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i217, ptr noundef %45, ptr noundef %freq_msg) #7
  br i1 %call.i.i.i219, label %if.end.i.i.i221, label %spi_message_add_tail.exit216.spi_message_add_tail.exit222_crit_edge

spi_message_add_tail.exit216.spi_message_add_tail.exit222_crit_edge: ; preds = %spi_message_add_tail.exit216
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit222

if.end.i.i.i221:                                  ; preds = %spi_message_add_tail.exit216
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %prev.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i217, ptr %prev.i.i.i208, align 4
  %47 = ptrtoint ptr %transfer_list.i217 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %freq_msg, ptr %transfer_list.i217, align 4
  %prev3.i.i.i220 = getelementptr %struct.ad9834_state, ptr %2, i32 0, i32 6, i32 1, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i220, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i217, ptr %45, align 4
  br label %spi_message_add_tail.exit222

spi_message_add_tail.exit222:                     ; preds = %if.end.i.i.i221, %spi_message_add_tail.exit216.spi_message_add_tail.exit222_crit_edge
  %control = getelementptr inbounds %struct.ad9834_state, ptr %2, i32 0, i32 2
  %50 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %devid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %51)
  %cmp = icmp eq i16 %51, 1
  %spec.store.select = select i1 %cmp, i16 8472, i16 8456
  %52 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %spec.store.select, ptr %control, align 8
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %spec.store.select, ptr %data, align 128
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 128
  %call94 = tail call i32 @spi_sync(ptr noundef %55, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %spi_message_add_tail.exit222
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end101:                                        ; preds = %spi_message_add_tail.exit222
  %call102 = tail call fastcc i32 @ad9834_write_frequency(ptr noundef %2, i32 noundef 16384, i32 noundef 1000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end105:                                        ; preds = %if.end101
  %call106 = tail call fastcc i32 @ad9834_write_frequency(ptr noundef %2, i32 noundef 32768, i32 noundef 5000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109:                                        ; preds = %if.end105
  %56 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -15872, ptr %data, align 128
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %2, align 128
  %call.i223 = tail call i32 @spi_sync(ptr noundef %58, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool111.not = icmp eq i32 %call.i223, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -7168, ptr %data, align 128
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %2, align 128
  %call.i228 = tail call i32 @spi_sync(ptr noundef %61, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool115.not = icmp eq i32 %call.i228, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end117:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %call119 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call13, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end113.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end99, %devm_add_action_or_reset.exit207, %do.end35, %if.then25, %if.end11.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %do.end ], [ %4, %if.then25 ], [ %retval.0.i.ph, %do.end35 ], [ %call94, %do.end99 ], [ %call119, %if.end117 ], [ %call.i, %devm_add_action_or_reset.exit ], [ -12, %if.end11.cleanup_crit_edge ], [ %call.i203, %devm_add_action_or_reset.exit207 ], [ %call102, %if.end101.cleanup_crit_edge ], [ %call106, %if.end105.cleanup_crit_edge ], [ %call.i223, %if.end109.cleanup_crit_edge ], [ %call.i228, %if.end113.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9834_disable_reg(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9834_disable_clk(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #7
  tail call void @clk_unprepare(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9834_write_frequency(ptr noundef %st, i32 noundef %addr, i32 noundef %fout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.ad9834_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %div17 = lshr i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div17, i32 %fout)
  %cmp = icmp ult i32 %div17, %fout
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i32 %fout to i64
  %mul.i = shl nuw nsw i64 %conv.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %fout)
  %cmp167.i = icmp ult i32 %fout, 16
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !121

if.then171.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv172.i = trunc i64 %mul.i to i32
  %div175.i = udiv i32 %conv172.i, %call
  br label %ad9834_calc_freqreg.exit

if.else177.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call, i64 %mul.i) #11, !srcloc !122
  %asmresult1.i.i = extractvalue { i64, i64 } %2, 1
  %extract.t288.i = trunc i64 %asmresult1.i.i to i32
  br label %ad9834_calc_freqreg.exit

ad9834_calc_freqreg.exit:                         ; preds = %if.else177.i, %if.then171.i
  %freqreg.0.off0.i = phi i32 [ %div175.i, %if.then171.i ], [ %extract.t288.i, %if.else177.i ]
  %and = and i32 %freqreg.0.off0.i, 16383
  %or = or i32 %and, %addr
  %conv = trunc i32 %or to i16
  %freq_data = getelementptr inbounds %struct.ad9834_state, ptr %st, i32 0, i32 11
  %3 = ptrtoint ptr %freq_data to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %freq_data, align 2
  %shr = lshr i32 %freqreg.0.off0.i, 14
  %and2 = and i32 %shr, 16383
  %or3 = or i32 %and2, %addr
  %conv4 = trunc i32 %or3 to i16
  %arrayidx6 = getelementptr %struct.ad9834_state, ptr %st, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4, ptr %arrayidx6, align 2
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 128
  %freq_msg = getelementptr inbounds %struct.ad9834_state, ptr %st, i32 0, i32 7
  %call7 = tail call i32 @spi_sync(ptr noundef %6, ptr noundef %freq_msg) #7
  br label %cleanup

cleanup:                                          ; preds = %ad9834_calc_freqreg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %ad9834_calc_freqreg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9834_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !123
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  %conv = trunc i64 %4 to i32
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.end.sw.epilog.thread_crit_edge [
    i32 16384, label %if.end.sw.bb_crit_edge
    i32 32768, label %if.end.sw.bb_crit_edge158
    i32 49152, label %if.end.sw.bb6_crit_edge
    i32 57344, label %if.end.sw.bb6_crit_edge159
    i32 32, label %sw.bb10
    i32 512, label %sw.bb30
    i32 2048, label %if.end.sw.bb51_crit_edge
    i32 1024, label %if.end.sw.bb51_crit_edge160
    i32 256, label %sw.bb83
  ]

if.end.sw.bb51_crit_edge160:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end.sw.bb51_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end.sw.bb6_crit_edge159:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb_crit_edge158:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge158
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %mclk.i = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk.i, align 4
  %call.i146 = call i32 @clk_get_rate(ptr noundef %9) #7
  %div17.i = lshr i32 %call.i146, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.i, i32 %7)
  %cmp.i = icmp ult i32 %div17.i, %7
  br i1 %cmp.i, label %sw.bb.sw.epilog.thread_crit_edge, label %if.end.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb
  %conv.i.i = zext i32 %7 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp167.i.i = icmp ult i32 %7, 16
  br i1 %cmp167.i.i, label %if.then171.i.i, label %if.else177.i.i, !prof !121

if.then171.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv172.i.i = trunc i64 %mul.i.i to i32
  %div175.i.i = udiv i32 %conv172.i.i, %call.i146
  br label %ad9834_calc_freqreg.exit.i

if.else177.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i146, i64 %mul.i.i) #11, !srcloc !122
  %asmresult1.i.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t288.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %ad9834_calc_freqreg.exit.i

ad9834_calc_freqreg.exit.i:                       ; preds = %if.else177.i.i, %if.then171.i.i
  %freqreg.0.off0.i.i = phi i32 [ %div175.i.i, %if.then171.i.i ], [ %extract.t288.i.i, %if.else177.i.i ]
  %and.i = and i32 %freqreg.0.off0.i.i, 16383
  %or.i = or i32 %and.i, %conv
  %conv.i = trunc i32 %or.i to i16
  %freq_data.i = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %freq_data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %freq_data.i, align 2
  %shr.i = lshr i32 %freqreg.0.off0.i.i, 14
  %and2.i = and i32 %shr.i, 16383
  %or3.i = or i32 %and2.i, %conv
  %conv4.i = trunc i32 %or3.i to i16
  %arrayidx6.i = getelementptr %struct.ad9834_state, ptr %1, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4.i, ptr %arrayidx6.i, align 2
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %freq_msg.i = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 7
  %call7.i = call i32 @spi_sync(ptr noundef %14, ptr noundef %freq_msg.i) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge159
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %16)
  %cmp.i147 = icmp ugt i32 %16, 4096
  br i1 %cmp.i147, label %sw.bb6.sw.epilog.thread_crit_edge, label %if.end.i151

sw.bb6.sw.epilog.thread_crit_edge:                ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end.i151:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %or.i148 = or i32 %16, %conv
  %conv.i149 = trunc i32 %or.i148 to i16
  %data.i = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i149, ptr %data.i, align 128
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  %msg.i = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 5
  %call.i150 = call i32 @spi_sync(ptr noundef %19, ptr noundef %msg.i) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %control = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %control, align 8
  %22 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool12.not = icmp eq i16 %22, 0
  br i1 %tobool12.not, label %if.end14, label %sw.bb10.sw.epilog.thread_crit_edge

sw.bb10.sw.epilog.thread_crit_edge:               ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  %and22 = and i16 %21, -33
  %masksel = select i1 %tobool15.not, i16 0, i16 32
  %storemerge = or i16 %masksel, %and22
  %25 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge, ptr %control, align 8
  %data = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %data, align 128
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  %msg = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 5
  %call29 = call i32 @spi_sync(ptr noundef %28, ptr noundef %msg) #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool31.not = icmp eq i32 %30, 0
  %control38 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %control38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %control38, align 8
  %33 = and i16 %32, -513
  %masksel157 = select i1 %tobool31.not, i16 0, i16 512
  %.sink = or i16 %33, %masksel157
  store i16 %.sink, ptr %control38, align 8
  %data47 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %data47 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %.sink, ptr %data47, align 128
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 128
  %msg49 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 5
  %call50 = call i32 @spi_sync(ptr noundef %36, ptr noundef %msg49) #7
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge160
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %38, label %sw.bb51.sw.epilog.thread_crit_edge [
    i32 0, label %if.then53
    i32 1, label %if.then62
  ]

sw.bb51.sw.epilog.thread_crit_edge:               ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.then53:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  %control56 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %control56 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %control56, align 8
  %42 = trunc i64 %4 to i16
  %43 = and i16 %42, -513
  %44 = xor i16 %43, -513
  %conv59 = and i16 %41, %44
  store i16 %conv59, ptr %control56, align 8
  br label %if.end74

if.then62:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  %control64 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %control64 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %control64, align 8
  %47 = trunc i64 %4 to i16
  %conv67 = or i16 %46, %47
  %48 = and i16 %conv67, -513
  store i16 %48, ptr %control64, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then62, %if.then53
  %control75 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %control75 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %control75, align 8
  %data79 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %data79 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %data79, align 128
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 128
  %msg81 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 5
  %call82 = call i32 @spi_sync(ptr noundef %53, ptr noundef %msg81) #7
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool84.not = icmp eq i32 %55, 0
  %control91 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %control91 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %control91, align 8
  %58 = and i16 %57, -257
  %masksel156 = select i1 %tobool84.not, i16 256, i16 0
  %.sink155 = or i16 %58, %masksel156
  store i16 %.sink155, ptr %control91, align 8
  %data100 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 10
  %59 = ptrtoint ptr %data100 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %.sink155, ptr %data100, align 128
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 128
  %msg102 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 5
  %call103 = call i32 @spi_sync(ptr noundef %61, ptr noundef %msg102) #7
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %sw.bb51.sw.epilog.thread_crit_edge, %sw.bb10.sw.epilog.thread_crit_edge, %sw.bb6.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %if.end.sw.epilog.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %sw.bb6.sw.epilog.thread_crit_edge ], [ -22, %sw.bb.sw.epilog.thread_crit_edge ], [ -19, %if.end.sw.epilog.thread_crit_edge ], [ -22, %sw.bb51.sw.epilog.thread_crit_edge ], [ -22, %sw.bb10.sw.epilog.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb83, %if.end74, %sw.bb30, %if.end14, %if.end.i151, %ad9834_calc_freqreg.exit.i
  %ret.0 = phi i32 [ %call103, %sw.bb83 ], [ %call82, %if.end74 ], [ %call50, %sw.bb30 ], [ %call29, %if.end14 ], [ %call7.i, %ad9834_calc_freqreg.exit.i ], [ %call.i150, %if.end.i151 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool105.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool105.not, i32 %len, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.epilog.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %ret.0.ph, %sw.epilog.thread ], [ %spec.select, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9834_store_wavetype(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devid = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %devid, align 2
  %lock = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %address, align 8
  %conv7 = trunc i64 %5 to i32
  %6 = zext i32 %conv7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %conv7, label %entry.if.end84.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
  ]

entry.if.end84.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.thread

sw.bb:                                            ; preds = %entry
  %call8 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #7
  br i1 %call8, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %control = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %control, align 8
  %9 = and i16 %8, -3
  store i16 %9, ptr %control, align 8
  %10 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %3, label %if.then.if.end84_crit_edge [
    i16 2, label %if.then.if.then11_crit_edge
    i16 0, label %if.then.if.then11_crit_edge116
  ]

if.then.if.then11_crit_edge116:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then.if.end84_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then11:                                        ; preds = %if.then.if.then11_crit_edge, %if.then.if.then11_crit_edge116
  %11 = and i16 %8, -35
  %12 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %control, align 8
  br label %if.end84

if.else:                                          ; preds = %sw.bb
  %call16 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.27) #7
  br i1 %call16, label %if.then17, label %if.else40

if.then17:                                        ; preds = %if.else
  %13 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %3, label %if.else27 [
    i16 2, label %if.then17.if.then19_crit_edge
    i16 0, label %if.then17.if.then19_crit_edge117
  ]

if.then17.if.then19_crit_edge117:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then17.if.then19_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %if.then17.if.then19_crit_edge, %if.then17.if.then19_crit_edge117
  %control20 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %control20 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %control20, align 8
  %16 = and i16 %15, -35
  %17 = or i16 %16, 2
  store i16 %17, ptr %control20, align 8
  br label %if.end84

if.else27:                                        ; preds = %if.then17
  %control28 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %control28 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %control28, align 8
  %20 = and i16 %19, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool31.not = icmp eq i16 %20, 0
  br i1 %tobool31.not, label %if.else33, label %if.else27.if.end84.thread_crit_edge

if.else27.if.end84.thread_crit_edge:              ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.thread

if.else33:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  %or36 = or i16 %19, 2
  %21 = ptrtoint ptr %control28 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %or36, ptr %control28, align 8
  br label %if.end84

if.else40:                                        ; preds = %if.else
  %22 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %3, label %if.else40.if.end84.thread_crit_edge [
    i16 2, label %if.else40.land.lhs.true_crit_edge
    i16 0, label %if.else40.land.lhs.true_crit_edge118
  ]

if.else40.land.lhs.true_crit_edge118:             ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.else40.land.lhs.true_crit_edge:                ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.else40.if.end84.thread_crit_edge:              ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.thread

land.lhs.true:                                    ; preds = %if.else40.land.lhs.true_crit_edge, %if.else40.land.lhs.true_crit_edge118
  %call43 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.28) #7
  br i1 %call43, label %if.then45, label %land.lhs.true.if.end84.thread_crit_edge

land.lhs.true.if.end84.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.thread

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %control46 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %control46 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %control46, align 8
  %25 = and i16 %24, -35
  %26 = or i16 %25, 32
  store i16 %26, ptr %control46, align 8
  br label %if.end84

sw.bb58:                                          ; preds = %entry
  %call59 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.28) #7
  br i1 %call59, label %land.lhs.true61, label %sw.bb58.if.end84.thread_crit_edge

sw.bb58.if.end84.thread_crit_edge:                ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.thread

land.lhs.true61:                                  ; preds = %sw.bb58
  %control62 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %control62 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %control62, align 8
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool65.not = icmp eq i16 %29, 0
  br i1 %tobool65.not, label %if.then66, label %land.lhs.true61.if.end84.thread_crit_edge

land.lhs.true61.if.end84.thread_crit_edge:        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.thread

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  %and69 = and i16 %28, -35
  %30 = or i16 %and69, 32
  %31 = ptrtoint ptr %control62 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %control62, align 8
  br label %if.end84

if.end84.thread:                                  ; preds = %land.lhs.true61.if.end84.thread_crit_edge, %sw.bb58.if.end84.thread_crit_edge, %land.lhs.true.if.end84.thread_crit_edge, %if.else40.if.end84.thread_crit_edge, %if.else27.if.end84.thread_crit_edge, %entry.if.end84.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %37

if.end84:                                         ; preds = %if.then66, %if.then45, %if.else33, %if.then19, %if.then11, %if.then.if.end84_crit_edge
  %control79 = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %control79 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %control79, align 8
  %data = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %data, align 128
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 128
  %msg = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 5
  %call83 = tail call i32 @spi_sync(ptr noundef %36, ptr noundef %msg) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool86.not = icmp eq i32 %call83, 0
  %spec.select = select i1 %tobool86.not, i32 %len, i32 %call83
  br label %37

37:                                               ; preds = %if.end84, %if.end84.thread
  %38 = phi i32 [ -22, %if.end84.thread ], [ %spec.select, %if.end84 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9834_show_out0_wavetype_available(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %devid = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %devid, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %3, label %if.else [
    i16 0, label %entry.if.end10_crit_edge
    i16 2, label %entry.if.end10_crit_edge14
  ]

entry.if.end10_crit_edge14:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %control = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %control, align 8
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %.str.31..str.26 = select i1 %tobool.not, ptr @.str.31, ptr @.str.26
  br label %if.end10

if.end10:                                         ; preds = %if.else, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge14
  %str.0 = phi ptr [ @.str.30, %entry.if.end10_crit_edge ], [ @.str.30, %entry.if.end10_crit_edge14 ], [ %.str.31..str.26, %if.else ]
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %str.0)
  ret i32 %call11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9834_show_out1_wavetype_available(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %control = getelementptr inbounds %struct.ad9834_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %control, align 8
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %.str.28..str.37 = select i1 %tobool.not, ptr @.str.28, ptr @.str.37
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef nonnull %.str.28..str.37)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_ad9834__290_541_ad9834_driver_init6, !1, !"__initcall__kmod_ad9834__290_541_ad9834_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 541, i32 1}
!2 = !{ptr @__exitcall_ad9834_driver_exit, !1, !"__exitcall_ad9834_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 543, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 544, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 545, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 535, i32 11}
!12 = !{ptr @ad9834_driver, !13, !"ad9834_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 533, i32 26}
!14 = !{ptr @ad9834_id, !15, !"ad9834_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 514, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 413, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 419, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad9834_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad9834_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ad9834_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 433, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 442, i32 3}
!31 = !{ptr @ad9834_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ad9834_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 491, i32 3}
!35 = !{ptr @ad9834_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ad9834_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ad9833_info, !38, !"ad9833_info", i1 false, i1 false}
!38 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 388, i32 30}
!39 = !{ptr @ad9833_attribute_group, !40, !"ad9833_attribute_group", i1 false, i1 false}
!40 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 380, i32 37}
!41 = !{ptr @ad9833_attributes, !42, !"ad9833_attributes", i1 false, i1 false}
!42 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 361, i32 26}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 324, i32 8}
!45 = !{ptr @iio_dev_attr_out_altvoltage0_frequency0, !44, !"iio_dev_attr_out_altvoltage0_frequency0", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 325, i32 8}
!48 = !{ptr @iio_dev_attr_out_altvoltage0_frequency1, !47, !"iio_dev_attr_out_altvoltage0_frequency1", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 327, i32 8}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @iio_const_attr_out_altvoltage0_frequency_scale, !50, !"iio_const_attr_out_altvoltage0_frequency_scale", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 329, i32 8}
!55 = !{ptr @iio_dev_attr_out_altvoltage0_phase0, !54, !"iio_dev_attr_out_altvoltage0_phase0", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 330, i32 8}
!58 = !{ptr @iio_dev_attr_out_altvoltage0_phase1, !57, !"iio_dev_attr_out_altvoltage0_phase1", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 332, i32 8}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @iio_const_attr_out_altvoltage0_phase_scale, !60, !"iio_const_attr_out_altvoltage0_phase_scale", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 326, i32 8}
!65 = !{ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, !64, !"iio_dev_attr_out_altvoltage0_frequencysymbol", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 331, i32 8}
!68 = !{ptr @iio_dev_attr_out_altvoltage0_phasesymbol, !67, !"iio_dev_attr_out_altvoltage0_phasesymbol", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 336, i32 8}
!71 = !{ptr @iio_dev_attr_out_altvoltage0_out_enable, !70, !"iio_dev_attr_out_altvoltage0_out_enable", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 339, i32 8}
!74 = !{ptr @iio_dev_attr_out_altvoltage0_out0_wavetype, !73, !"iio_dev_attr_out_altvoltage0_out0_wavetype", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 234, i32 24}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 238, i32 31}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 247, i32 46}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 297, i32 8}
!83 = !{ptr @iio_dev_attr_out_altvoltage0_out0_wavetype_available, !82, !"iio_dev_attr_out_altvoltage0_out0_wavetype_available", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 288, i32 9}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 292, i32 9}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 294, i32 22}
!90 = !{ptr @ad9834_info, !91, !"ad9834_info", i1 false, i1 false}
!91 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 384, i32 30}
!92 = !{ptr @ad9834_attribute_group, !93, !"ad9834_attribute_group", i1 false, i1 false}
!93 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 376, i32 37}
!94 = !{ptr @ad9834_attributes, !95, !"ad9834_attributes", i1 false, i1 false}
!95 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 342, i32 26}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 334, i32 8}
!98 = !{ptr @iio_dev_attr_out_altvoltage0_pincontrol_en, !97, !"iio_dev_attr_out_altvoltage0_pincontrol_en", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 337, i32 8}
!101 = !{ptr @iio_dev_attr_out_altvoltage0_out1_enable, !100, !"iio_dev_attr_out_altvoltage0_out1_enable", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 340, i32 8}
!104 = !{ptr @iio_dev_attr_out_altvoltage0_out1_wavetype, !103, !"iio_dev_attr_out_altvoltage0_out1_wavetype", i1 false, i1 false}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 317, i32 8}
!107 = !{ptr @iio_dev_attr_out_altvoltage0_out1_wavetype_available, !106, !"iio_dev_attr_out_altvoltage0_out1_wavetype_available", i1 false, i1 false}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 310, i32 9}
!110 = !{ptr @ad9834_of_match, !111, !"ad9834_of_match", i1 false, i1 false}
!111 = !{!"../drivers/staging/iio/frequency/ad9834.c", i32 523, i32 34}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2148642704, i64 2148642984, i64 2148643318, i64 2148643652}
!123 = !{!"auto-init"}
