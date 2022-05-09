; ModuleID = '/llk/IR_all_yes/drivers/iio/light/apds9300.c_pt.bc'
source_filename = "../drivers/iio/light/apds9300.c"
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.apds9300_data = type { ptr, %struct.mutex, i32, i32, i32, i32 }

@__initcall__kmod_apds9300__288_519_apds9300_driver_init6 = internal global ptr @apds9300_driver_init, section ".initcall6.init", align 4
@apds9300_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @apds9300_probe, ptr @apds9300_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds9300_pm_ops, ptr null, ptr null }, ptr @apds9300_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_apds9300_driver_exit = internal global ptr @apds9300_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [70 x i8] c"apds9300.author=Kravchenko Oleksandr <o.v.kravchenko@globallogic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [33 x i8] c"apds9300.author=GlobalLogic inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [64 x i8] c"apds9300.description=APDS9300 ambient light photo sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"apds9300.file=drivers/iio/light/apds9300\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"apds9300.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apds9300\00", [23 x i8] zeroinitializer }, align 32
@apds9300_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @apds9300_suspend, ptr @apds9300_resume, ptr @apds9300_suspend, ptr @apds9300_resume, ptr @apds9300_suspend, ptr @apds9300_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@apds9300_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"apds9300\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@apds9300_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@apds9300_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @apds9300_event_spec, i32 2, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 1, i32 13, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [88 x i8] zeroinitializer }, align 32
@apds9300_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @apds9300_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apds9300_read_interrupt_config, ptr @apds9300_write_interrupt_config, ptr @apds9300_read_thresh, ptr @apds9300_write_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@apds9300_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @apds9300_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apds9300_event\00", [17 x i8] zeroinitializer }, align 32
@apds9300_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 438, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq request error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apds9300_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/apds9300.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apds9300_probe._entry_ptr = internal global ptr @apds9300_probe._entry, section ".printk_index", align 4
@apds9300_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 231, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to init the chip\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apds9300_chip_init\00", [45 x i8] zeroinitializer }, align 32
@apds9300_chip_init._entry_ptr = internal global ptr @apds9300_chip_init._entry, section ".printk_index", align 4
@apds9300_set_intr_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 164, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set interrupt state %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"apds9300_set_intr_state\00", [40 x i8] zeroinitializer }, align 32
@apds9300_set_intr_state._entry_ptr = internal global ptr @apds9300_set_intr_state._entry, section ".printk_index", align 4
@apds9300_event_spec = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@apds9300_get_adc_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 104, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read ADC%d value\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"apds9300_get_adc_val\00", [43 x i8] zeroinitializer }, align 32
@apds9300_get_adc_val._entry_ptr = internal global ptr @apds9300_get_adc_val._entry, section ".printk_index", align 4
@apds9300_lux_ratio = internal constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 0, i16 2, i16 4, i16 7, i16 11, i16 15, i16 19, i16 24, i16 29, i16 34, i16 40, i16 45, i16 51, i16 57, i16 64, i16 70, i16 77, i16 84, i16 91, i16 98, i16 105, i16 112, i16 120, i16 128, i16 136, i16 144, i16 152, i16 160, i16 168, i16 177, i16 185, i16 194, i16 203, i16 212, i16 221, i16 230, i16 239, i16 249, i16 258, i16 268, i16 277, i16 287, i16 297, i16 307, i16 317, i16 327, i16 337, i16 347, i16 358, i16 368, i16 379, i16 390, i16 400], [54 x i8] zeroinitializer }, align 32
@apds9300_set_thresh_hi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 143, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set thresh_hi\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apds9300_set_thresh_hi\00", [41 x i8] zeroinitializer }, align 32
@apds9300_set_thresh_hi._entry_ptr = internal global ptr @apds9300_set_thresh_hi._entry, section ".printk_index", align 4
@apds9300_set_thresh_low._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 122, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set thresh_low\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"apds9300_set_thresh_low\00", [40 x i8] zeroinitializer }, align 32
@apds9300_set_thresh_low._entry_ptr = internal global ptr @apds9300_set_thresh_low._entry, section ".printk_index", align 4
@apds9300_clear_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to clear interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"apds9300_clear_intr\00", [44 x i8] zeroinitializer }, align 32
@apds9300_clear_intr._entry_ptr = internal global ptr @apds9300_clear_intr._entry, section ".printk_index", align 4
@apds9300_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 182, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set power state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"apds9300_set_power_state\00", [39 x i8] zeroinitializer }, align 32
@apds9300_set_power_state._entry_ptr = internal global ptr @apds9300_set_power_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"apds9300_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 509, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 511, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"apds9300_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 496, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"apds9300_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 502, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 420, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"apds9300_channels\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 362, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"apds9300_info\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 340, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"apds9300_info_no_irq\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 336, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 436, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 438, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 231, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 163, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"apds9300_event_spec\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 348, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 103, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"apds9300_lux_ratio\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 58, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 143, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 122, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 196, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [32 x i8] c"../drivers/iio/light/apds9300.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 181, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_apds9300_driver_exit, ptr @__initcall__kmod_apds9300__288_519_apds9300_driver_init6, ptr @apds9300_chip_init._entry, ptr @apds9300_chip_init._entry_ptr, ptr @apds9300_clear_intr._entry, ptr @apds9300_clear_intr._entry_ptr, ptr @apds9300_driver_exit, ptr @apds9300_get_adc_val._entry, ptr @apds9300_get_adc_val._entry_ptr, ptr @apds9300_probe._entry, ptr @apds9300_probe._entry_ptr, ptr @apds9300_set_intr_state._entry, ptr @apds9300_set_intr_state._entry_ptr, ptr @apds9300_set_power_state._entry, ptr @apds9300_set_power_state._entry_ptr, ptr @apds9300_set_thresh_hi._entry, ptr @apds9300_set_thresh_hi._entry_ptr, ptr @apds9300_set_thresh_low._entry, ptr @apds9300_set_thresh_low._entry_ptr, ptr @apds9300_driver, ptr @.str, ptr @apds9300_pm_ops, ptr @apds9300_id, ptr @apds9300_probe.__key, ptr @.str.1, ptr @apds9300_channels, ptr @apds9300_info, ptr @apds9300_info_no_irq, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @apds9300_event_spec, ptr @.str.12, ptr @.str.13, ptr @apds9300_lux_ratio, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_set_intr_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_event_spec to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_get_adc_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_lux_ratio to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_set_thresh_hi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_set_thresh_low._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_clear_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apds9300_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @apds9300_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apds9300_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @apds9300_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #6
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
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -128, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %apds9300_set_power_state.exit.thread.i, label %apds9300_set_power_state.exit.i

