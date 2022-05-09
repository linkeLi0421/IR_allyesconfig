; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/nau7802.c_pt.bc'
source_filename = "../drivers/iio/adc/nau7802.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
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
%struct.nau7802_state = type { ptr, i32, %struct.mutex, %struct.mutex, i32, i32, i32, i8, [8 x i32], %struct.completion }

@__initcall__kmod_nau7802__288_561_nau7802_driver_init6 = internal global ptr @nau7802_driver_init, section ".initcall6.init", align 4
@nau7802_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nau7802_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nau7802_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nau7802_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nau7802_driver_exit = internal global ptr @nau7802_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [37 x i8] c"nau7802.file=drivers/iio/adc/nau7802\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [20 x i8] c"nau7802.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [47 x i8] c"nau7802.description=Nuvoton NAU7802 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [64 x i8] c"nau7802.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [72 x i8] c"nau7802.author=Alexandre Belloni <alexandre.belloni@free-electrons.com>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nau7802\00", [24 x i8] zeroinitializer }, align 32
@nau7802_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau7802\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nau7802_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nau7802\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nau7802_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No device tree node available.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nau7802_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/adc/nau7802.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nau7802_probe._entry_ptr = internal global ptr @nau7802_probe._entry, section ".printk_index", align 4
@nau7802_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @nau7802_attribute_group, ptr @nau7802_read_raw, ptr null, ptr null, ptr @nau7802_write_raw, ptr null, ptr @nau7802_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nuvoton,vldo\00", [19 x i8] zeroinitializer }, align 32
@nau7802_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 513, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate IRQ, using polling mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nau7802_probe._entry_ptr.10 = internal global ptr @nau7802_probe._entry.7, section ".printk_index", align 4
@nau7802_chan_array = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@nau7802_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@nau7802_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&st->data_lock\00", [17 x i8] zeroinitializer }, align 32
@nau7802_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nau7802_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@nau7802_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr @iio_dev_attr_in_voltage_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.14, %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nau7802_show_scales, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"10 40 80 320\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_voltage_scale_available\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%09d \00", [24 x i8] zeroinitializer }, align 32
@nau7802_sample_freq_avail = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 10, i16 20, i16 40, i16 80, i16 10, i16 10, i16 10, i16 320], [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 20, i64 40, i64 80, i64 320]
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"nau7802_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 552, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 556, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"nau7802_dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 546, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"nau7802_i2c_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 540, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 421, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"nau7802_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 403, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 460, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 512, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"nau7802_chan_array\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 73, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 534, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 535, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"nau7802_attribute_group\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 107, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"nau7802_attributes\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 101, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_voltage_scale_available\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 96, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 98, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 88, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"nau7802_sample_freq_avail\00", align 1
@___asan_gen_.106 = private constant [29 x i8] c"../drivers/iio/adc/nau7802.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 78, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_nau7802_driver_exit, ptr @__initcall__kmod_nau7802__288_561_nau7802_driver_init6, ptr @nau7802_driver_exit, ptr @nau7802_probe._entry, ptr @nau7802_probe._entry.7, ptr @nau7802_probe._entry_ptr, ptr @nau7802_probe._entry_ptr.10, ptr @nau7802_driver, ptr @.str, ptr @nau7802_dt_ids, ptr @nau7802_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nau7802_info, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @nau7802_chan_array, ptr @nau7802_probe.__key, ptr @.str.11, ptr @nau7802_probe.__key.12, ptr @.str.13, ptr @nau7802_attribute_group, ptr @nau7802_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_dev_attr_in_voltage_scale_available, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @nau7802_sample_freq_avail, ptr @init_completion.__key, ptr @.str.18], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_chan_array to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau7802_sample_freq_avail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nau7802_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nau7802_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nau7802_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @nau7802_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau7802_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 296) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end6.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %name, align 8
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nau7802_info, ptr %info, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %4, align 4
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %dev_name.exit.cleanup_crit_edge, label %if.end15

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %call17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 45097080) #6
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %call22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 0) #6
  %18 = and i32 %call22, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %.not = icmp eq i32 %18, 8
  br i1 %.not, label %if.end28, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #6
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp, align 4
  %vref_mv = getelementptr inbounds %struct.nau7802_state, ptr %4, i32 0, i32 4
  %21 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vref_mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2399, i32 %20)
  %cmp30 = icmp ugt i32 %20, 2399
  %spec.select = select i1 %cmp30, i8 -106, i8 22
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %call35 = call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end28.cleanup_crit_edge, label %if.end39

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %call41 = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 21, i8 noundef zeroext 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2399, i32 %27)
  %cmp46 = icmp ugt i32 %27, 2399
  br i1 %cmp46, label %if.then48, label %if.end45.if.end56_crit_edge

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then48:                                        ; preds = %if.end45
  %sub = sub i32 4500, %27
  %div = udiv i32 %sub, 300
  %div.tr = trunc i32 %div to i8
  %conv49 = shl i8 %div.tr, 3
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 4
  %call51 = call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 1, i8 noundef zeroext %conv49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then48.cleanup_crit_edge, label %if.then48.if.end56_crit_edge

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.then48.if.end56_crit_edge, %if.end45.if.end56_crit_edge
  %30 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vref_mv, align 4
  %conv60 = zext i32 %31 to i64
  %mul = mul nuw nsw i64 %conv60, 1000000000
  %shr = lshr i64 %mul, 23
  %conv61 = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 0
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv61, ptr %arrayidx, align 4
  %shr.1 = lshr i64 %mul, 24
  %conv61.1 = trunc i64 %shr.1 to i32
  %arrayidx.1 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv61.1, ptr %arrayidx.1, align 4
  %shr.2 = lshr i64 %mul, 25
  %conv61.2 = trunc i64 %shr.2 to i32
  %arrayidx.2 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv61.2, ptr %arrayidx.2, align 4
  %shr.3 = lshr i64 %mul, 26
  %conv61.3 = trunc i64 %shr.3 to i32
  %arrayidx.3 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv61.3, ptr %arrayidx.3, align 4
  %shr.4 = lshr i64 %mul, 27
  %conv61.4 = trunc i64 %shr.4 to i32
  %arrayidx.4 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv61.4, ptr %arrayidx.4, align 4
  %shr.5 = lshr i64 %mul, 28
  %conv61.5 = trunc i64 %shr.5 to i32
  %arrayidx.5 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 5
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv61.5, ptr %arrayidx.5, align 4
  %shr.6 = lshr i64 %mul, 29
  %conv61.6 = trunc i64 %shr.6 to i32
  %arrayidx.6 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv61.6, ptr %arrayidx.6, align 4
  %shr.7 = lshr i64 %mul, 30
  %conv61.7 = trunc i64 %shr.7 to i32
  %arrayidx.7 = getelementptr %struct.nau7802_state, ptr %4, i32 0, i32 8, i32 7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv61.7, ptr %arrayidx.7, align 4
  %value_ok = getelementptr inbounds %struct.nau7802_state, ptr %4, i32 0, i32 9
  %40 = ptrtoint ptr %value_ok to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %value_ok, align 4
  %wait.i = getelementptr inbounds %struct.nau7802_state, ptr %4, i32 0, i32 9, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool62.not = icmp eq i32 %42, 0
  br i1 %tobool62.not, label %if.end56.if.then80_crit_edge, label %if.then63

