; ModuleID = '/llk/IR_all_yes/drivers/iio/light/adux1020.c_pt.bc'
source_filename = "../drivers/iio/light/adux1020.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.adux1020_data = type { ptr, ptr, %struct.mutex, ptr }

@__initcall__kmod_adux1020__304_844_adux1020_driver_init6 = internal global ptr @adux1020_driver_init, section ".initcall6.init", align 4
@adux1020_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adux1020_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adux1020_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adux1020_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adux1020_driver_exit = internal global ptr @adux1020_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [73 x i8] c"adux1020.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [49 x i8] c"adux1020.description=ADUX1020 photometric sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [41 x i8] c"adux1020.file=drivers/iio/light/adux1020\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [21 x i8] c"adux1020.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adux1020\00", [23 x i8] zeroinitializer }, align 32
@adux1020_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adux1020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adux1020_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adux1020\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adux1020_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @adux1020_attribute_group, ptr @adux1020_read_raw, ptr null, ptr null, ptr @adux1020_write_raw, ptr null, ptr null, ptr @adux1020_read_event_config, ptr @adux1020_write_event_config, ptr @adux1020_read_thresh, ptr @adux1020_write_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adux1020_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 4097, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @adux1020_proximity_event, i32 2, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.13, ptr null, i8 32 }], [48 x i8] zeroinitializer }, align 32
@adux1020_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adux1020_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.14, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 111, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"adux1020:796:(&adux1020_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@adux1020_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 798, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adux1020_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/adux1020.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adux1020_probe._entry_ptr = internal global ptr @adux1020_probe._entry, section ".printk_index", align 4
@adux1020_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adux1020_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq request error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@adux1020_probe._entry_ptr.10 = internal global ptr @adux1020_probe._entry.8, section ".printk_index", align 4
@adux1020_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adux1020_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adux1020_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.11, %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"0.1 0.2 0.5 1 2 5 10 20 50 100 190 450 820 1400\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@adux1020_led_currents = internal constant { [16 x [2 x i32]], [32 x i8] } { [16 x [2 x i32]] [[2 x i32] [i32 0, i32 25000], [2 x i32] [i32 0, i32 40000], [2 x i32] [i32 0, i32 55000], [2 x i32] [i32 0, i32 70000], [2 x i32] [i32 0, i32 85000], [2 x i32] [i32 0, i32 100000], [2 x i32] [i32 0, i32 115000], [2 x i32] [i32 0, i32 130000], [2 x i32] [i32 0, i32 145000], [2 x i32] [i32 0, i32 160000], [2 x i32] [i32 0, i32 175000], [2 x i32] [i32 0, i32 190000], [2 x i32] [i32 0, i32 205000], [2 x i32] [i32 0, i32 220000], [2 x i32] [i32 0, i32 235000], [2 x i32] [i32 0, i32 250000]], [32 x i8] zeroinitializer }, align 32
@adux1020_rates = internal constant { [14 x [2 x i32]], [48 x i8] } { [14 x [2 x i32]] [[2 x i32] [i32 0, i32 100000], [2 x i32] [i32 0, i32 200000], [2 x i32] [i32 0, i32 500000], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 5, i32 0], [2 x i32] [i32 10, i32 0], [2 x i32] [i32 20, i32 0], [2 x i32] [i32 50, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 190, i32 0], [2 x i32] [i32 450, i32 0], [2 x i32] [i32 820, i32 0], [2 x i32] [i32 1400, i32 0]], [48 x i8] zeroinitializer }, align 32
@adux1020_proximity_event = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"led\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adux1020_regmap\00", [16 x i8] zeroinitializer }, align 32
@adux1020_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid chip id 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adux1020_chip_init\00", [45 x i8] zeroinitializer }, align 32
@adux1020_chip_init._entry_ptr = internal global ptr @adux1020_chip_init._entry, section ".printk_index", align 4
@adux1020_chip_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Detected ADUX1020 with chip id: 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@adux1020_def_conf = internal constant { [54 x %struct.reg_sequence], [184 x i8] } { [54 x %struct.reg_sequence] [%struct.reg_sequence { i32 12, i32 15, i32 0 }, %struct.reg_sequence { i32 16, i32 4112, i32 0 }, %struct.reg_sequence { i32 17, i32 76, i32 0 }, %struct.reg_sequence { i32 18, i32 24332, i32 0 }, %struct.reg_sequence { i32 19, i32 44453, i32 0 }, %struct.reg_sequence { i32 20, i32 128, i32 0 }, %struct.reg_sequence { i32 21, i32 0, i32 0 }, %struct.reg_sequence { i32 22, i32 1536, i32 0 }, %struct.reg_sequence { i32 23, i32 0, i32 0 }, %struct.reg_sequence { i32 24, i32 9875, i32 0 }, %struct.reg_sequence { i32 25, i32 4, i32 0 }, %struct.reg_sequence { i32 26, i32 17024, i32 0 }, %struct.reg_sequence { i32 27, i32 96, i32 0 }, %struct.reg_sequence { i32 28, i32 8340, i32 0 }, %struct.reg_sequence { i32 29, i32 32, i32 0 }, %struct.reg_sequence { i32 30, i32 1, i32 0 }, %struct.reg_sequence { i32 31, i32 256, i32 0 }, %struct.reg_sequence { i32 32, i32 800, i32 0 }, %struct.reg_sequence { i32 33, i32 2579, i32 0 }, %struct.reg_sequence { i32 34, i32 800, i32 0 }, %struct.reg_sequence { i32 35, i32 275, i32 0 }, %struct.reg_sequence { i32 36, i32 0, i32 0 }, %struct.reg_sequence { i32 37, i32 9234, i32 0 }, %struct.reg_sequence { i32 38, i32 9234, i32 0 }, %struct.reg_sequence { i32 39, i32 34, i32 0 }, %struct.reg_sequence { i32 40, i32 0, i32 0 }, %struct.reg_sequence { i32 41, i32 768, i32 0 }, %struct.reg_sequence { i32 42, i32 1792, i32 0 }, %struct.reg_sequence { i32 43, i32 1536, i32 0 }, %struct.reg_sequence { i32 44, i32 24576, i32 0 }, %struct.reg_sequence { i32 45, i32 16384, i32 0 }, %struct.reg_sequence { i32 46, i32 0, i32 0 }, %struct.reg_sequence { i32 47, i32 0, i32 0 }, %struct.reg_sequence { i32 48, i32 0, i32 0 }, %struct.reg_sequence { i32 49, i32 0, i32 0 }, %struct.reg_sequence { i32 50, i32 64, i32 0 }, %struct.reg_sequence { i32 51, i32 8, i32 0 }, %struct.reg_sequence { i32 52, i32 58368, i32 0 }, %struct.reg_sequence { i32 56, i32 32896, i32 0 }, %struct.reg_sequence { i32 57, i32 32896, i32 0 }, %struct.reg_sequence { i32 58, i32 8192, i32 0 }, %struct.reg_sequence { i32 59, i32 7936, i32 0 }, %struct.reg_sequence { i32 60, i32 8192, i32 0 }, %struct.reg_sequence { i32 61, i32 8192, i32 0 }, %struct.reg_sequence { i32 62, i32 0, i32 0 }, %struct.reg_sequence { i32 64, i32 32873, i32 0 }, %struct.reg_sequence { i32 65, i32 7983, i32 0 }, %struct.reg_sequence { i32 66, i32 16384, i32 0 }, %struct.reg_sequence { i32 67, i32 0, i32 0 }, %struct.reg_sequence { i32 68, i32 8, i32 0 }, %struct.reg_sequence { i32 70, i32 0, i32 0 }, %struct.reg_sequence { i32 72, i32 239, i32 0 }, %struct.reg_sequence { i32 73, i32 0, i32 0 }, %struct.reg_sequence { i32 69, i32 0, i32 0 }], [184 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 5, i64 10, i64 20, i64 50, i64 100, i64 190, i64 450, i64 820, i64 1400]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 100000, i64 200000, i64 500000]
@__sancov_gen_cov_switch_values.21 = internal global [18 x i64] [i64 16, i64 32, i64 25000, i64 40000, i64 55000, i64 70000, i64 85000, i64 100000, i64 115000, i64 130000, i64 145000, i64 160000, i64 175000, i64 190000, i64 205000, i64 220000, i64 235000, i64 250000]
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"adux1020_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 836, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 838, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"adux1020_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 830, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"adux1020_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 824, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"adux1020_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 690, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"adux1020_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 662, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"adux1020_regmap_config\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 116, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 796, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 798, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 804, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 816, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"adux1020_attribute_group\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 686, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"adux1020_attributes\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 681, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 678, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"adux1020_led_currents\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 198, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"adux1020_rates\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 181, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"adux1020_proximity_event\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 647, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 673, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 117, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 745, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 749, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"adux1020_def_conf\00", align 1
@___asan_gen_.122 = private constant [32 x i8] c"../drivers/iio/light/adux1020.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 124, i32 34 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_adux1020_driver_exit, ptr @__initcall__kmod_adux1020__304_844_adux1020_driver_init6, ptr @adux1020_chip_init._entry, ptr @adux1020_chip_init._entry_ptr, ptr @adux1020_driver_exit, ptr @adux1020_probe._entry, ptr @adux1020_probe._entry.8, ptr @adux1020_probe._entry_ptr, ptr @adux1020_probe._entry_ptr.10, ptr @adux1020_driver, ptr @.str, ptr @adux1020_of_match, ptr @adux1020_id, ptr @adux1020_info, ptr @adux1020_channels, ptr @adux1020_probe._key, ptr @adux1020_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adux1020_probe.__key, ptr @.str.7, ptr @.str.9, ptr @adux1020_attribute_group, ptr @adux1020_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.11, ptr @.str.12, ptr @adux1020_led_currents, ptr @adux1020_rates, ptr @adux1020_proximity_event, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @adux1020_def_conf], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_led_currents to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_rates to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_proximity_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adux1020_def_conf to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adux1020_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adux1020_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adux1020_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @adux1020_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @adux1020_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %num_channels, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @adux1020_regmap_config, ptr noundef nonnull @adux1020_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %6, align 4
  %indio_dev11 = getelementptr inbounds %struct.adux1020_data, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %indio_dev11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %indio_dev11, align 4
  %lock = getelementptr inbounds %struct.adux1020_data, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @adux1020_probe.__key) #6
  %call15 = tail call fastcc i32 @adux1020_chip_init(ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %if.end18.if.end31_crit_edge, label %if.then20

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then20:                                        ; preds = %if.end18
  %call23 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef null, ptr noundef nonnull @adux1020_interrupt_handler, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then20.if.end31_crit_edge, label %do.end28

if.then20.if.end31_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %call23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %sub) #9
  br label %cleanup

