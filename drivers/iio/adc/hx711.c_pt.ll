; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/hx711.c_pt.bc'
source_filename = "../drivers/iio/adc/hx711.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hx711_gain_to_scale = type { i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.hx711_data = type { ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, [4 x i8], [4 x i32], i32, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_hx711__288_616_hx711_driver_init6 = internal global ptr @hx711_driver_init, section ".initcall6.init", align 4
@hx711_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hx711_probe, ptr @hx711_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_hx711_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hx711_driver_exit = internal global ptr @hx711_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"hx711.author=Andreas Klinger <ak@it-klinger.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"hx711.description=HX711 bitbanging driver - ADC for weight cells\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [33 x i8] c"hx711.file=drivers/iio/adc/hx711\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [18 x i8] c"hx711.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [32 x i8] c"hx711.alias=platform:hx711-gpio\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hx711-gpio\00", [21 x i8] zeroinitializer }, align 32
@of_hx711_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"avia,hx711\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hx711_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hx711_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/iio/adc/hx711.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hx711_probe._entry_ptr = internal global ptr @hx711_probe._entry, section ".printk_index", align 4
@hx711_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hx711_data->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sck\00", [28 x i8] zeroinitializer }, align 32
@hx711_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get sck-gpiod: err=%ld\0A\00", [62 x i8] zeroinitializer }, align 32
@hx711_probe._entry_ptr.10 = internal global ptr @hx711_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dout\00", [27 x i8] zeroinitializer }, align 32
@hx711_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get dout-gpiod: err=%ld\0A\00", [61 x i8] zeroinitializer }, align 32
@hx711_probe._entry_ptr.14 = internal global ptr @hx711_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@hx711_gain_to_scale = internal global { [3 x %struct.hx711_gain_to_scale], [48 x i8] } { [3 x %struct.hx711_gain_to_scale] [%struct.hx711_gain_to_scale { i32 128, i32 1, i32 0, i32 0 }, %struct.hx711_gain_to_scale { i32 32, i32 2, i32 0, i32 1 }, %struct.hx711_gain_to_scale { i32 64, i32 3, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@hx711_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 544, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"clock-frequency too low - assuming 400 kHz\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hx711_probe._entry_ptr.20 = internal global ptr @hx711_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hx711\00", [26 x i8] zeroinitializer }, align 32
@hx711_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @hx711_attribute_group, ptr @hx711_read_raw, ptr null, ptr null, ptr @hx711_write_raw, ptr null, ptr @hx711_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hx711_chan_spec = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@hx711_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setup of iio triggered buffer failed\0A\00", [58 x i8] zeroinitializer }, align 32
@hx711_probe._entry_ptr.24 = internal global ptr @hx711_probe._entry.22, section ".printk_index", align 4
@hx711_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't register the device\0A\00", [34 x i8] zeroinitializer }, align 32
@hx711_probe._entry_ptr.27 = internal global ptr @hx711_probe._entry.25, section ".printk_index", align 4
@hx711_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hx711_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@hx711_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_voltage0_scale_available, ptr @iio_dev_attr_in_voltage1_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage0_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hx711_scale_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage1_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hx711_scale_available_show, ptr null }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage0_scale_available\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%09d \00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage1_scale_available\00", [36 x i8] zeroinitializer }, align 32
@hx711_reset_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset failed!\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hx711_reset_read\00", [47 x i8] zeroinitializer }, align 32
@hx711_reset_read._entry_ptr = internal global ptr @hx711_reset_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"hx711_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 607, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 611, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"of_hx711_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 600, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 470, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 477, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 483, i32 49 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 485, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 494, i32 47 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 496, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 501, i32 49 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"hx711_gain_to_scale\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 43, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 536, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 544, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 553, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"hx711_iio_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 420, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"hx711_chan_spec\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 427, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 562, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 568, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"hx711_attribute_group\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 416, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"hx711_attributes\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 410, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage0_scale_available\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage1_scale_available\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 404, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 396, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 407, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [27 x i8] c"../drivers/iio/adc/hx711.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 257, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hx711_driver_exit, ptr @__initcall__kmod_hx711__288_616_hx711_driver_init6, ptr @hx711_driver_exit, ptr @hx711_probe._entry, ptr @hx711_probe._entry.12, ptr @hx711_probe._entry.17, ptr @hx711_probe._entry.22, ptr @hx711_probe._entry.25, ptr @hx711_probe._entry.8, ptr @hx711_probe._entry_ptr, ptr @hx711_probe._entry_ptr.10, ptr @hx711_probe._entry_ptr.14, ptr @hx711_probe._entry_ptr.20, ptr @hx711_probe._entry_ptr.24, ptr @hx711_probe._entry_ptr.27, ptr @hx711_reset_read._entry, ptr @hx711_reset_read._entry_ptr, ptr @hx711_driver, ptr @.str, ptr @of_hx711_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hx711_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @hx711_gain_to_scale, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @hx711_iio_info, ptr @hx711_chan_spec, ptr @.str.23, ptr @.str.26, ptr @hx711_attribute_group, ptr @hx711_attributes, ptr @iio_dev_attr_in_voltage0_scale_available, ptr @iio_dev_attr_in_voltage1_scale_available, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_hx711_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_gain_to_scale to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_chan_spec to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage0_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage1_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hx711_reset_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hx711_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hx711_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @hx711_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 144) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %3, align 8
  %lock = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @hx711_probe.__key) #7
  %call7 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #7
  %gpiod_pd_sck = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %gpiod_pd_sck to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %gpiod_pd_sck, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %6) #10
  %7 = ptrtoint ptr %gpiod_pd_sck to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpiod_pd_sck, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 1) #7
  %gpiod_dout = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %gpiod_dout to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %gpiod_dout, align 8
  %cmp.i138 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %do.end25, label %if.end30

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %11) #10
  %12 = ptrtoint ptr %gpiod_dout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_dout, align 8
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %call31 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  %reg_avdd = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %reg_avdd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %reg_avdd, align 4
  %cmp.i139 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %call39 = tail call i32 @regulator_enable(ptr noundef %call31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %17 = ptrtoint ptr %reg_avdd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_avdd, align 4
  %call43 = tail call i32 @regulator_get_voltage(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.error_regulator_crit_edge, label %if.end46

if.end41.error_regulator_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_regulator

if.end46:                                         ; preds = %if.end41
  %mul = mul i32 %call43, 100
  %19 = load i32, ptr @hx711_gain_to_scale, align 4
  %div = sdiv i32 %mul, %19
  %div48 = sdiv i32 %div, 1678
  store i32 %div48, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 0, i32 2), align 4
  %20 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1), align 4
  %div.1 = sdiv i32 %mul, %20
  %div48.1 = sdiv i32 %div.1, 1678
  store i32 %div48.1, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1, i32 2), align 4
  %21 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2), align 4
  %div.2 = sdiv i32 %mul, %21
  %div48.2 = sdiv i32 %div.2, 1678
  store i32 %div48.2, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2, i32 2), align 4
  %gain_set = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %gain_set to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %gain_set, align 8
  %gain_chan_a = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %gain_chan_a to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %gain_chan_a, align 4
  %clock_frequency = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 400000, ptr %clock_frequency, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %clock_frequency, i32 noundef 1, i32 noundef 0) #7
  %25 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %26)
  %cmp53 = icmp ult i32 %26, 20000
  br i1 %cmp53, label %do.end57, label %if.end46.if.end59_crit_edge

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %27 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 400000, ptr %clock_frequency, align 4
  br label %if.end59