apds9300_set_power_state.exit.thread.i:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %power_state.i.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %power_state.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power_state.i.i, align 4
  br label %if.end.i

apds9300_set_power_state.exit.i:                  ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %apds9300_set_power_state.exit.i.apds9300_chip_init.exit_crit_edge, label %apds9300_set_power_state.exit.i.if.end.i_crit_edge

apds9300_set_power_state.exit.i.if.end.i_crit_edge: ; preds = %apds9300_set_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

apds9300_set_power_state.exit.i.apds9300_chip_init.exit_crit_edge: ; preds = %apds9300_set_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_chip_init.exit

if.end.i:                                         ; preds = %apds9300_set_power_state.exit.i.if.end.i_crit_edge, %apds9300_set_power_state.exit.thread.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -128, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool1.not.i23.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool1.not.i23.i, label %apds9300_set_power_state.exit28.thread.i, label %apds9300_set_power_state.exit28.i

apds9300_set_power_state.exit28.thread.i:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %power_state.i26.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %power_state.i26.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %power_state.i26.i, align 4
  br label %if.end4.i

apds9300_set_power_state.exit28.i:                ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i24.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i24.i, ptr noundef nonnull @.str.20, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %cmp2.i = icmp slt i32 %call.i22.i, 0
  br i1 %cmp2.i, label %apds9300_set_power_state.exit28.i.apds9300_chip_init.exit_crit_edge, label %apds9300_set_power_state.exit28.i.if.end4.i_crit_edge

apds9300_set_power_state.exit28.i.if.end4.i_crit_edge: ; preds = %apds9300_set_power_state.exit28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

apds9300_set_power_state.exit28.i.apds9300_chip_init.exit_crit_edge: ; preds = %apds9300_set_power_state.exit28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_chip_init.exit