if.end31:                                         ; preds = %if.then20.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %call33 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end28, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %call23, %do.end28 ], [ %call33, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adux1020_chip_init(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !81
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %and)
  %cmp2.not = icmp eq i32 %and, 1020
  br i1 %cmp2.not, label %do.body5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %6) #9
  br label %cleanup

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adux1020_chip_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adux1020_chip_init, %if.then9)) #6
          to label %do.end13 [label %if.then9], !srcloc !82

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adux1020_chip_init.__UNIQUE_ID_ddebug303, ptr noundef %dev10, ptr noundef nonnull @.str.17, i32 noundef %8) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 15, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %do.end13.cleanup_crit_edge, label %if.end18

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %do.end13
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_multi_reg_write(ptr noundef %12, ptr noundef nonnull @adux1020_def_conf, i32 noundef 54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i53 = call i32 @regmap_write(ptr noundef %14, i32 noundef 51, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i = icmp slt i32 %call.i53, 0
  br i1 %cmp.i, label %if.end23.cleanup_crit_edge, label %if.end.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 69, i32 noundef 15, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i37.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 69, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp8.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp8.i, label %if.end5.i.cleanup_crit_edge, label %if.end10.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 50, i32 noundef 3919) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.cleanup_crit_edge, label %if.end15.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.end10.i
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %22, i32 noundef 73, i32 noundef 32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.cleanup_crit_edge, label %adux1020_flush_fifo.exit

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

adux1020_flush_fifo.exit:                         ; preds = %if.end15.i
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call22.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 50, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp25 = icmp slt i32 %call22.i, 0
  br i1 %cmp25, label %adux1020_flush_fifo.exit.cleanup_crit_edge, label %if.end27

adux1020_flush_fifo.exit.cleanup_crit_edge:       ; preds = %adux1020_flush_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %adux1020_flush_fifo.exit
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i55 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 65, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp30 = icmp slt i32 %call.i55, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i56 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 72, i32 noundef 255, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end27.cleanup_crit_edge, %adux1020_flush_fifo.exit.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end13.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call.i56, %if.end32 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %do.end13.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ %call22.i, %adux1020_flush_fifo.exit.cleanup_crit_edge ], [ %call.i55, %if.end27.cleanup_crit_edge ], [ %call17.i, %if.end15.i.cleanup_crit_edge ], [ %call12.i, %if.end10.i.cleanup_crit_edge ], [ %call.i37.i, %if.end5.i.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i53, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_interrupt_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !81
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 73, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 255
  store i32 %and, ptr %status, align 4
  %and2 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call5 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 281509336449024, i64 noundef %call4) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and7 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call11 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 562984313159680, i64 noundef %call10) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 73, i32 noundef 255, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %regval.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !81
  %lock = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.fail_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 12, label %sw.bb21
  ]

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cond53 = icmp eq i32 %5, 8
  br i1 %cond53, label %sw.bb1, label %sw.bb.fail_crit_edge

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb1:                                           ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 69, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb1.fail_crit_edge, label %sw.bb.i