if.end59:                                         ; preds = %do.end57, %if.end46.if.end59_crit_edge
  %28 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock_frequency, align 4
  %div61 = udiv i32 1000000000, %29
  %data_ready_delay_ns = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %data_ready_delay_ns to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div61, ptr %data_ready_delay_ns, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %32 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.21, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %33 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hx711_iio_info, ptr %info, align 8
  %34 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hx711_chan_spec, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %36 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %num_channels, align 4
  %call62 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @hx711_trigger, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end67, label %if.end68

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  br label %error_regulator

if.end68:                                         ; preds = %if.end59
  %call69 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end74, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #10
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #7
  br label %error_regulator

error_regulator:                                  ; preds = %do.end74, %do.end67, %if.end41.error_regulator_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end41.error_regulator_crit_edge ], [ %call62, %do.end67 ], [ %call69, %do.end74 ]
  %37 = ptrtoint ptr %reg_avdd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_avdd, align 4
  %call77 = tail call i32 @regulator_disable(ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %error_regulator, %if.end68.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then34, %do.end25, %do.end13, %do.end
  %retval.0 = phi i32 [ %9, %do.end13 ], [ %14, %do.end25 ], [ %16, %if.then34 ], [ %ret.0, %error_regulator ], [ -12, %do.end ], [ %call39, %if.end37.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #7
  %reg_avdd = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg_avdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_avdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_trigger(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %buffer = getelementptr inbounds %struct.hx711_data, ptr %3, i32 0, i32 8
  %4 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp27.not = icmp eq i32 %6, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.030 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_scan_mask, align 4
  %div3.i = lshr i32 %i.028, 5
  %arrayidx.i = getelementptr i32, ptr %8, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.028, 31
  %11 = shl nuw i32 1, %and.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 8
  %channel = getelementptr %struct.iio_chan_spec, ptr %14, i32 %i.028, i32 1
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 4
  %call3 = tail call fastcc i32 @hx711_reset_read(ptr noundef %3, i32 noundef %16)
  %arrayidx5 = getelementptr %struct.hx711_data, ptr %3, i32 0, i32 8, i32 %j.030
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3, ptr %arrayidx5, align 4
  %inc = add i32 %j.030, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end ], [ %j.030, %for.body.for.inc_crit_edge ]
  %inc6 = add nuw i32 %i.028, 1
  %18 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %inc6, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scan_timestamp.i, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %22 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %25, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i26 = getelementptr i64, ptr %buffer, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %23, ptr %arrayidx.i26, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %28) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.hx711_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call1 = tail call fastcc i32 @hx711_reset_read(ptr noundef %1, i32 noundef %4)
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  %. = select i1 %cmp, i32 %7, i32 1
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %lock4 = getelementptr inbounds %struct.hx711_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock4, i32 noundef 0) #7
  %gain_set = getelementptr inbounds %struct.hx711_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %gain_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gain_set, align 8
  %11 = load i32, ptr @hx711_gain_to_scale, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp2.i = icmp eq i32 %11, %10
  br i1 %cmp2.i, label %sw.bb3.if.then.i_crit_edge, label %for.inc.i