if.end4.i:                                        ; preds = %apds9300_set_power_state.exit28.i.if.end4.i_crit_edge, %apds9300_set_power_state.exit28.thread.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 3
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end4.i.apds9300_chip_init.exit_crit_edge

if.end4.i.apds9300_chip_init.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_chip_init.exit

if.end8.i:                                        ; preds = %if.end4.i
  %power_state.i29.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %power_state.i29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_state.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end8.i.apds9300_chip_init.exit_crit_edge, label %if.end.i31.i

if.end8.i.apds9300_chip_init.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_chip_init.exit

if.end.i31.i:                                     ; preds = %if.end8.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -122, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool2.not.i.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool2.not.i.i, label %apds9300_set_intr_state.exit.thread38.i, label %apds9300_set_intr_state.exit.i

apds9300_set_intr_state.exit.thread38.i:          ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %intr_en.i.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %intr_en.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %intr_en.i.i, align 4
  br label %do.body

apds9300_set_intr_state.exit.i:                   ; preds = %if.end.i31.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev.i32.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32.i, ptr noundef nonnull @.str.10, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp10.i = icmp slt i32 %call.i30.i, 0
  br i1 %cmp10.i, label %apds9300_set_intr_state.exit.i.apds9300_chip_init.exit_crit_edge, label %apds9300_set_intr_state.exit.i.do.body_crit_edge

apds9300_set_intr_state.exit.i.do.body_crit_edge: ; preds = %apds9300_set_intr_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

apds9300_set_intr_state.exit.i.apds9300_chip_init.exit_crit_edge: ; preds = %apds9300_set_intr_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_chip_init.exit

apds9300_chip_init.exit:                          ; preds = %apds9300_set_intr_state.exit.i.apds9300_chip_init.exit_crit_edge, %if.end8.i.apds9300_chip_init.exit_crit_edge, %if.end4.i.apds9300_chip_init.exit_crit_edge, %apds9300_set_power_state.exit28.i.apds9300_chip_init.exit_crit_edge, %apds9300_set_power_state.exit.i.apds9300_chip_init.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %apds9300_set_power_state.exit.i.apds9300_chip_init.exit_crit_edge ], [ %call.i22.i, %apds9300_set_power_state.exit28.i.apds9300_chip_init.exit_crit_edge ], [ %call.i30.i, %apds9300_set_intr_state.exit.i.apds9300_chip_init.exit_crit_edge ], [ -19, %if.end4.i.apds9300_chip_init.exit_crit_edge ], [ -16, %if.end8.i.apds9300_chip_init.exit_crit_edge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #9
  br label %err

do.body:                                          ; preds = %apds9300_set_intr_state.exit.i.do.body_crit_edge, %apds9300_set_intr_state.exit.thread38.i
  %mutex = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @apds9300_probe.__key) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @apds9300_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %25 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str, ptr %name, align 8
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool6.not = icmp eq i32 %28, 0
  %spec.select = select i1 %tobool6.not, ptr @apds9300_info_no_irq, ptr @apds9300_info
  %29 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec.select, ptr %29, align 8
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %do.body.if.end23_crit_edge, label %if.then12

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then12:                                        ; preds = %do.body
  %call15 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %32, ptr noundef null, ptr noundef nonnull @apds9300_interrupt_handler, i32 noundef 8194, ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.if.end23_crit_edge, label %do.end20

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %call15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %sub) #9
  br label %err

if.end23:                                         ; preds = %if.then12.if.end23_crit_edge, %do.body.if.end23_crit_edge
  %call24 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.err_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %if.end23.err_crit_edge, %do.end20, %apds9300_chip_init.exit
  %ret.0 = phi i32 [ %ret.0.i, %apds9300_chip_init.exit ], [ %call15, %do.end20 ], [ %call24, %if.end23.err_crit_edge ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -128, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i57, label %do.end.i56

do.end.i56:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %dev.i55 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  br label %cleanup

if.end.i57:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %power_state.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i57, %do.end.i56, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %ret.0, %do.end.i56 ], [ %ret.0, %if.end.i57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.apds9300_set_intr_state.exit_crit_edge, label %if.end.i

entry.apds9300_set_intr_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_set_intr_state.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -122, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef 0) #9
  br label %apds9300_set_intr_state.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %intr_en.i = getelementptr inbounds %struct.apds9300_data, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %intr_en.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %intr_en.i, align 4
  br label %apds9300_set_intr_state.exit