sw.bb1.fail_crit_edge:                            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb.i:                                          ; preds = %sw.bb1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 69, i32 noundef 240, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %sw.bb.i.fail_crit_edge, label %adux1020_set_mode.exit

sw.bb.i.fail_crit_edge:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

adux1020_set_mode.exit:                           ; preds = %sw.bb.i
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 69, i32 noundef 15, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = tail call i32 @llvm.smin.i32(i32 %call.i1.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp = icmp slt i32 %call.i1.i, 0
  br i1 %cmp, label %adux1020_set_mode.exit.fail_crit_edge, label %if.end

adux1020_set_mode.exit.fail_crit_edge:            ; preds = %adux1020_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %adux1020_set_mode.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #6
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %status.i, align 4, !annotation !81
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i69 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 28, i32 noundef 8336) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %if.end.adux1020_measure.exit.thread_crit_edge, label %if.end.i

if.end.adux1020_measure.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 72, i32 noundef 255, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp3.i = icmp slt i32 %call.i.i71, 0
  br i1 %cmp3.i, label %if.end.i.adux1020_measure.exit.thread_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.adux1020_measure.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

while.body.i:                                     ; preds = %if.end18.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %dec7.i = phi i32 [ %dec.i, %if.end18.i.while.body.i_crit_edge ], [ 49, %if.end.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 73, ptr noundef nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %while.body.i.adux1020_measure.exit.thread_crit_edge, label %if.end12.i

while.body.i.adux1020_measure.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

if.end12.i:                                       ; preds = %while.body.i
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %and.i = and i32 %21, 65280
  store i32 %and.i, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp15.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp15.not.i, label %if.end18.i, label %while.end.i

if.end18.i:                                       ; preds = %if.end12.i
  call void @msleep(i32 noundef 20) #6
  %dec.i = add nsw i32 %dec7.i, -1
  %tobool.not.i = icmp eq i32 %dec7.i, 0
  br i1 %tobool.not.i, label %if.end18.i.adux1020_measure.exit.thread_crit_edge, label %if.end18.i.while.body.i_crit_edge

if.end18.i.while.body.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end18.i.adux1020_measure.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

while.end.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec7.i)
  %cmp19.i = icmp slt i32 %dec7.i, 0
  br i1 %cmp19.i, label %while.end.i.adux1020_measure.exit.thread_crit_edge, label %if.end22.i