sw.bb3.if.then.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %sw.bb3.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %sw.bb3.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ]
  %scale.i = getelementptr [3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 %i.08.lcssa.i, i32 2
  %12 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scale.i, align 4
  br label %hx711_get_gain_to_scale.exit

for.inc.i:                                        ; preds = %sw.bb3
  %14 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp2.1.i = icmp eq i32 %14, %10
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %15 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %10)
  %cmp2.2.i = icmp eq i32 %15, %10
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.1.i.hx711_get_gain_to_scale.exit_crit_edge

for.inc.1.i.hx711_get_gain_to_scale.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hx711_get_gain_to_scale.exit

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

hx711_get_gain_to_scale.exit:                     ; preds = %for.inc.1.i.hx711_get_gain_to_scale.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ 0, %for.inc.1.i.hx711_get_gain_to_scale.exit_crit_edge ]
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %lock4) #7
  br label %cleanup

cleanup:                                          ; preds = %hx711_get_gain_to_scale.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %hx711_get_gain_to_scale.exit ], [ %., %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp.not, %cond
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.hx711_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val2)
  %cmp2.i = icmp eq i32 %2, %val2
  br i1 %cmp2.i, label %if.end.hx711_get_scale_to_gain.exit_crit_edge, label %for.inc.i

if.end.hx711_get_scale_to_gain.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hx711_get_scale_to_gain.exit

for.inc.i:                                        ; preds = %if.end
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val2)
  %cmp2.1.i = icmp eq i32 %3, %val2
  br i1 %cmp2.1.i, label %for.inc.i.hx711_get_scale_to_gain.exit_crit_edge, label %for.inc.1.i

for.inc.i.hx711_get_scale_to_gain.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hx711_get_scale_to_gain.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val2)
  %cmp2.2.i = icmp eq i32 %4, %val2
  br i1 %cmp2.2.i, label %for.inc.1.i.hx711_get_scale_to_gain.exit_crit_edge, label %for.inc.1.i.cleanup.sink.split_crit_edge

for.inc.1.i.cleanup.sink.split_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc.1.i.hx711_get_scale_to_gain.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hx711_get_scale_to_gain.exit