apds9300_set_intr_state.exit:                     ; preds = %if.end5.i, %do.end.i, %entry.apds9300_set_intr_state.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -128, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool1.not.i = icmp eq i32 %call.i6, 0
  br i1 %tobool1.not.i, label %if.end.i10, label %do.end.i8

do.end.i8:                                        ; preds = %apds9300_set_intr_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %dev.i7 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i7, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  br label %apds9300_set_power_state.exit

if.end.i10:                                       ; preds = %apds9300_set_intr_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %power_state.i, align 4
  br label %apds9300_set_power_state.exit

apds9300_set_power_state.exit:                    ; preds = %if.end.i10, %do.end.i8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_interrupt_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call2 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 30064771072, i64 noundef %call1) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.apds9300_clear_intr.exit_crit_edge

entry.apds9300_clear_intr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_clear_intr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18) #9
  br label %apds9300_clear_intr.exit

apds9300_clear_intr.exit:                         ; preds = %do.end.i, %entry.apds9300_clear_intr.exit_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %8, i8 noundef zeroext -84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.12, i32 noundef 0) #9
  br label %sw.epilog

if.end:                                           ; preds = %if.end.i
  %11 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i28 = icmp eq i32 %12, 0
  br i1 %tobool.not.i28, label %if.end.sw.epilog_crit_edge, label %if.end.i31

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i31:                                       ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i29 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %14, i8 noundef zeroext -82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i30, label %do.end.i33, label %if.end5

do.end.i33:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev.i32 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32, ptr noundef nonnull @.str.12, i32 noundef 1) #9
  br label %sw.epilog

if.end5:                                          ; preds = %if.end.i31
  %conv = trunc i32 %call.i to i16
  %conv.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp.i36 = icmp eq i16 %conv, 0
  br i1 %cmp.i36, label %if.end5.apds9300_calculate_lux.exit_crit_edge, label %if.end.i37

if.end5.apds9300_calculate_lux.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_calculate_lux.exit

if.end.i37:                                       ; preds = %if.end5
  %conv2.i = and i32 %call.i29, 65535
  %mul.i = mul nuw nsw i32 %conv2.i, 100
  %add.i = add nsw i32 %conv.i, -1
  %sub.i = add nsw i32 %add.i, %mul.i
  %div.i = sdiv i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %div.i)
  %cmp5.i = icmp ult i32 %div.i, 53
  br i1 %cmp5.i, label %if.then7.i, label %if.else209.i

if.then7.i:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %mul9.i = mul nuw nsw i32 %conv.i, 3150
  %arrayidx.i = getelementptr [53 x i16], ptr @apds9300_lux_ratio, i32 0, i32 %div.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %conv11.i = zext i16 %18 to i32
  %mul12.i = mul nuw i32 %conv.i, %conv11.i
  %conv13.i = sext i32 %mul12.i to i64
  %mul14.i = mul nsw i64 %conv13.i, 5930
  %sub16.i = add nsw i64 %mul14.i, 999
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub16.i, i32 0) #10, !srcloc !87
  %asmresult.i.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub16.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !88
  %asmresult10.i.i = extractvalue { i64, i32 } %20, 0
  %div184336.i = lshr i64 %asmresult10.i.i, 9
  %conv207.i = trunc i64 %div184336.i to i32
  %sub208.i = sub i32 %mul9.i, %conv207.i
  br label %if.end240.i

if.else209.i:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %div.i)
  %cmp210.i = icmp ult i32 %div.i, 66
  br i1 %cmp210.i, label %if.then212.i, label %if.else218.i

if.then212.i:                                     ; preds = %if.else209.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul214.i = mul nuw nsw i32 %conv.i, 2290
  %mul216.neg.i = mul nsw i32 %conv2.i, -2910
  %sub217.i = add nsw i32 %mul216.neg.i, %mul214.i
  br label %if.end240.i

if.else218.i:                                     ; preds = %if.else209.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %div.i)
  %cmp219.i = icmp ult i32 %div.i, 81
  br i1 %cmp219.i, label %if.then221.i, label %if.else227.i