while.end.i.adux1020_measure.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

if.end22.i:                                       ; preds = %while.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #6
  %22 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !81
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i1.i72 = call i32 @regmap_write(ptr noundef %24, i32 noundef 50, i32 noundef 3919) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i72)
  %cmp.i.i = icmp slt i32 %call.i1.i72, 0
  br i1 %cmp.i.i, label %if.end22.i.adux1020_read_fifo.exit.thread.i_crit_edge, label %for.body.i.i

if.end22.i.adux1020_read_fifo.exit.thread.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_read_fifo.exit.thread.i

for.body.i.i:                                     ; preds = %if.end22.i
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call4.i.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 96, ptr noundef nonnull %regval.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %for.body.i.i.adux1020_read_fifo.exit.thread.i_crit_edge, label %adux1020_read_fifo.exit.i

for.body.i.i.adux1020_read_fifo.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_read_fifo.exit.thread.i

adux1020_read_fifo.exit.thread.i:                 ; preds = %for.body.i.i.adux1020_read_fifo.exit.thread.i_crit_edge, %if.end22.i.adux1020_read_fifo.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call4.i.i, %for.body.i.i.adux1020_read_fifo.exit.thread.i_crit_edge ], [ %call.i1.i72, %if.end22.i.adux1020_read_fifo.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #6
  br label %adux1020_measure.exit.thread

adux1020_read_fifo.exit.i:                        ; preds = %for.body.i.i
  %27 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i.i, align 4
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call11.i.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 50, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp25.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp25.i, label %adux1020_read_fifo.exit.i.adux1020_measure.exit.thread_crit_edge, label %if.end28.i

adux1020_read_fifo.exit.i.adux1020_measure.exit.thread_crit_edge: ; preds = %adux1020_read_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

if.end28.i:                                       ; preds = %adux1020_read_fifo.exit.i
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call33.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 73, i32 noundef -241) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end28.i.adux1020_measure.exit.thread_crit_edge, label %adux1020_measure.exit

if.end28.i.adux1020_measure.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adux1020_measure.exit.thread