hx711_get_scale_to_gain.exit:                     ; preds = %for.inc.1.i.hx711_get_scale_to_gain.exit_crit_edge, %for.inc.i.hx711_get_scale_to_gain.exit_crit_edge, %if.end.hx711_get_scale_to_gain.exit_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %if.end.hx711_get_scale_to_gain.exit_crit_edge ], [ 1, %for.inc.i.hx711_get_scale_to_gain.exit_crit_edge ], [ 2, %for.inc.1.i.hx711_get_scale_to_gain.exit_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 %i.08.lcssa.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %hx711_get_scale_to_gain.exit.cleanup.sink.split_crit_edge, label %if.end5

hx711_get_scale_to_gain.exit.cleanup.sink.split_crit_edge: ; preds = %hx711_get_scale_to_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %hx711_get_scale_to_gain.exit
  %gain_set = getelementptr inbounds %struct.hx711_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %gain_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gain_set, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp6.not = icmp eq i32 %6, %8
  br i1 %cmp6.not, label %if.end5.if.end17_crit_edge, label %if.then7

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then7:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %gain_set to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %gain_set, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp9.not = icmp eq i32 %6, 32
  br i1 %cmp9.not, label %if.then7.if.end11_crit_edge, label %if.then10

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %gain_chan_a = getelementptr inbounds %struct.hx711_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %gain_chan_a to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %gain_chan_a, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7.if.end11_crit_edge
  %call12 = tail call fastcc i32 @hx711_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup.sink.split_crit_edge, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end11.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17, %if.end11.cleanup.sink.split_crit_edge, %hx711_get_scale_to_gain.exit.cleanup.sink.split_crit_edge, %for.inc.1.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end17 ], [ %6, %hx711_get_scale_to_gain.exit.cleanup.sink.split_crit_edge ], [ -22, %for.inc.1.i.cleanup.sink.split_crit_edge ], [ %call12, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hx711_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hx711_scale_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %address, align 8
  %conv = trunc i64 %1 to i32
  %2 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp3 = icmp eq i32 %2, %conv
  br i1 %cmp3, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 0, i32 2), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %len.1 = phi i32 [ %call, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp3.1 = icmp eq i32 %4, %conv
  br i1 %cmp3.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.1 = getelementptr i8, ptr %buf, i32 %len.1
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1, i32 2), align 4
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.1, ptr noundef nonnull @.str.29, i32 noundef %5)
  %add.1 = add i32 %call.1, %len.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %len.1.1 = phi i32 [ %add.1, %if.then.1 ], [ %len.1, %for.inc.for.inc.1_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp3.2 = icmp eq i32 %6, %conv
  br i1 %cmp3.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr5.2 = getelementptr i8, ptr %buf, i32 %len.1.1
  %7 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2, i32 2), align 4
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.2, ptr noundef nonnull @.str.29, i32 noundef %7)
  %add.2 = add i32 %call.2, %len.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %len.1.2 = phi i32 [ %add.2, %if.then.2 ], [ %len.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %len.1.2
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2560, ptr %add.ptr7, align 1
  %add9 = add i32 %len.1.2, 1
  ret i32 %add9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hx711_reset_read(ptr nocapture noundef %hx711_data, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_dout.i.i = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.07.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %0 = ptrtoint ptr %gpiod_dout.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_dout.i.i, align 8
  %call.i.i = tail call i32 @gpiod_get_value(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end_crit_edge, label %if.end.i.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 10) #7
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %if.then.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then.i:                                        ; preds = %if.end.i.i
  %gpiod_pd_sck.i = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 1
  %2 = ptrtoint ptr %gpiod_pd_sck.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_pd_sck.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 10) #7
  %4 = ptrtoint ptr %gpiod_pd_sck.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_pd_sck.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #7
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %if.end.i15.i.for.body.i12.i_crit_edge, %if.then.i
  %i.07.i9.i = phi i32 [ 0, %if.then.i ], [ %inc.i13.i, %if.end.i15.i.for.body.i12.i_crit_edge ]
  %6 = ptrtoint ptr %gpiod_dout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_dout.i.i, align 8
  %call.i10.i = tail call i32 @gpiod_get_value(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %hx711_reset.exit.thread22, label %if.end.i15.i

hx711_reset.exit.thread22:                        ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  %gain_set.i24 = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 4
  %8 = ptrtoint ptr %gain_set.i24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %gain_set.i24, align 8
  br label %if.end

if.end.i15.i:                                     ; preds = %for.body.i12.i
  tail call void @msleep(i32 noundef 10) #7
  %inc.i13.i = add nuw nsw i32 %i.07.i9.i, 1
  %exitcond.not.i14.i = icmp eq i32 %inc.i13.i, 100
  br i1 %exitcond.not.i14.i, label %do.end, label %if.end.i15.i.for.body.i12.i_crit_edge

if.end.i15.i.for.body.i12.i_crit_edge:            ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i12.i

do.end:                                           ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  %gain_set.i = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 4
  %9 = ptrtoint ptr %gain_set.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %gain_set.i, align 8
  %10 = ptrtoint ptr %hx711_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hx711_data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end:                                           ; preds = %hx711_reset.exit.thread22, %for.body.i.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan)
  %cmp.i = icmp eq i32 %chan, 0
  %gain_set.i10 = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 4
  %12 = ptrtoint ptr %gain_set.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gain_set.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp1.i = icmp eq i32 %13, 32
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.end
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i11.if.end3_crit_edge

if.then.i11.if.end3_crit_edge:                    ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2.i:                                       ; preds = %if.then.i11
  %gain_chan_a.i = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 5
  %14 = ptrtoint ptr %gain_chan_a.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gain_chan_a.i, align 4
  %16 = ptrtoint ptr %gain_set.i10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gain_set.i10, align 8
  %call.i = tail call fastcc i32 @hx711_read(ptr noundef %hx711_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.then2.i.cleanup_crit_edge, label %if.then2.i.for.body.i.i16_crit_edge

if.then2.i.for.body.i.i16_crit_edge:              ; preds = %if.then2.i
  br label %for.body.i.i16

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i16:                                   ; preds = %if.end.i.i19.for.body.i.i16_crit_edge, %if.then2.i.for.body.i.i16_crit_edge
  %i.07.i.i13 = phi i32 [ %inc.i.i17, %if.end.i.i19.for.body.i.i16_crit_edge ], [ 0, %if.then2.i.for.body.i.i16_crit_edge ]
  %17 = ptrtoint ptr %gpiod_dout.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpiod_dout.i.i, align 8
  %call.i.i14 = tail call i32 @gpiod_get_value(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i.i15, label %for.body.i.i16.if.end3_crit_edge, label %if.end.i.i19

for.body.i.i16.if.end3_crit_edge:                 ; preds = %for.body.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i.i19:                                     ; preds = %for.body.i.i16
  tail call void @msleep(i32 noundef 10) #7
  %inc.i.i17 = add nuw nsw i32 %i.07.i.i13, 1
  %exitcond.not.i.i18 = icmp eq i32 %inc.i.i17, 100
  br i1 %exitcond.not.i.i18, label %if.end.i.i19.cleanup_crit_edge, label %if.end.i.i19.for.body.i.i16_crit_edge

if.end.i.i19.for.body.i.i16_crit_edge:            ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i16

if.end.i.i19.cleanup_crit_edge:                   ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  br i1 %cmp1.i, label %if.else.i.if.end3_crit_edge, label %if.then12.i

if.else.i.if.end3_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then12.i:                                      ; preds = %if.else.i
  %19 = ptrtoint ptr %gain_set.i10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %gain_set.i10, align 8
  %call14.i = tail call fastcc i32 @hx711_read(ptr noundef %hx711_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.for.body.i43.i_crit_edge

if.then12.i.for.body.i43.i_crit_edge:             ; preds = %if.then12.i
  br label %for.body.i43.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i43.i:                                   ; preds = %if.end.i46.i.for.body.i43.i_crit_edge, %if.then12.i.for.body.i43.i_crit_edge
  %i.07.i40.i = phi i32 [ %inc.i44.i, %if.end.i46.i.for.body.i43.i_crit_edge ], [ 0, %if.then12.i.for.body.i43.i_crit_edge ]
  %20 = ptrtoint ptr %gpiod_dout.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpiod_dout.i.i, align 8
  %call.i41.i = tail call i32 @gpiod_get_value(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not.i42.i, label %for.body.i43.i.if.end3_crit_edge, label %if.end.i46.i

for.body.i43.i.if.end3_crit_edge:                 ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i46.i:                                     ; preds = %for.body.i43.i
  tail call void @msleep(i32 noundef 10) #7
  %inc.i44.i = add nuw nsw i32 %i.07.i40.i, 1
  %exitcond.not.i45.i = icmp eq i32 %inc.i44.i, 100
  br i1 %exitcond.not.i45.i, label %if.end.i46.i.cleanup_crit_edge, label %if.end.i46.i.for.body.i43.i_crit_edge

if.end.i46.i.for.body.i43.i_crit_edge:            ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i43.i

if.end.i46.i.cleanup_crit_edge:                   ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %for.body.i43.i.if.end3_crit_edge, %if.else.i.if.end3_crit_edge, %for.body.i.i16.if.end3_crit_edge, %if.then.i11.if.end3_crit_edge
  %call4 = tail call fastcc i32 @hx711_read(ptr noundef %hx711_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.i46.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %if.end.i.i19.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call4, %if.end3 ], [ %call14.i, %if.then12.i.cleanup_crit_edge ], [ %call.i, %if.then2.i.cleanup_crit_edge ], [ -5, %if.end.i.i19.cleanup_crit_edge ], [ -5, %if.end.i46.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hx711_read(ptr nocapture noundef readonly %hx711_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_dout = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 2
  %0 = ptrtoint ptr %gpiod_dout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_dout, align 8
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call1 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not.not = icmp eq i32 %call1, 0
  %shl.1 = select i1 %tobool2.not.not, i32 0, i32 2
  %call1.1 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp ne i32 %call1.1, 0
  %inc.1 = zext i1 %tobool2.not.1 to i32
  %spec.select.1 = or i32 %shl.1, %inc.1
  %call1.2 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2.not = icmp eq i32 %call1.2, 0
  %2 = shl nuw nsw i32 %spec.select.1, 2
  %3 = select i1 %tobool2.not.2.not, i32 0, i32 2
  %shl.3 = or i32 %2, %3
  %call1.3 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp ne i32 %call1.3, 0
  %inc.3 = zext i1 %tobool2.not.3 to i32
  %spec.select.3 = or i32 %shl.3, %inc.3
  %call1.4 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool2.not.4.not = icmp eq i32 %call1.4, 0
  %4 = shl nuw nsw i32 %spec.select.3, 2
  %5 = select i1 %tobool2.not.4.not, i32 0, i32 2
  %shl.5 = or i32 %4, %5
  %call1.5 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %tobool2.not.5 = icmp ne i32 %call1.5, 0
  %inc.5 = zext i1 %tobool2.not.5 to i32
  %spec.select.5 = or i32 %shl.5, %inc.5
  %call1.6 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %tobool2.not.6.not = icmp eq i32 %call1.6, 0
  %6 = shl i32 %spec.select.5, 2
  %7 = select i1 %tobool2.not.6.not, i32 0, i32 2
  %shl.7 = or i32 %6, %7
  %call1.7 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %tobool2.not.7 = icmp ne i32 %call1.7, 0
  %inc.7 = zext i1 %tobool2.not.7 to i32
  %spec.select.7 = or i32 %shl.7, %inc.7
  %call1.8 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8)
  %tobool2.not.8.not = icmp eq i32 %call1.8, 0
  %8 = shl i32 %spec.select.7, 2
  %9 = select i1 %tobool2.not.8.not, i32 0, i32 2
  %shl.9 = or i32 %8, %9
  %call1.9 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.9)
  %tobool2.not.9 = icmp ne i32 %call1.9, 0
  %inc.9 = zext i1 %tobool2.not.9 to i32
  %spec.select.9 = or i32 %shl.9, %inc.9
  %call1.10 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.10)
  %tobool2.not.10.not = icmp eq i32 %call1.10, 0
  %10 = shl i32 %spec.select.9, 2
  %11 = select i1 %tobool2.not.10.not, i32 0, i32 2
  %shl.11 = or i32 %10, %11
  %call1.11 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.11)
  %tobool2.not.11 = icmp ne i32 %call1.11, 0
  %inc.11 = zext i1 %tobool2.not.11 to i32
  %spec.select.11 = or i32 %shl.11, %inc.11
  %call1.12 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.12)
  %tobool2.not.12.not = icmp eq i32 %call1.12, 0
  %12 = shl i32 %spec.select.11, 2
  %13 = select i1 %tobool2.not.12.not, i32 0, i32 2
  %shl.13 = or i32 %12, %13
  %call1.13 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.13)
  %tobool2.not.13 = icmp ne i32 %call1.13, 0
  %inc.13 = zext i1 %tobool2.not.13 to i32
  %spec.select.13 = or i32 %shl.13, %inc.13
  %call1.14 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.14)
  %tobool2.not.14.not = icmp eq i32 %call1.14, 0
  %14 = shl i32 %spec.select.13, 2
  %15 = select i1 %tobool2.not.14.not, i32 0, i32 2
  %shl.15 = or i32 %14, %15
  %call1.15 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.15)
  %tobool2.not.15 = icmp ne i32 %call1.15, 0
  %inc.15 = zext i1 %tobool2.not.15 to i32
  %spec.select.15 = or i32 %shl.15, %inc.15
  %call1.16 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.16)
  %tobool2.not.16.not = icmp eq i32 %call1.16, 0
  %16 = shl i32 %spec.select.15, 2
  %17 = select i1 %tobool2.not.16.not, i32 0, i32 2
  %shl.17 = or i32 %16, %17
  %call1.17 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.17)
  %tobool2.not.17 = icmp ne i32 %call1.17, 0
  %inc.17 = zext i1 %tobool2.not.17 to i32
  %spec.select.17 = or i32 %shl.17, %inc.17
  %call1.18 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.18)
  %tobool2.not.18.not = icmp eq i32 %call1.18, 0
  %18 = shl i32 %spec.select.17, 2
  %19 = select i1 %tobool2.not.18.not, i32 0, i32 2
  %shl.19 = or i32 %18, %19
  %call1.19 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.19)
  %tobool2.not.19 = icmp ne i32 %call1.19, 0
  %inc.19 = zext i1 %tobool2.not.19 to i32
  %spec.select.19 = or i32 %shl.19, %inc.19
  %call1.20 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.20)
  %tobool2.not.20.not = icmp eq i32 %call1.20, 0
  %20 = shl i32 %spec.select.19, 2
  %21 = select i1 %tobool2.not.20.not, i32 0, i32 2
  %shl.21 = or i32 %20, %21
  %call1.21 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.21)
  %tobool2.not.21 = icmp ne i32 %call1.21, 0
  %inc.21 = zext i1 %tobool2.not.21 to i32
  %spec.select.21 = or i32 %shl.21, %inc.21
  %call1.22 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.22)
  %tobool2.not.22.not = icmp eq i32 %call1.22, 0
  %22 = shl i32 %spec.select.21, 2
  %23 = select i1 %tobool2.not.22.not, i32 0, i32 2
  %shl.23 = or i32 %22, %23
  %call1.23 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.23)
  %tobool2.not.23 = icmp ne i32 %call1.23, 0
  %inc.23 = zext i1 %tobool2.not.23 to i32
  %spec.select.23 = or i32 %shl.23, %inc.23
  %gain_set = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.body9, %for.body.preheader
  %i.1 = phi i32 [ 0, %for.body.preheader ], [ %inc12, %for.body9 ]
  %24 = ptrtoint ptr %gain_set to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gain_set, align 8
  %26 = load i32, ptr @hx711_gain_to_scale, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %25)
  %cmp2.i = icmp eq i32 %26, %25
  br i1 %cmp2.i, label %for.cond6.if.then.i_crit_edge, label %for.inc.i