if.end56.if.then80_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

if.then63:                                        ; preds = %if.end56
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %43 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call68 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %42, ptr noundef null, ptr noundef nonnull @nau7802_eoc_trigger, i32 noundef 532484, ptr noundef %46, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end77, label %do.end73

do.end73:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %irq, align 4
  br label %if.then80

if.end77:                                         ; preds = %if.then63
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool79.not = icmp eq i32 %.pr, 0
  br i1 %tobool79.not, label %if.end77.if.then80_crit_edge, label %if.end77.if.end90_crit_edge

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.end77.if.then80_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

if.then80:                                        ; preds = %if.end77.if.then80_crit_edge, %do.end73, %if.end56.if.then80_crit_edge
  %sample_rate = getelementptr inbounds %struct.nau7802_state, ptr %4, i32 0, i32 7
  %49 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %sample_rate, align 4
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 4
  %call86 = call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 2, i8 noundef zeroext 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then80.if.end90_crit_edge, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then80.if.end90_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.end90:                                         ; preds = %if.then80.if.end90_crit_edge, %if.end77.if.end90_crit_edge
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %52 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %53 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @nau7802_chan_array, ptr %channels, align 8
  %lock = getelementptr inbounds %struct.nau7802_state, ptr %4, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @nau7802_probe.__key) #6
  %data_lock = getelementptr inbounds %struct.nau7802_state, ptr %4, i32 0, i32 3
  call void @__mutex_init(ptr noundef %data_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @nau7802_probe.__key.12) #6
  %call98 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then80.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call98, %if.end90 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %dev_name.exit.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call35, %if.end28.cleanup_crit_edge ], [ %call41, %if.end39.cleanup_crit_edge ], [ %call51, %if.then48.cleanup_crit_edge ], [ %call86, %if.then80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau7802_eoc_trigger(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @nau7802_read_conversion(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %conversion_count = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %conversion_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conversion_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp8 = icmp ult i32 %5, 6
  br i1 %cmp8, label %if.end11, label %if.end7.if.then14_crit_edge

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end11:                                         ; preds = %if.end7
  %inc = add nuw nsw i32 %5, 1
  %6 = ptrtoint ptr %conversion_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %conversion_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp13 = icmp eq i32 %5, 5
  br i1 %cmp13, label %if.end11.if.then14_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %if.end11.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  %value_ok = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %value_ok) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %if.then14 ], [ 1, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau7802_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb28
    i32 12, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %and = and i32 %call1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %channel7 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true6.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool8.not, label %land.lhs.true.if.then9_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

land.lhs.true6.critedge:                          ; preds = %if.end
  br i1 %tobool8.not, label %land.lhs.true6.critedge.if.end20_crit_edge, label %land.lhs.true6.critedge.if.then9_crit_edge

land.lhs.true6.critedge.if.then9_crit_edge:       ; preds = %land.lhs.true6.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

land.lhs.true6.critedge.if.end20_crit_edge:       ; preds = %land.lhs.true6.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then9:                                         ; preds = %land.lhs.true6.critedge.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge
  %conversion_count = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %conversion_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %conversion_count, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %channel11 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %channel11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel11, align 4
  %shl = shl i32 %11, 7
  %sample_rate = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sample_rate, align 4
  %conv = zext i8 %13 to i32
  %shl12 = shl nuw nsw i32 %conv, 4
  %or = or i32 %shl12, %shl
  %conv13 = trunc i32 %or to i8
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 2, i8 noundef zeroext %conv13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.then9.if.end20_crit_edge

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end20:                                         ; preds = %if.then9.if.end20_crit_edge, %land.lhs.true6.critedge.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  %value_ok.i = getelementptr inbounds %struct.nau7802_state, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %value_ok.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %value_ok.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %24) #6
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then23.nau7802_sync.exit.i_crit_edge, label %if.end.i.i

if.then23.nau7802_sync.exit.i_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %nau7802_sync.exit.i

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 4
  %29 = trunc i32 %call.i.i to i8
  %conv.i.i = or i8 %29, 16
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext %conv.i.i) #6
  br label %nau7802_sync.exit.i