adux1020_measure.exit.thread:                     ; preds = %if.end28.i.adux1020_measure.exit.thread_crit_edge, %adux1020_read_fifo.exit.i.adux1020_measure.exit.thread_crit_edge, %adux1020_read_fifo.exit.thread.i, %while.end.i.adux1020_measure.exit.thread_crit_edge, %if.end18.i.adux1020_measure.exit.thread_crit_edge, %while.body.i.adux1020_measure.exit.thread_crit_edge, %if.end.i.adux1020_measure.exit.thread_crit_edge, %if.end.adux1020_measure.exit.thread_crit_edge
  %retval.0.i73.ph = phi i32 [ %retval.0.i.ph.i, %adux1020_read_fifo.exit.thread.i ], [ %call33.i, %if.end28.i.adux1020_measure.exit.thread_crit_edge ], [ %call11.i.i, %adux1020_read_fifo.exit.i.adux1020_measure.exit.thread_crit_edge ], [ -5, %while.end.i.adux1020_measure.exit.thread_crit_edge ], [ %call.i.i71, %if.end.i.adux1020_measure.exit.thread_crit_edge ], [ %call.i69, %if.end.adux1020_measure.exit.thread_crit_edge ], [ -5, %if.end18.i.adux1020_measure.exit.thread_crit_edge ], [ %call8.i, %while.body.i.adux1020_measure.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #6
  br label %fail

adux1020_measure.exit:                            ; preds = %if.end28.i
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i2.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 72, i32 noundef 255, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp4 = icmp slt i32 %call.i2.i, 0
  br i1 %cmp4, label %adux1020_measure.exit.fail_crit_edge, label %if.end6

adux1020_measure.exit.fail_crit_edge:             ; preds = %adux1020_measure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end6:                                          ; preds = %adux1020_measure.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %28, 65535
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %val, align 4
  br label %fail

sw.bb7:                                           ; preds = %entry
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cond52 = icmp eq i32 %37, 1
  br i1 %cond52, label %sw.bb9, label %sw.bb7.fail_crit_edge

sw.bb7.fail_crit_edge:                            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb9:                                           ; preds = %sw.bb7
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %39, i32 noundef 65, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %sw.bb9.fail_crit_edge, label %if.end14

sw.bb9.fail_crit_edge:                            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end14:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regval, align 4
  %and = and i32 %41, 15
  store i32 %and, ptr %regval, align 4
  %arrayidx15 = getelementptr [16 x [2 x i32]], ptr @adux1020_led_currents, i32 0, i32 %and
  %42 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx15, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  %arrayidx18 = getelementptr [16 x [2 x i32]], ptr @adux1020_led_currents, i32 0, i32 %and, i32 1
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx18, align 4
  %47 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val2, align 4
  br label %fail

sw.bb21:                                          ; preds = %entry
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %cond = icmp eq i32 %49, 8
  br i1 %cond, label %sw.bb23, label %sw.bb21.fail_crit_edge

sw.bb21.fail_crit_edge:                           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb23:                                          ; preds = %sw.bb21
  %regmap24 = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap24, align 4
  %call25 = call i32 @regmap_read(ptr noundef %51, i32 noundef 64, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %sw.bb23.fail_crit_edge, label %do.end41

sw.bb23.fail_crit_edge:                           ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.end41:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %regval, align 4
  %and42 = lshr i32 %53, 4
  %shr = and i32 %and42, 15
  store i32 %shr, ptr %regval, align 4
  %arrayidx43 = getelementptr [14 x [2 x i32]], ptr @adux1020_rates, i32 0, i32 %shr
  %54 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx43, align 4
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val, align 4
  %arrayidx46 = getelementptr [14 x [2 x i32]], ptr @adux1020_rates, i32 0, i32 %shr, i32 1
  %57 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx46, align 4
  %59 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %val2, align 4
  br label %fail

fail:                                             ; preds = %do.end41, %sw.bb23.fail_crit_edge, %sw.bb21.fail_crit_edge, %if.end14, %sw.bb9.fail_crit_edge, %sw.bb7.fail_crit_edge, %if.end6, %adux1020_measure.exit.fail_crit_edge, %adux1020_measure.exit.thread, %adux1020_set_mode.exit.fail_crit_edge, %sw.bb.i.fail_crit_edge, %sw.bb1.fail_crit_edge, %sw.bb.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -22, %entry.fail_crit_edge ], [ %call25, %sw.bb23.fail_crit_edge ], [ 2, %do.end41 ], [ -22, %sw.bb21.fail_crit_edge ], [ %call10, %sw.bb9.fail_crit_edge ], [ 2, %if.end14 ], [ -22, %sw.bb7.fail_crit_edge ], [ %12, %adux1020_set_mode.exit.fail_crit_edge ], [ %call.i2.i, %adux1020_measure.exit.fail_crit_edge ], [ 1, %if.end6 ], [ -22, %sw.bb.fail_crit_edge ], [ %retval.0.i73.ph, %adux1020_measure.exit.thread ], [ %call.i.i, %sw.bb.i.fail_crit_edge ], [ %call.i, %sw.bb1.fail_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %mask, label %entry.fail_crit_edge [
    i32 12, label %sw.bb
    i32 1, label %sw.bb21
  ]

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp eq i32 %4, 8
  br i1 %cmp, label %for.body.i.preheader, label %sw.bb.fail_crit_edge

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

for.body.i.preheader:                             ; preds = %sw.bb
  %5 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %val, label %for.body.i.preheader.fail_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.i.3
    i32 2, label %land.lhs.true.i.4
    i32 5, label %land.lhs.true.i.5
    i32 10, label %land.lhs.true.i.6
    i32 20, label %land.lhs.true.i.7
    i32 50, label %land.lhs.true.i.8
    i32 100, label %land.lhs.true.i.9
    i32 190, label %land.lhs.true.i.10
    i32 450, label %land.lhs.true.i.11
    i32 820, label %land.lhs.true.i.12
    i32 1400, label %land.lhs.true.i.13
  ]

for.body.i.preheader.fail_crit_edge:              ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i:                                  ; preds = %for.body.i.preheader
  %6 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %val2, label %land.lhs.true.i.fail_crit_edge [
    i32 100000, label %land.lhs.true.i.do.end17_crit_edge
    i32 200000, label %do.end17.fold.split
    i32 500000, label %do.end17.fold.split80
  ]

land.lhs.true.i.do.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.fail_crit_edge:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.3:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.3 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.3, label %land.lhs.true.i.3.do.end17_crit_edge, label %land.lhs.true.i.3.fail_crit_edge

land.lhs.true.i.3.fail_crit_edge:                 ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.3.do.end17_crit_edge:             ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.4:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.4 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.4, label %land.lhs.true.i.4.do.end17_crit_edge, label %land.lhs.true.i.4.fail_crit_edge

land.lhs.true.i.4.fail_crit_edge:                 ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.4.do.end17_crit_edge:             ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.5:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.5 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.5, label %land.lhs.true.i.5.do.end17_crit_edge, label %land.lhs.true.i.5.fail_crit_edge

land.lhs.true.i.5.fail_crit_edge:                 ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.5.do.end17_crit_edge:             ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.6:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.6 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.6, label %land.lhs.true.i.6.do.end17_crit_edge, label %land.lhs.true.i.6.fail_crit_edge

land.lhs.true.i.6.fail_crit_edge:                 ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.6.do.end17_crit_edge:             ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.7:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.7 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.7, label %land.lhs.true.i.7.do.end17_crit_edge, label %land.lhs.true.i.7.fail_crit_edge

land.lhs.true.i.7.fail_crit_edge:                 ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.7.do.end17_crit_edge:             ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.8:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.8 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.8, label %land.lhs.true.i.8.do.end17_crit_edge, label %land.lhs.true.i.8.fail_crit_edge

land.lhs.true.i.8.fail_crit_edge:                 ; preds = %land.lhs.true.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.8.do.end17_crit_edge:             ; preds = %land.lhs.true.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.9:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.9 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.9, label %land.lhs.true.i.9.do.end17_crit_edge, label %land.lhs.true.i.9.fail_crit_edge

land.lhs.true.i.9.fail_crit_edge:                 ; preds = %land.lhs.true.i.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.9.do.end17_crit_edge:             ; preds = %land.lhs.true.i.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.10:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.10 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.10, label %land.lhs.true.i.10.do.end17_crit_edge, label %land.lhs.true.i.10.fail_crit_edge

land.lhs.true.i.10.fail_crit_edge:                ; preds = %land.lhs.true.i.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.10.do.end17_crit_edge:            ; preds = %land.lhs.true.i.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.11:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.11 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.11, label %land.lhs.true.i.11.do.end17_crit_edge, label %land.lhs.true.i.11.fail_crit_edge

land.lhs.true.i.11.fail_crit_edge:                ; preds = %land.lhs.true.i.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.11.do.end17_crit_edge:            ; preds = %land.lhs.true.i.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.12:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.12 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.12, label %land.lhs.true.i.12.do.end17_crit_edge, label %land.lhs.true.i.12.fail_crit_edge

land.lhs.true.i.12.fail_crit_edge:                ; preds = %land.lhs.true.i.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.12.do.end17_crit_edge:            ; preds = %land.lhs.true.i.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true.i.13:                               ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.13 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.13, label %land.lhs.true.i.13.do.end17_crit_edge, label %land.lhs.true.i.13.fail_crit_edge

land.lhs.true.i.13.fail_crit_edge:                ; preds = %land.lhs.true.i.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i.13.do.end17_crit_edge:            ; preds = %land.lhs.true.i.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17.fold.split:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17.fold.split80:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17:                                         ; preds = %do.end17.fold.split80, %do.end17.fold.split, %land.lhs.true.i.13.do.end17_crit_edge, %land.lhs.true.i.12.do.end17_crit_edge, %land.lhs.true.i.11.do.end17_crit_edge, %land.lhs.true.i.10.do.end17_crit_edge, %land.lhs.true.i.9.do.end17_crit_edge, %land.lhs.true.i.8.do.end17_crit_edge, %land.lhs.true.i.7.do.end17_crit_edge, %land.lhs.true.i.6.do.end17_crit_edge, %land.lhs.true.i.5.do.end17_crit_edge, %land.lhs.true.i.4.do.end17_crit_edge, %land.lhs.true.i.3.do.end17_crit_edge, %land.lhs.true.i.do.end17_crit_edge
  %i.012.i.lcssa = phi i32 [ 0, %land.lhs.true.i.do.end17_crit_edge ], [ 48, %land.lhs.true.i.3.do.end17_crit_edge ], [ 64, %land.lhs.true.i.4.do.end17_crit_edge ], [ 80, %land.lhs.true.i.5.do.end17_crit_edge ], [ 96, %land.lhs.true.i.6.do.end17_crit_edge ], [ 112, %land.lhs.true.i.7.do.end17_crit_edge ], [ 128, %land.lhs.true.i.8.do.end17_crit_edge ], [ 144, %land.lhs.true.i.9.do.end17_crit_edge ], [ 160, %land.lhs.true.i.10.do.end17_crit_edge ], [ 176, %land.lhs.true.i.11.do.end17_crit_edge ], [ 192, %land.lhs.true.i.12.do.end17_crit_edge ], [ 208, %land.lhs.true.i.13.do.end17_crit_edge ], [ 16, %do.end17.fold.split ], [ 32, %do.end17.fold.split80 ]
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 64, i32 noundef 240, i32 noundef %i.012.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %fail

sw.bb21:                                          ; preds = %entry
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp23 = icmp eq i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i48 = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp23, %cmp2.i48
  br i1 %or.cond, label %land.lhs.true.i52, label %sw.bb21.fail_crit_edge

sw.bb21.fail_crit_edge:                           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

land.lhs.true.i52:                                ; preds = %sw.bb21
  %11 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %val2, label %land.lhs.true.i52.fail_crit_edge [
    i32 25000, label %land.lhs.true.i52.if.end28_crit_edge
    i32 40000, label %if.end28.fold.split
    i32 55000, label %if.end28.fold.split81
    i32 70000, label %if.end28.fold.split82
    i32 85000, label %if.end28.fold.split83
    i32 100000, label %if.end28.fold.split84
    i32 115000, label %if.end28.fold.split85
    i32 130000, label %if.end28.fold.split86
    i32 145000, label %if.end28.fold.split87
    i32 160000, label %if.end28.fold.split88
    i32 175000, label %if.end28.fold.split89
    i32 190000, label %if.end28.fold.split90
    i32 205000, label %if.end28.fold.split91
    i32 220000, label %if.end28.fold.split92
    i32 235000, label %if.end28.fold.split93
    i32 250000, label %if.end28.fold.split94
  ]

land.lhs.true.i52.if.end28_crit_edge:             ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true.i52.fail_crit_edge:                 ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end28.fold.split:                              ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split81:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split82:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split83:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split84:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split85:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split86:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split87:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split88:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split89:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split90:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split91:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split92:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split93:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.fold.split94:                            ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %if.end28.fold.split94, %if.end28.fold.split93, %if.end28.fold.split92, %if.end28.fold.split91, %if.end28.fold.split90, %if.end28.fold.split89, %if.end28.fold.split88, %if.end28.fold.split87, %if.end28.fold.split86, %if.end28.fold.split85, %if.end28.fold.split84, %if.end28.fold.split83, %if.end28.fold.split82, %if.end28.fold.split81, %if.end28.fold.split, %land.lhs.true.i52.if.end28_crit_edge
  %i.012.i46.lcssa = phi i32 [ 0, %land.lhs.true.i52.if.end28_crit_edge ], [ 1, %if.end28.fold.split ], [ 2, %if.end28.fold.split81 ], [ 3, %if.end28.fold.split82 ], [ 4, %if.end28.fold.split83 ], [ 5, %if.end28.fold.split84 ], [ 6, %if.end28.fold.split85 ], [ 7, %if.end28.fold.split86 ], [ 8, %if.end28.fold.split87 ], [ 9, %if.end28.fold.split88 ], [ 10, %if.end28.fold.split89 ], [ 11, %if.end28.fold.split90 ], [ 12, %if.end28.fold.split91 ], [ 13, %if.end28.fold.split92 ], [ 14, %if.end28.fold.split93 ], [ 15, %if.end28.fold.split94 ]
  %regmap29 = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap29, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 65, i32 noundef 15, i32 noundef %i.012.i46.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %fail

fail:                                             ; preds = %if.end28, %land.lhs.true.i52.fail_crit_edge, %sw.bb21.fail_crit_edge, %do.end17, %land.lhs.true.i.13.fail_crit_edge, %land.lhs.true.i.12.fail_crit_edge, %land.lhs.true.i.11.fail_crit_edge, %land.lhs.true.i.10.fail_crit_edge, %land.lhs.true.i.9.fail_crit_edge, %land.lhs.true.i.8.fail_crit_edge, %land.lhs.true.i.7.fail_crit_edge, %land.lhs.true.i.6.fail_crit_edge, %land.lhs.true.i.5.fail_crit_edge, %land.lhs.true.i.4.fail_crit_edge, %land.lhs.true.i.3.fail_crit_edge, %land.lhs.true.i.fail_crit_edge, %for.body.i.preheader.fail_crit_edge, %sw.bb.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -22, %entry.fail_crit_edge ], [ %call.i58, %if.end28 ], [ -22, %sw.bb21.fail_crit_edge ], [ %call.i, %do.end17 ], [ -22, %sw.bb.fail_crit_edge ], [ -22, %land.lhs.true.i.13.fail_crit_edge ], [ -22, %land.lhs.true.i.12.fail_crit_edge ], [ -22, %land.lhs.true.i.11.fail_crit_edge ], [ -22, %land.lhs.true.i.10.fail_crit_edge ], [ -22, %land.lhs.true.i.9.fail_crit_edge ], [ -22, %land.lhs.true.i.8.fail_crit_edge ], [ -22, %land.lhs.true.i.7.fail_crit_edge ], [ -22, %land.lhs.true.i.6.fail_crit_edge ], [ -22, %land.lhs.true.i.5.fail_crit_edge ], [ -22, %land.lhs.true.i.4.fail_crit_edge ], [ -22, %land.lhs.true.i.3.fail_crit_edge ], [ -22, %land.lhs.true.i.fail_crit_edge ], [ -22, %for.body.i.preheader.fail_crit_edge ], [ -22, %land.lhs.true.i52.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !81
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cond = icmp eq i32 %4, 8
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 72, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 1, i32 2
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %and = and i32 %8, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 28, i32 noundef 8340) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 29, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.fail_crit_edge, label %if.end6

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cond = icmp eq i32 %7, 8
  br i1 %cond, label %sw.bb, label %if.end6.fail_crit_edge

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp8 = icmp eq i32 %dir, 1
  %. = select i1 %cmp8, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %state.addr.0 = select i1 %tobool.not, i32 %., i32 0
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 72, i32 noundef %., i32 noundef %state.addr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %sw.bb.fail_crit_edge, label %if.end18

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end18:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 47, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp21 = icmp slt i32 %call.i38, 0
  br i1 %cmp21, label %if.end18.fail_crit_edge, label %if.end23