if.then221.i:                                     ; preds = %if.else218.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul223.i = mul nuw nsw i32 %conv.i, 1570
  %mul225.neg.i = mul nsw i32 %conv2.i, -1800
  %sub226.i = add nsw i32 %mul225.neg.i, %mul223.i
  br label %if.end240.i

if.else227.i:                                     ; preds = %if.else218.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %div.i)
  %cmp228.i = icmp ult i32 %div.i, 131
  br i1 %cmp228.i, label %if.then230.i, label %if.else227.i.if.end240.i_crit_edge

if.else227.i.if.end240.i_crit_edge:               ; preds = %if.else227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240.i

if.then230.i:                                     ; preds = %if.else227.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul232.i = mul nuw nsw i32 %conv.i, 338
  %mul234.neg.i = mul nsw i32 %conv2.i, -260
  %sub235.i = add nsw i32 %mul234.neg.i, %mul232.i
  br label %if.end240.i

if.end240.i:                                      ; preds = %if.then230.i, %if.else227.i.if.end240.i_crit_edge, %if.then221.i, %if.then212.i, %if.then7.i
  %lux.0.i = phi i32 [ %sub208.i, %if.then7.i ], [ %sub217.i, %if.then212.i ], [ %sub226.i, %if.then221.i ], [ %sub235.i, %if.then230.i ], [ 0, %if.else227.i.if.end240.i_crit_edge ]
  %div241.i = udiv i32 %lux.0.i, 100000
  br label %apds9300_calculate_lux.exit

apds9300_calculate_lux.exit:                      ; preds = %if.end240.i, %if.end5.apds9300_calculate_lux.exit_crit_edge
  %retval.0.i38 = phi i32 [ %div241.i, %if.end240.i ], [ 0, %if.end5.apds9300_calculate_lux.exit_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i38, ptr %val, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %power_state.i39 = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %power_state.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %power_state.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i40 = icmp eq i32 %25, 0
  br i1 %tobool.not.i40, label %sw.bb8.sw.epilog_crit_edge, label %if.end.i44

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i44:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i = icmp eq i32 %23, 0
  %conv2.i41 = select i1 %tobool1.not.i, i8 -84, i8 -82
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i42 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %27, i8 noundef zeroext %conv2.i41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i43 = icmp slt i32 %call.i42, 0
  br i1 %cmp.i43, label %do.end.i46, label %if.end13

do.end.i46:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev.i45 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i45, ptr noundef nonnull @.str.12, i32 noundef %23) #9
  br label %sw.epilog

if.end13:                                         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i42, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %do.end.i46, %sw.bb8.sw.epilog_crit_edge, %apds9300_calculate_lux.exit, %do.end.i33, %if.end.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 1, %if.end13 ], [ 1, %apds9300_calculate_lux.exit ], [ %call.i, %do.end.i ], [ -16, %sw.bb.sw.epilog_crit_edge ], [ %call.i29, %do.end.i33 ], [ -16, %if.end.sw.epilog_crit_edge ], [ %call.i42, %do.end.i46 ], [ -16, %sw.bb8.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apds9300_read_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %intr_en = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intr_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_en, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_write_interrupt_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.apds9300_set_intr_state.exit_crit_edge, label %if.end.i

entry.apds9300_set_intr_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %apds9300_set_intr_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool1.not.i = icmp eq i32 %state, 0
  %conv.i = select i1 %tobool1.not.i, i8 0, i8 17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -122, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %state) #9
  br label %apds9300_set_intr_state.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %intr_en.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %intr_en.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %state, ptr %intr_en.i, align 4
  br label %apds9300_set_intr_state.exit

apds9300_set_intr_state.exit:                     ; preds = %if.end5.i, %do.end.i, %entry.apds9300_set_intr_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end5.i ], [ -16, %entry.apds9300_set_intr_state.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apds9300_read_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %dir, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thresh_hi = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %thresh_low = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %storemerge.in = phi ptr [ %thresh_low, %sw.bb1 ], [ %thresh_hi, %sw.bb ]
  %3 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_write_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp.i = icmp sgt i32 %val, 65535
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv.i = trunc i32 %val to i16
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext -92, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #9
  br label %if.end

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %thresh_hi.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %thresh_hi.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val, ptr %thresh_hi.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i11

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i11:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp.i10 = icmp sgt i32 %val, 65535
  br i1 %cmp.i10, label %if.end.i11.if.end_crit_edge, label %if.end2.i15

if.end.i11.if.end_crit_edge:                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end2.i15:                                      ; preds = %if.end.i11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv.i12 = trunc i32 %val to i16
  %call.i13 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %10, i8 noundef zeroext -94, i16 noundef zeroext %conv.i12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool3.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool3.not.i14, label %if.end6.i18, label %do.end.i17

do.end.i17:                                       ; preds = %if.end2.i15
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.16) #9
  br label %if.end