nau7802_sync.exit.i:                              ; preds = %if.end.i.i, %if.then23.nau7802_sync.exit.i_crit_edge
  %call2.i = tail call fastcc i32 @nau7802_read_conversion(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %nau7802_sync.exit.i.read_chan_info_failure.i_crit_edge, label %if.end.i

nau7802_sync.exit.i.read_chan_info_failure.i_crit_edge: ; preds = %nau7802_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_chan_info_failure.i

if.end.i:                                         ; preds = %nau7802_sync.exit.i
  %call5.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %value_ok.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  %spec.store.select.i = select i1 %cmp6.i, i32 -110, i32 %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp9.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp9.i, label %if.end.i.read_chan_info_failure.i_crit_edge, label %if.end11.i

if.end.i.read_chan_info_failure.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_chan_info_failure.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %19, align 4
  %irq13.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %irq13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq13.i, align 4
  tail call void @disable_irq(i32 noundef %33) #6
  %last_value.i = getelementptr inbounds %struct.nau7802_state, ptr %19, i32 0, i32 1
  %34 = ptrtoint ptr %last_value.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_value.i, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  br label %if.end26

read_chan_info_failure.i:                         ; preds = %if.end.i.read_chan_info_failure.i_crit_edge, %nau7802_sync.exit.i.read_chan_info_failure.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %nau7802_sync.exit.i.read_chan_info_failure.i_crit_edge ], [ %spec.store.select.i, %if.end.i.read_chan_info_failure.i_crit_edge ]
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %19, align 4
  %irq15.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq15.i, align 4
  tail call void @disable_irq(i32 noundef %40) #6
  br label %if.end26