if.end18.fail_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end23:                                         ; preds = %if.end18
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i39 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 69, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.i = icmp slt i32 %call.i39, 0
  br i1 %cmp.i, label %if.end23.fail_crit_edge, label %sw.bb.i

if.end23.fail_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

sw.bb.i:                                          ; preds = %if.end23
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 69, i32 noundef 240, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %sw.bb.i.fail_crit_edge, label %if.end17.i

sw.bb.i.fail_crit_edge:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end17.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 69, i32 noundef 15, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i1.i, i32 0) #6
  br label %fail

fail:                                             ; preds = %if.end17.i, %sw.bb.i.fail_crit_edge, %if.end23.fail_crit_edge, %if.end18.fail_crit_edge, %sw.bb.fail_crit_edge, %if.end6.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.fail_crit_edge ], [ %call3, %if.end.fail_crit_edge ], [ %call.i, %sw.bb.fail_crit_edge ], [ %call.i38, %if.end18.fail_crit_edge ], [ -22, %if.end6.fail_crit_edge ], [ %call.i39, %if.end23.fail_crit_edge ], [ %call.i.i, %sw.bb.i.fail_crit_edge ], [ %18, %if.end17.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_read_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !81
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cond = icmp eq i32 %4, 8
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 42, i32 43
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %., ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %sw.bb.cleanup_crit_edge, label %if.end6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adux1020_write_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cond = icmp ne i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %2 = icmp ugt i32 %val, 65535
  %or.cond = or i1 %2, %cond
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 42, i32 43
  %regmap = getelementptr inbounds %struct.adux1020_data, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %., i32 noundef %val) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_adux1020__304_844_adux1020_driver_init6, !1, !"__initcall__kmod_adux1020__304_844_adux1020_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/adux1020.c", i32 844, i32 1}