for.cond6.if.then.i_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %for.cond6.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %for.cond6.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ]
  %gain_pulse.i = getelementptr [3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 %i.08.lcssa.i, i32 1
  %27 = ptrtoint ptr %gain_pulse.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gain_pulse.i, align 4
  br label %hx711_get_gain_to_pulse.exit

for.inc.i:                                        ; preds = %for.cond6
  %29 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %25)
  %cmp2.1.i = icmp eq i32 %29, %25
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %30 = load i32, ptr getelementptr inbounds ([3 x %struct.hx711_gain_to_scale], ptr @hx711_gain_to_scale, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %25)
  %cmp2.2.i = icmp eq i32 %30, %25
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.1.i.hx711_get_gain_to_pulse.exit_crit_edge

for.inc.1.i.hx711_get_gain_to_pulse.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hx711_get_gain_to_pulse.exit

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

hx711_get_gain_to_pulse.exit:                     ; preds = %for.inc.1.i.hx711_get_gain_to_pulse.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %28, %if.then.i ], [ 1, %for.inc.1.i.hx711_get_gain_to_pulse.exit_crit_edge ]
  %cmp8 = icmp slt i32 %i.1, %retval.0.i
  br i1 %cmp8, label %for.body9, label %cleanup.loopexit

for.body9:                                        ; preds = %hx711_get_gain_to_pulse.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call fastcc i32 @hx711_cycle(ptr noundef %hx711_data)
  %inc12 = add nuw nsw i32 %i.1, 1
  br label %for.cond6