if.else:                                          ; preds = %if.end20
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %19, align 4
  %call.i.i71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp.i.i72 = icmp slt i32 %call.i.i71, 0
  br i1 %cmp.i.i72, label %if.else.nau7802_sync.exit.i78_crit_edge, label %if.end.i.i75

if.else.nau7802_sync.exit.i78_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %nau7802_sync.exit.i78

if.end.i.i75:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %19, align 4
  %45 = trunc i32 %call.i.i71 to i8
  %conv.i.i73 = or i8 %45, 16
  %call2.i.i74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext %conv.i.i73) #6
  br label %nau7802_sync.exit.i78

nau7802_sync.exit.i78:                            ; preds = %if.end.i.i75, %if.else.nau7802_sync.exit.i78_crit_edge
  %call2.i76 = tail call fastcc i32 @nau7802_read_conversion(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i76)
  %cmp.i77 = icmp slt i32 %call2.i76, 0
  br i1 %cmp.i77, label %nau7802_sync.exit.i78.if.end26_crit_edge, label %do.body.preheader.i

nau7802_sync.exit.i78.if.end26_crit_edge:         ; preds = %nau7802_sync.exit.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body.preheader.i:                              ; preds = %nau7802_sync.exit.i78
  %sample_rate.i = getelementptr inbounds %struct.nau7802_state, ptr %19, i32 0, i32 7
  %conversion_count.i = getelementptr inbounds %struct.nau7802_state, ptr %19, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %46 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %19, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.body.i.if.end26_crit_edge, label %do.body.i.while.cond.i_crit_edge

do.body.i.while.cond.i_crit_edge:                 ; preds = %do.body.i
  br label %while.cond.i

do.body.i.if.end26_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %do.body.i.while.cond.i_crit_edge
  %ret.0.i79 = phi i32 [ %call15.i, %if.end13.i.while.cond.i_crit_edge ], [ %call3.i, %do.body.i.while.cond.i_crit_edge ]
  %and.i = and i32 %ret.0.i79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end20.i

while.body.i:                                     ; preds = %while.cond.i
  %48 = ptrtoint ptr %sample_rate.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sample_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %49)
  %cmp7.not.i = icmp eq i8 %49, 7
  br i1 %cmp7.not.i, label %while.body12.preheader.i, label %if.then9.i

while.body12.preheader.i:                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  br label %if.end13.i