!2 = !{ptr @__exitcall_adux1020_driver_exit, !1, !"__exitcall_adux1020_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/adux1020.c", i32 846, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/adux1020.c", i32 847, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/adux1020.c", i32 848, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/adux1020.c", i32 838, i32 11}
!12 = !{ptr @adux1020_driver, !13, !"adux1020_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/adux1020.c", i32 836, i32 26}
!14 = !{ptr @adux1020_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/adux1020.c", i32 796, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/adux1020.c", i32 798, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @adux1020_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @adux1020_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @adux1020_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/adux1020.c", i32 804, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/adux1020.c", i32 816, i32 4}
!30 = !{ptr @adux1020_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adux1020_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @adux1020_info, !33, !"adux1020_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/adux1020.c", i32 690, i32 30}
!34 = !{ptr @adux1020_attribute_group, !35, !"adux1020_attribute_group", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/adux1020.c", i32 686, i32 37}
!36 = !{ptr @adux1020_attributes, !37, !"adux1020_attributes", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/adux1020.c", i32 681, i32 26}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/adux1020.c", i32 678, i32 8}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iio_const_attr_sampling_frequency_available, !39, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!42 = distinct !{null, !43, !"adux1020_modes", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/adux1020.c", i32 108, i32 40}
!44 = !{ptr @adux1020_led_currents, !45, !"adux1020_led_currents", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/adux1020.c", i32 198, i32 18}
!46 = !{ptr @adux1020_rates, !47, !"adux1020_rates", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/adux1020.c", i32 181, i32 18}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/adux1020.c", i32 673, i32 18}
!50 = !{ptr @adux1020_channels, !51, !"adux1020_channels", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/adux1020.c", i32 662, i32 35}
!52 = !{ptr @adux1020_proximity_event, !53, !"adux1020_proximity_event", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/adux1020.c", i32 647, i32 36}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/adux1020.c", i32 117, i32 10}
!56 = !{ptr @adux1020_regmap_config, !57, !"adux1020_regmap_config", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/adux1020.c", i32 116, i32 35}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/adux1020.c", i32 745, i32 3}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @adux1020_chip_init._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @adux1020_chip_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/adux1020.c", i32 749, i32 2}
!65 = !{ptr @adux1020_chip_init.__UNIQUE_ID_ddebug303, !64, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!66 = !{ptr @adux1020_def_conf, !67, !"adux1020_def_conf", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/adux1020.c", i32 124, i32 34}
!68 = !{ptr @adux1020_of_match, !69, !"adux1020_of_match", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/adux1020.c", i32 830, i32 34}
!70 = !{ptr @adux1020_id, !71, !"adux1020_id", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/adux1020.c", i32 824, i32 35}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 2148805609, i64 2148805614, i64 2148805627, i64 2148805671, i64 2148805705, i64 2148805726}