cleanup.loopexit:                                 ; preds = %hx711_get_gain_to_pulse.exit
  call void @__sanitizer_cov_trace_pc() #9
  %xor = xor i32 %spec.select.23, 8388608
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %xor, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hx711_cycle(ptr nocapture noundef readonly %hx711_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !95
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %gpiod_pd_sck = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 1
  %1 = ptrtoint ptr %gpiod_pd_sck to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpiod_pd_sck, align 4
  tail call void @gpiod_set_value(ptr noundef %2, i32 noundef 1) #7
  %data_ready_delay_ns = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 9
  %3 = ptrtoint ptr %data_ready_delay_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_ready_delay_ns, align 8
  %sub.i = add i32 %4, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %div.i) #7
  %6 = ptrtoint ptr %gpiod_pd_sck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_pd_sck, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #7
  br i1 %tobool.not, label %if.then22, label %do.end11.do.body24_crit_edge

do.end11.do.body24_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

if.then22:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %do.end11.do.body24_crit_edge
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !96
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !97

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !98
  %9 = ptrtoint ptr %data_ready_delay_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_ready_delay_ns, align 8
  %sub.i53 = add i32 %10, 999
  %div.i54 = udiv i32 %sub.i53, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %div.i54) #7
  %gpiod_dout = getelementptr inbounds %struct.hx711_data, ptr %hx711_data, i32 0, i32 2
  %12 = ptrtoint ptr %gpiod_dout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_dout, align 8
  %call45 = tail call i32 @gpiod_get_value(ptr noundef %13) #7
  ret i32 %call45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !76, !78, !79, !80, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_hx711__288_616_hx711_driver_init6, !1, !"__initcall__kmod_hx711__288_616_hx711_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/hx711.c", i32 616, i32 1}