if.then9.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %while.body12.preheader.i
  %54 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %19, align 4
  %call15.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %55, i8 noundef zeroext 0) #6
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end13.i.if.end26_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end13.i.if.end26_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

while.end20.i:                                    ; preds = %while.cond.i
  %call21.i = tail call fastcc i32 @nau7802_read_conversion(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %while.end20.i.if.end26_crit_edge, label %if.end25.i

while.end20.i.if.end26_crit_edge:                 ; preds = %while.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end25.i:                                       ; preds = %while.end20.i
  %56 = ptrtoint ptr %conversion_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %conversion_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %cmp26.i = icmp ult i32 %57, 6
  br i1 %cmp26.i, label %do.cond.i, label %if.end25.i.do.end.i_crit_edge

if.end25.i.do.end.i_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.cond.i:                                        ; preds = %if.end25.i
  %inc.i = add nuw nsw i32 %57, 1
  %58 = ptrtoint ptr %conversion_count.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %inc.i, ptr %conversion_count.i, align 4
  %cmp32.not.i = icmp eq i32 %57, 5
  br i1 %cmp32.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %if.end25.i.do.end.i_crit_edge
  %last_value.i80 = getelementptr inbounds %struct.nau7802_state, ptr %19, i32 0, i32 1
  %59 = ptrtoint ptr %last_value.i80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_value.i80, align 4
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %val, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end.i, %while.end20.i.if.end26_crit_edge, %if.end13.i.if.end26_crit_edge, %do.body.i.if.end26_crit_edge, %nau7802_sync.exit.i78.if.end26_crit_edge, %read_chan_info_failure.i, %if.end11.i
  %ret.0 = phi i32 [ %ret.0.i, %read_chan_info_failure.i ], [ 1, %if.end11.i ], [ 1, %do.end.i ], [ %call2.i76, %nau7802_sync.exit.i78.if.end26_crit_edge ], [ %call15.i, %if.end13.i.if.end26_crit_edge ], [ %call3.i, %do.body.i.if.end26_crit_edge ], [ %call21.i, %while.end20.i.if.end26_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %63, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %sw.bb28.cleanup_crit_edge, label %if.end34

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %vref_mv = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vref_mv, align 4
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %val, align 4
  %and35 = and i32 %call30, 7
  %add = add nuw nsw i32 %and35, 23
  %67 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add, ptr %val2, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sample_rate37 = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 7
  %68 = ptrtoint ptr %sample_rate37 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sample_rate37, align 4
  %idxprom = zext i8 %69 to i32
  %arrayidx = getelementptr [8 x i16], ptr @nau7802_sample_freq_avail, i32 0, i32 %idxprom
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx, align 2
  %conv38 = zext i16 %71 to i32
  %72 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv38, ptr %val, align 4
  %73 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb36, %if.end34, %sw.bb28.cleanup_crit_edge, %if.end26, %if.then17, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb36 ], [ 11, %if.end34 ], [ %call1, %if.then ], [ %ret.0, %if.end26 ], [ %call14, %if.then17 ], [ %call30, %sw.bb28.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau7802_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %for.body.preheader
    i32 12, label %for.body6.preheader
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body6.preheader:                              ; preds = %entry
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %val, label %for.body6.preheader.cleanup_crit_edge [
    i32 10, label %for.body6.preheader.if.then10_crit_edge
    i32 20, label %if.then10.fold.split
    i32 40, label %if.then10.fold.split45
    i32 80, label %if.then10.fold.split46
    i32 320, label %if.then10.fold.split47
  ]

for.body6.preheader.if.then10_crit_edge:          ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

for.body6.preheader.cleanup_crit_edge:            ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val2)
  %cmp1 = icmp eq i32 %5, %val2
  br i1 %cmp1, label %for.body.preheader.if.then_crit_edge, label %for.inc

for.body.preheader.if.then_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %for.body.preheader.if.then_crit_edge
  %i.041.lcssa = phi i32 [ 0, %for.body.preheader.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %lock.i = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %conversion_count.i = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %conversion_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %conversion_count.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cleanup.sink.split_crit_edge, label %if.end.i

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %and.i = and i32 %call.i, 248
  %or.i = or i32 %and.i, %i.041.lcssa
  %conv.i = trunc i32 %or.i to i8
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #6
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp1.1 = icmp eq i32 %12, %val2
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val2)
  %cmp1.2 = icmp eq i32 %14, %val2
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val2)
  %cmp1.3 = icmp eq i32 %16, %val2
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val2)
  %cmp1.4 = icmp eq i32 %18, %val2
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val2)
  %cmp1.5 = icmp eq i32 %20, %val2
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 6
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %val2)
  %cmp1.6 = icmp eq i32 %22, %val2
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %val2)
  %cmp1.7 = icmp eq i32 %24, %val2
  br i1 %cmp1.7, label %for.inc.6.if.then_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then10.fold.split:                             ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10.fold.split45:                           ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10.fold.split46:                           ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10.fold.split47:                           ; preds = %for.body6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %if.then10.fold.split47, %if.then10.fold.split46, %if.then10.fold.split45, %if.then10.fold.split, %for.body6.preheader.if.then10_crit_edge
  %i.140.lcssa = phi i8 [ 0, %for.body6.preheader.if.then10_crit_edge ], [ 1, %if.then10.fold.split ], [ 2, %if.then10.fold.split45 ], [ 3, %if.then10.fold.split46 ], [ 7, %if.then10.fold.split47 ]
  %lock = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %sample_rate = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %i.140.lcssa, ptr %sample_rate, align 4
  %conversion_count = getelementptr inbounds %struct.nau7802_state, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %conversion_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %conversion_count, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %conv14 = shl nuw nsw i8 %i.140.lcssa, 4
  %call15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 2, i8 noundef zeroext %conv14) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10, %if.end.i, %if.then.cleanup.sink.split_crit_edge
  %lock.sink = phi ptr [ %lock, %if.then10 ], [ %lock.i, %if.then.cleanup.sink.split_crit_edge ], [ %lock.i, %if.end.i ]
  %retval.0.ph = phi i32 [ %call15, %if.then10 ], [ %call.i, %if.then.cleanup.sink.split_crit_edge ], [ %call2.i, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.6.cleanup_crit_edge, %for.body6.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.6.cleanup_crit_edge ], [ -22, %for.body6.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nau7802_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau7802_show_scales(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %arrayidx = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.17, i32 noundef %3) #6
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call2
  %sub.1 = sub i32 4096, %call2
  %arrayidx.1 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %call2.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.17, i32 noundef %5) #6
  %add.1 = add i32 %call2.1, %call2
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %arrayidx.2 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %call2.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.17, i32 noundef %7) #6
  %add.2 = add i32 %call2.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %arrayidx.3 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  %call2.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.17, i32 noundef %9) #6
  %add.3 = add i32 %call2.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %arrayidx.4 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4, align 4
  %call2.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.17, i32 noundef %11) #6
  %add.4 = add i32 %call2.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %arrayidx.5 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5, align 4
  %call2.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.17, i32 noundef %13) #6
  %add.5 = add i32 %call2.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %arrayidx.6 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.6, align 4
  %call2.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.17, i32 noundef %15) #6
  %add.6 = add i32 %call2.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %arrayidx.7 = getelementptr %struct.nau7802_state, ptr %1, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.7, align 4
  %call2.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.17, i32 noundef %17) #6
  %add.7 = add i32 %call2.7, %add.6
  %sub3 = add i32 %add.7, -1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %sub3
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx4, align 1
  ret i32 %add.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau7802_read_conversion(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.nau7802_state, ptr %st, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #6
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.nau7802_read_conversion_out_crit_edge, label %if.end

entry.nau7802_read_conversion_out_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nau7802_read_conversion_out

if.end:                                           ; preds = %entry
  %shl = shl i32 %call, 16
  %last_value = getelementptr inbounds %struct.nau7802_state, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %last_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %last_value, align 4
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.nau7802_read_conversion_out_crit_edge, label %if.end5

if.end.nau7802_read_conversion_out_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nau7802_read_conversion_out

if.end5:                                          ; preds = %if.end
  %shl6 = shl i32 %call2, 8
  %5 = ptrtoint ptr %last_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_value, align 4
  %or = or i32 %6, %shl6
  store i32 %or, ptr %last_value, align 4
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end5.nau7802_read_conversion_out_crit_edge, label %if.end12

if.end5.nau7802_read_conversion_out_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %nau7802_read_conversion_out

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %last_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_value, align 4
  %or14 = or i32 %10, %call9
  %shl.i = shl i32 %or14, 8
  %shr.i = ashr exact i32 %shl.i, 8
  store i32 %shr.i, ptr %last_value, align 4
  br label %nau7802_read_conversion_out

nau7802_read_conversion_out:                      ; preds = %if.end12, %if.end5.nau7802_read_conversion_out_crit_edge, %if.end.nau7802_read_conversion_out_crit_edge, %entry.nau7802_read_conversion_out_crit_edge
  %data.0 = phi i32 [ %call, %entry.nau7802_read_conversion_out_crit_edge ], [ %call2, %if.end.nau7802_read_conversion_out_crit_edge ], [ %call9, %if.end5.nau7802_read_conversion_out_crit_edge ], [ %call9, %if.end12 ]
  tail call void @mutex_unlock(ptr noundef %data_lock) #6
  ret i32 %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !54, !56, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_nau7802__288_561_nau7802_driver_init6, !1, !"__initcall__kmod_nau7802__288_561_nau7802_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/nau7802.c", i32 561, i32 1}