if.end6.i18:                                      ; preds = %if.end2.i15
  call void @__sanitizer_cov_trace_pc() #8
  %thresh_low.i = getelementptr inbounds %struct.apds9300_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %thresh_low.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %val, ptr %thresh_low.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end6.i18, %do.end.i17, %if.end.i11.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end6.i, %do.end.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end6.i ], [ -16, %if.then.if.end_crit_edge ], [ -22, %if.end.i.if.end_crit_edge ], [ %call.i13, %do.end.i17 ], [ 0, %if.end6.i18 ], [ -16, %if.else.if.end_crit_edge ], [ -22, %if.end.i11.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.apds9300_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  br label %apds9300_set_power_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %power_state.i, align 4
  br label %apds9300_set_power_state.exit

apds9300_set_power_state.exit:                    ; preds = %if.end.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apds9300_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.apds9300_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef 1) #9
  br label %apds9300_set_power_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %power_state.i = getelementptr inbounds %struct.apds9300_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %power_state.i, align 4
  br label %apds9300_set_power_state.exit

apds9300_set_power_state.exit:                    ; preds = %if.end.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_apds9300__288_519_apds9300_driver_init6, !1, !"__initcall__kmod_apds9300__288_519_apds9300_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/apds9300.c", i32 519, i32 1}
!2 = !{ptr @__exitcall_apds9300_driver_exit, !1, !"__exitcall_apds9300_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/apds9300.c", i32 521, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/apds9300.c", i32 522, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/apds9300.c", i32 523, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/light/apds9300.c", i32 524, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/apds9300.c", i32 511, i32 11}
!14 = !{ptr @apds9300_driver, !15, !"apds9300_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/apds9300.c", i32 509, i32 26}
!16 = !{ptr @apds9300_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/apds9300.c", i32 420, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/apds9300.c", i32 436, i32 5}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/light/apds9300.c", i32 438, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @apds9300_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @apds9300_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/apds9300.c", i32 231, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @apds9300_chip_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @apds9300_chip_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/apds9300.c", i32 163, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @apds9300_set_intr_state._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @apds9300_set_intr_state._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @apds9300_channels, !40, !"apds9300_channels", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/apds9300.c", i32 362, i32 35}
!41 = !{ptr @apds9300_event_spec, !42, !"apds9300_event_spec", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/apds9300.c", i32 348, i32 36}
!43 = !{ptr @apds9300_info, !44, !"apds9300_info", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/apds9300.c", i32 340, i32 30}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/apds9300.c", i32 103, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @apds9300_get_adc_val._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @apds9300_get_adc_val._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @apds9300_lux_ratio, !51, !"apds9300_lux_ratio", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/apds9300.c", i32 58, i32 18}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/apds9300.c", i32 143, i32 3}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @apds9300_set_thresh_hi._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @apds9300_set_thresh_hi._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/apds9300.c", i32 122, i32 3}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @apds9300_set_thresh_low._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @apds9300_set_thresh_low._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @apds9300_info_no_irq, !63, !"apds9300_info_no_irq", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/apds9300.c", i32 336, i32 30}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/apds9300.c", i32 196, i32 3}
!66 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @apds9300_clear_intr._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @apds9300_clear_intr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/apds9300.c", i32 181, i32 3}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @apds9300_set_power_state._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @apds9300_set_power_state._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @apds9300_pm_ops, !75, !"apds9300_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/apds9300.c", i32 496, i32 8}
!76 = !{ptr @apds9300_id, !77, !"apds9300_id", i1 false, i1 false}
!77 = !{!"../drivers/iio/light/apds9300.c", i32 502, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 711479, i64 711506, i64 711528, i64 711556}
!88 = !{i64 711887, i64 711914, i64 711947, i64 711968, i64 711995, i64 712021}