!2 = !{ptr @__exitcall_hx711_driver_exit, !1, !"__exitcall_hx711_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/hx711.c", i32 618, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/hx711.c", i32 619, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/hx711.c", i32 620, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/hx711.c", i32 621, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/hx711.c", i32 611, i32 12}
!14 = !{ptr @hx711_driver, !15, !"hx711_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/hx711.c", i32 607, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/hx711.c", i32 470, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hx711_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hx711_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @hx711_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/hx711.c", i32 477, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/hx711.c", i32 483, i32 49}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/hx711.c", i32 485, i32 3}
!31 = !{ptr @hx711_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hx711_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/hx711.c", i32 494, i32 47}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/hx711.c", i32 496, i32 3}
!37 = !{ptr @hx711_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @hx711_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/hx711.c", i32 501, i32 49}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/hx711.c", i32 536, i32 33}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/hx711.c", i32 544, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hx711_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hx711_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/hx711.c", i32 553, i32 20}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/hx711.c", i32 562, i32 3}
!52 = !{ptr @hx711_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hx711_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/hx711.c", i32 568, i32 3}
!56 = !{ptr @hx711_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hx711_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @hx711_gain_to_scale, !59, !"hx711_gain_to_scale", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/hx711.c", i32 43, i32 35}
!60 = !{ptr @hx711_iio_info, !61, !"hx711_iio_info", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/hx711.c", i32 420, i32 30}
!62 = !{ptr @hx711_attribute_group, !63, !"hx711_attribute_group", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/hx711.c", i32 416, i32 37}
!64 = !{ptr @hx711_attributes, !65, !"hx711_attributes", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/hx711.c", i32 410, i32 26}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/hx711.c", i32 404, i32 8}
!68 = !{ptr @iio_dev_attr_in_voltage0_scale_available, !67, !"iio_dev_attr_in_voltage0_scale_available", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/hx711.c", i32 396, i32 30}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/hx711.c", i32 399, i32 28}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/hx711.c", i32 407, i32 8}
!75 = !{ptr @iio_dev_attr_in_voltage1_scale_available, !74, !"iio_dev_attr_in_voltage1_scale_available", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/hx711.c", i32 257, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hx711_reset_read._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @hx711_reset_read._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @hx711_chan_spec, !82, !"hx711_chan_spec", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/hx711.c", i32 427, i32 35}
!83 = !{ptr @of_hx711_match, !84, !"of_hx711_match", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/hx711.c", i32 600, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
!95 = !{i64 614448, i64 614509}
!96 = !{i64 617180}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 617465}