!2 = !{ptr @__exitcall_nau7802_driver_exit, !1, !"__exitcall_nau7802_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/nau7802.c", i32 563, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/iio/adc/nau7802.c", i32 564, i32 1}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/nau7802.c", i32 565, i32 1}
!10 = !{ptr @__UNIQUE_ID_author293, !11, !"__UNIQUE_ID_author293", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/nau7802.c", i32 566, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/nau7802.c", i32 556, i32 14}
!14 = !{ptr @nau7802_driver, !15, !"nau7802_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/nau7802.c", i32 552, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/nau7802.c", i32 421, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nau7802_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @nau7802_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/nau7802.c", i32 460, i32 27}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/nau7802.c", i32 512, i32 4}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nau7802_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nau7802_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @nau7802_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/nau7802.c", i32 534, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nau7802_probe.__key.12, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/nau7802.c", i32 535, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nau7802_info, !38, !"nau7802_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/nau7802.c", i32 403, i32 30}
!39 = !{ptr @nau7802_attribute_group, !40, !"nau7802_attribute_group", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/nau7802.c", i32 107, i32 37}
!41 = !{ptr @nau7802_attributes, !42, !"nau7802_attributes", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/nau7802.c", i32 101, i32 26}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/nau7802.c", i32 96, i32 8}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @iio_const_attr_sampling_frequency_available, !44, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/nau7802.c", i32 98, i32 8}
!49 = !{ptr @iio_dev_attr_in_voltage_scale_available, !48, !"iio_dev_attr_in_voltage_scale_available", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/nau7802.c", i32 88, i32 48}
!52 = !{ptr @nau7802_sample_freq_avail, !53, !"nau7802_sample_freq_avail", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/nau7802.c", i32 78, i32 18}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nau7802_chan_array, !58, !"nau7802_chan_array", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/nau7802.c", i32 73, i32 35}
!59 = !{ptr @nau7802_dt_ids, !60, !"nau7802_dt_ids", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/nau7802.c", i32 546, i32 34}
!61 = !{ptr @nau7802_i2c_id, !62, !"nau7802_i2c_id", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/nau7802.c", i32 540, i32 35}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
