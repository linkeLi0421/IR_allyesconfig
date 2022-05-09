; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/impedance-analyzer/ad5933.c_pt.bc'
source_filename = "../drivers/staging/iio/impedance-analyzer/ad5933.c"
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
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ad5933_state = type { ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i32, i8, i8, [4 x i32], i16, i16, i16, i32, i32, i32, i32 }

@__initcall__kmod_ad5933__296_788_ad5933_driver_init6 = internal global ptr @ad5933_driver_init, section ".initcall6.init", align 4
@ad5933_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad5933_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5933_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad5933_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad5933_driver_exit = internal global ptr @ad5933_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [63 x i8] c"ad5933.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [74 x i8] c"ad5933.description=Analog Devices AD5933 Impedance Conv. Network Analyzer\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [58 x i8] c"ad5933.file=drivers/staging/iio/impedance-analyzer/ad5933\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [22 x i8] c"ad5933.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5933\00", [25 x i8] zeroinitializer }, align 32
@ad5933_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5933\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5934\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ad5933_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5933\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ad5934\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ad5933_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@ad5933_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 701, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable specified VDD supply\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5933_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/staging/iio/impedance-analyzer/ad5933.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5933_probe._entry_ptr = internal global ptr @ad5933_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@ad5933_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&st->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@ad5933_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&st->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@ad5933_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad5933_attribute_group, ptr @ad5933_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5933_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 146, i32 -1, %struct.anon.86 { i8 115, i8 14, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 148, i32 0, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.32, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 150, i32 1, %struct.anon.86 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr @.str.33, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@ad5933_ring_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @ad5933_ring_preenable, ptr @ad5933_ring_postenable, ptr null, ptr @ad5933_ring_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad5933_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I2C write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad5933_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@ad5933_i2c_write._entry_ptr = internal global ptr @ad5933_i2c_write._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ad5933_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad5933_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@ad5933_i2c_read._entry_ptr = internal global ptr @ad5933_i2c_read._entry, section ".printk_index", align 4
@ad5933_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad5933_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad5933_attributes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @iio_dev_attr_out_altvoltage0_raw, ptr @iio_dev_attr_out_altvoltage0_scale_available, ptr @iio_dev_attr_out_altvoltage0_frequency_start, ptr @iio_dev_attr_out_altvoltage0_frequency_increment, ptr @iio_dev_attr_out_altvoltage0_frequency_points, ptr @iio_dev_attr_out_altvoltage0_settling_cycles, ptr @iio_dev_attr_in_voltage0_scale, ptr @iio_dev_attr_in_voltage0_scale_available, ptr null], [60 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_raw = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show, ptr @ad5933_store }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show, ptr null }, i64 2, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency_start = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show_frequency, ptr @ad5933_store_frequency }, i64 130, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency_increment = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show_frequency, ptr @ad5933_store_frequency }, i64 133, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency_points = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show, ptr @ad5933_store }, i64 6, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_settling_cycles = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show, ptr @ad5933_store }, i64 3, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage0_scale = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show, ptr @ad5933_store }, i64 4, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage0_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5933_show, ptr null }, i64 5, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"out_altvoltage0_raw\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%u %u %u %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 0.2\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_scale_available\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_frequency_start\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"out_altvoltage0_frequency_increment\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"out_altvoltage0_frequency_points\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_settling_cycles\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in_voltage0_scale\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage0_scale_available\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"real\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imag\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 130, i64 133]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"ad5933_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 780, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 782, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ad5933_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 772, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"ad5933_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 764, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 693, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 695, i32 45 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 701, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 715, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 742, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"ad5933_info\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 541, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"ad5933_channels\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 118, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"ad5933_ring_setup_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 599, i32 42 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 133, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 147, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"ad5933_attribute_group\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 494, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"ad5933_attributes\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 482, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant [33 x i8] c"iio_dev_attr_out_altvoltage0_raw\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_out_altvoltage0_scale_available\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_out_altvoltage0_frequency_start\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [49 x i8] c"iio_dev_attr_out_altvoltage0_frequency_increment\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [46 x i8] c"iio_dev_attr_out_altvoltage0_frequency_points\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_out_altvoltage0_settling_cycles\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [31 x i8] c"iio_dev_attr_in_voltage0_scale\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage0_scale_available\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 446, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 340, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 344, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 349, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 352, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 354, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 354, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 357, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 451, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 318, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 323, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 466, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 471, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 456, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 461, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 122, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [51 x i8] c"../drivers/staging/iio/impedance-analyzer/ad5933.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 123, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ad5933_driver_exit, ptr @__initcall__kmod_ad5933__296_788_ad5933_driver_init6, ptr @ad5933_driver_exit, ptr @ad5933_i2c_read._entry, ptr @ad5933_i2c_read._entry_ptr, ptr @ad5933_i2c_write._entry, ptr @ad5933_i2c_write._entry_ptr, ptr @ad5933_probe._entry, ptr @ad5933_probe._entry_ptr, ptr @ad5933_driver, ptr @.str, ptr @ad5933_of_match, ptr @ad5933_id, ptr @ad5933_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ad5933_probe.__key.9, ptr @.str.10, ptr @ad5933_probe.__key.11, ptr @.str.12, ptr @ad5933_info, ptr @ad5933_channels, ptr @ad5933_ring_setup_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ad5933_attribute_group, ptr @ad5933_attributes, ptr @iio_dev_attr_out_altvoltage0_raw, ptr @iio_dev_attr_out_altvoltage0_scale_available, ptr @iio_dev_attr_out_altvoltage0_frequency_start, ptr @iio_dev_attr_out_altvoltage0_frequency_increment, ptr @iio_dev_attr_out_altvoltage0_frequency_points, ptr @iio_dev_attr_out_altvoltage0_settling_cycles, ptr @iio_dev_attr_in_voltage0_scale, ptr @iio_dev_attr_in_voltage0_scale_available, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_ring_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5933_attributes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_raw to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency_start to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency_increment to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency_points to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_settling_cycles to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage0_scale to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage0_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad5933_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5933_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5933_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 252) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %lock = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5933_probe.__key) #7
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %reg = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @regulator_enable(ptr noundef %call4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad5933_reg_disable, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  br i1 %tobool.not.i, label %if.end24, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i171 = tail call i32 @regulator_disable(ptr noundef %7) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call26 = tail call i32 @regulator_get_voltage(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %div176 = udiv i32 %call26, 1000
  %conv = trunc i32 %div176 to i16
  %vref_mv = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %vref_mv, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  %mclk = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %mclk, align 4
  %cmp.i162 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %land.lhs.true, label %if.then44

land.lhs.true:                                    ; preds = %if.end28
  %10 = ptrtoint ptr %call30 to i32
  %cmp36.not = icmp eq ptr %call30, inttoptr (i32 -2 to ptr)
  br i1 %cmp36.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then44:                                        ; preds = %if.end28
  %call.i164 = tail call i32 @clk_prepare(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %if.end.i, label %if.then44.clk_prepare_enable.exit_crit_edge

if.then44.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then44
  %call1.i = tail call i32 @clk_enable(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end50_crit_edge, label %if.then3.i

if.end.i.if.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call30) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then44.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i164, %if.then44.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp47 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp47, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end50_crit_edge

clk_prepare_enable.exit.if.end50_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %clk_prepare_enable.exit.if.end50_crit_edge, %if.end.i.if.end50_crit_edge
  %call.i166 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad5933_clk_disable, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool.not.i167 = icmp eq i32 %call.i166, 0
  %11 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mclk, align 4
  br i1 %tobool.not.i167, label %if.end58, label %devm_add_action_or_reset.exit170

devm_add_action_or_reset.exit170:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end50
  %call57 = tail call i32 @clk_get_rate(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %if.end58.if.else_crit_edge, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.end58.if.else_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %if.end58.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.end58.if.end63_crit_edge
  %.sink177 = phi i32 [ 16776000, %if.else ], [ %call57, %if.end58.if.end63_crit_edge ]
  %.sink = phi i8 [ 0, %if.else ], [ 8, %if.end58.if.end63_crit_edge ]
  %mclk_hz61 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %mclk_hz61 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink177, ptr %mclk_hz61, align 4
  %ctrl_lb62 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %ctrl_lb62 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %ctrl_lb62, align 1
  %15 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vref_mv, align 4
  %conv.i = zext i16 %16 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1980
  %div.i = udiv i32 %mul.i, 3300
  %arrayidx1.i = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 0
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %arrayidx1.i, align 4
  %mul.1.i = mul nuw nsw i32 %conv.i, 198
  %div.1.i = udiv i32 %mul.1.i, 3300
  %arrayidx1.1.i = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.1.i, ptr %arrayidx1.1.i, align 4
  %mul.2.i = mul nuw nsw i32 %conv.i, 383
  %div.2.i = udiv i32 %mul.2.i, 3300
  %arrayidx1.2.i = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.2.i, ptr %arrayidx1.2.i, align 4
  %mul.3.i = mul nuw nsw i32 %conv.i, 970
  %div.3.i = udiv i32 %mul.3.i, 3300
  %arrayidx1.3.i = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.3.i, ptr %arrayidx1.3.i, align 4
  %work = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %21 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @ad5933_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry73 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry73, ptr %entry73, align 4
  %prev.i = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry73, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ad5933_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @ad5933_probe.__key.11) #7
  %poll_time_jiffies = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %poll_time_jiffies to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %poll_time_jiffies, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %26 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ad5933_info, ptr %info, align 8
  %name85 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %name85 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %id, ptr %name85, align 8
  %28 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ad5933_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %num_channels, align 4
  %call87 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @ad5933_ring_setup_ops, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end90:                                         ; preds = %if.end63
  %call91 = tail call fastcc i32 @ad5933_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end90.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %devm_add_action_or_reset.exit170, %clk_prepare_enable.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end17, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ %call12, %do.end17 ], [ %call96, %if.end94 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call26, %if.end24.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i166, %devm_add_action_or_reset.exit170 ], [ %call87, %if.end63.cleanup_crit_edge ], [ %call91, %if.end90.cleanup_crit_edge ], [ %10, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad5933_reg_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.ad5933_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad5933_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.ad5933_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad5933_work(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [2 x i16], align 2
  %val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %buf, align 2, !annotation !109
  %5 = getelementptr inbounds [2 x i16], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #7
  %7 = getelementptr inbounds [2 x i32], ptr %val, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !109
  %state = getelementptr i8, ptr %work, i32 232
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp = icmp eq i32 %10, 16
  br i1 %cmp, label %if.then, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ad5933_i2c_read.exit, label %if.end.i81

if.then:                                          ; preds = %entry
  %ctrl_hb.i = getelementptr i8, ptr %work, i32 196
  %11 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl_hb.i, align 4
  %or4.i = or i8 %12, 32
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext %or4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.ad5933_cmd.exit_crit_edge

if.then.ad5933_cmd.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5933_cmd.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13) #10
  br label %ad5933_cmd.exit

ad5933_cmd.exit:                                  ; preds = %do.end.i.i, %if.then.ad5933_cmd.exit_crit_edge
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %state, align 4
  %poll_time_jiffies = getelementptr i8, ptr %work, i32 236
  %14 = ptrtoint ptr %poll_time_jiffies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %poll_time_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i80 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef %15) #7
  br label %cleanup52

if.end.i81:                                       ; preds = %while.body.i.preheader
  %conv.i = trunc i32 %call.i to i8
  %17 = and i8 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  br i1 %tobool9.not, label %if.else36, label %if.then10

ad5933_i2c_read.exit:                             ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #10
  br label %cleanup52

if.then10:                                        ; preds = %if.end.i81
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %masklength, align 8
  %20 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_scan_mask, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %21, i32 noundef %19) #7
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %24 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active_scan_mask, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %call11.tr = trunc i32 %call4.i to i8
  %conv17 = shl i8 %call11.tr, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17)
  %tobool.not5.i = icmp eq i8 %conv17, 0
  br i1 %tobool.not5.i, label %if.then10.if.end21_crit_edge, label %while.body.i88.preheader

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

while.body.i88.preheader:                         ; preds = %if.then10
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not = icmp eq i32 %28, 0
  %conv16 = select i1 %tobool15.not, i8 -106, i8 -108
  br label %while.body.i88

while.body.i88:                                   ; preds = %if.end.i96.while.body.i88_crit_edge, %while.body.i88.preheader
  %dec8.in.i83 = phi i8 [ %dec8.i91, %if.end.i96.while.body.i88_crit_edge ], [ %conv17, %while.body.i88.preheader ]
  %data.addr.07.i84 = phi ptr [ %incdec.ptr.i94, %if.end.i96.while.body.i88_crit_edge ], [ %buf, %while.body.i88.preheader ]
  %reg.addr.06.i85 = phi i8 [ %inc.i92, %if.end.i96.while.body.i88_crit_edge ], [ %conv16, %while.body.i88.preheader ]
  %call.i86 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext %reg.addr.06.i85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i87 = icmp slt i32 %call.i86, 0
  br i1 %cmp.i87, label %ad5933_i2c_read.exit98, label %if.end.i96

if.end.i96:                                       ; preds = %while.body.i88
  %dec8.i91 = add i8 %dec8.in.i83, -1
  %inc.i92 = add i8 %reg.addr.06.i85, 1
  %conv.i93 = trunc i32 %call.i86 to i8
  %incdec.ptr.i94 = getelementptr i8, ptr %data.addr.07.i84, i32 1
  %29 = ptrtoint ptr %data.addr.07.i84 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i93, ptr %data.addr.07.i84, align 1
  %tobool.not.i95 = icmp eq i8 %dec8.i91, 0
  br i1 %tobool.not.i95, label %if.end.i96.if.end21_crit_edge, label %if.end.i96.while.body.i88_crit_edge

if.end.i96.while.body.i88_crit_edge:              ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i88

if.end.i96.if.end21_crit_edge:                    ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

ad5933_i2c_read.exit98:                           ; preds = %while.body.i88
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i89 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i89, ptr noundef nonnull @.str.15) #10
  br label %cleanup52

if.end21:                                         ; preds = %if.end.i96.if.end21_crit_edge, %if.then10.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp22 = icmp eq i32 %call4.i, 2
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %buf, align 2
  %conv25 = zext i16 %31 to i32
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv25, ptr %val, align 4
  br i1 %cmp22, label %if.then24, label %if.end21.if.end33_crit_edge

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %5, align 2
  %conv28 = zext i16 %34 to i32
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv28, ptr %7, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.end21.if.end33_crit_edge
  %call35 = call i32 @iio_push_to_buffers(ptr noundef %3, ptr noundef nonnull %val) #7
  %36 = and i8 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool43.not = icmp eq i8 %36, 0
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.else36:                                        ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #9
  %poll_time_jiffies38 = getelementptr i8, ptr %work, i32 236
  %37 = ptrtoint ptr %poll_time_jiffies38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %poll_time_jiffies38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i99 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work, i32 noundef %38) #7
  br label %cleanup52

if.then44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call fastcc i32 @ad5933_cmd(ptr noundef %add.ptr, i8 noundef zeroext -96)
  br label %cleanup52

if.else46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call fastcc i32 @ad5933_cmd(ptr noundef %add.ptr, i8 noundef zeroext 48)
  %poll_time_jiffies49 = getelementptr i8, ptr %work, i32 236
  %40 = ptrtoint ptr %poll_time_jiffies49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %poll_time_jiffies49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i100 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %work, i32 noundef %41) #7
  br label %cleanup52

cleanup52:                                        ; preds = %if.else46, %if.then44, %if.else36, %ad5933_i2c_read.exit98, %ad5933_i2c_read.exit, %ad5933_cmd.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5933_setup(ptr nocapture noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_lb.i = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %ctrl_lb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_lb.i, align 1
  %2 = or i8 %1, 16
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -127, i8 noundef zeroext %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %mclk_hz.i = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 5
  %5 = ptrtoint ptr %mclk_hz.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mclk_hz.i, align 4
  %div274.i = lshr i32 %6, 2
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div274.i, i64 1342177280000) #11, !srcloc !110
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  %freq_start.i = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 12
  %8 = ptrtoint ptr %freq_start.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000, ptr %freq_start.i, align 4
  %dat.sroa.4.0.extract.shift.i207 = lshr i64 %asmresult1.i.i, 16
  %dat.sroa.4.0.extract.trunc.i = trunc i64 %dat.sroa.4.0.extract.shift.i207 to i8
  %dat.sroa.6.0.extract.trunc.i = trunc i64 %asmresult1.i.i to i8
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st, align 4
  %call.i.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -126, i8 noundef zeroext %dat.sroa.4.0.extract.trunc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %cmp.i.i34 = icmp slt i32 %call.i.i33, 0
  br i1 %cmp.i.i34, label %if.end.cleanup.sink.split_crit_edge, label %while.cond.i.1.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.i.1.i:                                 ; preds = %if.end
  %dat.sroa.5.0.extract.shift.i208 = lshr i64 %asmresult1.i.i, 8
  %dat.sroa.5.0.extract.trunc.i = trunc i64 %dat.sroa.5.0.extract.shift.i208 to i8
  %call.i.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -125, i8 noundef zeroext %dat.sroa.5.0.extract.trunc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i, label %while.cond.i.1.i.cleanup.sink.split_crit_edge, label %while.cond.i.2.i

while.cond.i.1.i.cleanup.sink.split_crit_edge:    ; preds = %while.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.i.2.i:                                 ; preds = %while.cond.i.1.i
  %call.i.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -124, i8 noundef zeroext %dat.sroa.6.0.extract.trunc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i, label %while.cond.i.2.i.cleanup.sink.split_crit_edge, label %if.else166.i151

while.cond.i.2.i.cleanup.sink.split_crit_edge:    ; preds = %while.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else166.i151:                                  ; preds = %while.cond.i.2.i
  %11 = ptrtoint ptr %mclk_hz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk_hz.i, align 4
  %div274.i38 = lshr i32 %12, 2
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div274.i38, i64 26843545600) #11, !srcloc !110
  %asmresult1.i.i152 = extractvalue { i64, i64 } %13, 1
  %freq_inc.i = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 13
  %14 = ptrtoint ptr %freq_inc.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 200, ptr %freq_inc.i, align 4
  %dat.sroa.4.0.extract.shift.i156209 = lshr i64 %asmresult1.i.i152, 16
  %dat.sroa.4.0.extract.trunc.i157 = trunc i64 %dat.sroa.4.0.extract.shift.i156209 to i8
  %dat.sroa.6.0.extract.trunc.i158 = trunc i64 %asmresult1.i.i152 to i8
  %15 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %st, align 4
  %call.i.i159 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -123, i8 noundef zeroext %dat.sroa.4.0.extract.trunc.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %cmp.i.i160 = icmp slt i32 %call.i.i159, 0
  br i1 %cmp.i.i160, label %if.else166.i151.cleanup.sink.split_crit_edge, label %while.cond.i.1.i165

if.else166.i151.cleanup.sink.split_crit_edge:     ; preds = %if.else166.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.i.1.i165:                              ; preds = %if.else166.i151
  %dat.sroa.5.0.extract.shift.i161210 = lshr i64 %asmresult1.i.i152, 8
  %dat.sroa.5.0.extract.trunc.i162 = trunc i64 %dat.sroa.5.0.extract.shift.i161210 to i8
  %call.i.1.i163 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -122, i8 noundef zeroext %dat.sroa.5.0.extract.trunc.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i163)
  %cmp.i.1.i164 = icmp slt i32 %call.i.1.i163, 0
  br i1 %cmp.i.1.i164, label %while.cond.i.1.i165.cleanup.sink.split_crit_edge, label %while.cond.i.2.i168

while.cond.i.1.i165.cleanup.sink.split_crit_edge: ; preds = %while.cond.i.1.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.i.2.i168:                              ; preds = %while.cond.i.1.i165
  %call.i.2.i166 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -121, i8 noundef zeroext %dat.sroa.6.0.extract.trunc.i158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i166)
  %cmp.i.2.i167 = icmp slt i32 %call.i.2.i166, 0
  br i1 %cmp.i.2.i167, label %while.cond.i.2.i168.cleanup.sink.split_crit_edge, label %if.end8

while.cond.i.2.i168.cleanup.sink.split_crit_edge: ; preds = %while.cond.i.2.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %while.cond.i.2.i168
  %settling_cycles = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 10
  %17 = ptrtoint ptr %settling_cycles to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 10, ptr %settling_cycles, align 2
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -118, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i175 = icmp slt i32 %call.i, 0
  br i1 %cmp.i175, label %if.end8.cleanup.sink.split_crit_edge, label %while.cond.i.1

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.i.1:                                   ; preds = %if.end8
  %call.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -117, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i175.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i175.1, label %while.cond.i.1.cleanup.sink.split_crit_edge, label %if.end13

while.cond.i.1.cleanup.sink.split_crit_edge:      ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end13:                                         ; preds = %while.cond.i.1
  %freq_points = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 11
  %20 = ptrtoint ptr %freq_points to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 100, ptr %freq_points, align 4
  %21 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %st, align 4
  %call.i185 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext -120, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %if.end13.cleanup.sink.split_crit_edge, label %while.cond.i181.1

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.cond.i181.1:                                ; preds = %if.end13
  %call.i185.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext -119, i8 noundef zeroext 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.1)
  %cmp.i186.1 = icmp slt i32 %call.i185.1, 0
  br i1 %cmp.i186.1, label %while.cond.i181.1.cleanup.sink.split_crit_edge, label %while.cond.i181.1.cleanup_crit_edge

while.cond.i181.1.cleanup_crit_edge:              ; preds = %while.cond.i181.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.i181.1.cleanup.sink.split_crit_edge:   ; preds = %while.cond.i181.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.cond.i181.1.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %while.cond.i.1.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %while.cond.i.2.i168.cleanup.sink.split_crit_edge, %while.cond.i.1.i165.cleanup.sink.split_crit_edge, %if.else166.i151.cleanup.sink.split_crit_edge, %while.cond.i.2.i.cleanup.sink.split_crit_edge, %while.cond.i.1.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %4, %entry.cleanup.sink.split_crit_edge ], [ %10, %if.end.cleanup.sink.split_crit_edge ], [ %10, %while.cond.i.1.i.cleanup.sink.split_crit_edge ], [ %10, %while.cond.i.2.i.cleanup.sink.split_crit_edge ], [ %16, %if.else166.i151.cleanup.sink.split_crit_edge ], [ %16, %while.cond.i.1.i165.cleanup.sink.split_crit_edge ], [ %16, %while.cond.i.2.i168.cleanup.sink.split_crit_edge ], [ %19, %while.cond.i.1.cleanup.sink.split_crit_edge ], [ %19, %if.end8.cleanup.sink.split_crit_edge ], [ %22, %while.cond.i181.1.cleanup.sink.split_crit_edge ], [ %22, %if.end13.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i.i33, %if.end.cleanup.sink.split_crit_edge ], [ %call.i.1.i, %while.cond.i.1.i.cleanup.sink.split_crit_edge ], [ %call.i.2.i, %while.cond.i.2.i.cleanup.sink.split_crit_edge ], [ %call.i.i159, %if.else166.i151.cleanup.sink.split_crit_edge ], [ %call.i.1.i163, %while.cond.i.1.i165.cleanup.sink.split_crit_edge ], [ %call.i.2.i166, %while.cond.i.2.i168.cleanup.sink.split_crit_edge ], [ %call.i.1, %while.cond.i.1.cleanup.sink.split_crit_edge ], [ %call.i, %if.end8.cleanup.sink.split_crit_edge ], [ %call.i185.1, %while.cond.i181.1.cleanup.sink.split_crit_edge ], [ %call.i185, %if.end13.cleanup.sink.split_crit_edge ]
  %dev.i188 = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i188, ptr noundef nonnull @.str.13) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.i181.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.cond.i181.1.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5933_cmd(ptr nocapture noundef readonly %st, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hb = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 6
  %0 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_hb, align 4
  %or4 = or i8 %1, %cmd
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -128, i8 noundef zeroext %or4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.ad5933_i2c_write.exit_crit_edge

entry.ad5933_i2c_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5933_i2c_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #10
  br label %ad5933_i2c_write.exit

ad5933_i2c_write.exit:                            ; preds = %do.end.i, %entry.ad5933_i2c_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %entry.ad5933_i2c_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %ctrl_hb.i = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl_hb.i, align 4
  %or4.i = or i8 %4, -112
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -128, i8 noundef zeroext %or4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.out.sink.split_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %dec7.i = phi i8 [ %dec.i, %do.end.i.while.body.i_crit_edge ], [ 99, %if.end.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext -113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.i.i29 = icmp slt i32 %call.i.i28, 0
  br i1 %cmp.i.i29, label %while.body.i.out.sink.split_crit_edge, label %if.end.i.i

while.body.i.out.sink.split_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end.i.i:                                       ; preds = %while.body.i
  %9 = and i32 %call.i.i28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %do.end.i, label %ad5933_wait_busy.exit

do.end.i:                                         ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  %dec.i = add nsw i8 %dec7.i, -1
  %tobool.not.i = icmp eq i8 %dec7.i, 0
  br i1 %tobool.not.i, label %do.end.i.out_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

ad5933_wait_busy.exit:                            ; preds = %if.end.i.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -110) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ad5933_wait_busy.exit.out.sink.split_crit_edge, label %if.end.i

ad5933_wait_busy.exit.out.sink.split_crit_edge:   ; preds = %ad5933_wait_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end.i:                                         ; preds = %ad5933_wait_busy.exit
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %if.end.i.out.sink.split_crit_edge, label %if.end.i.1

if.end.i.out.sink.split_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end.i.1:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  %13 = shl i32 %call.i, 26
  %dat.sroa.5.0.insert.ext = shl i32 %call.i.1, 18
  %14 = and i32 %dat.sroa.5.0.insert.ext, 66846720
  %shl.i = or i32 %13, %14
  %shr.i = ashr exact i32 %shl.i, 18
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1000, ptr %val, align 4
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %val2, align 4
  br label %cleanup

out.sink.split:                                   ; preds = %if.end.i.out.sink.split_crit_edge, %ad5933_wait_busy.exit.out.sink.split_crit_edge, %while.body.i.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %6, %if.end.out.sink.split_crit_edge ], [ %12, %if.end.i.out.sink.split_crit_edge ], [ %12, %ad5933_wait_busy.exit.out.sink.split_crit_edge ], [ %8, %while.body.i.out.sink.split_crit_edge ]
  %.str.15.sink = phi ptr [ @.str.13, %if.end.out.sink.split_crit_edge ], [ @.str.15, %if.end.i.out.sink.split_crit_edge ], [ @.str.15, %ad5933_wait_busy.exit.out.sink.split_crit_edge ], [ @.str.15, %while.body.i.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i.i, %if.end.out.sink.split_crit_edge ], [ %call.i.1, %if.end.i.out.sink.split_crit_edge ], [ %call.i, %ad5933_wait_busy.exit.out.sink.split_crit_edge ], [ %call.i.i28, %while.body.i.out.sink.split_crit_edge ]
  %dev.i.i30 = getelementptr inbounds %struct.i2c_client, ptr %.lcssa.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i30, ptr noundef nonnull %.str.15.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %do.end.i.out_crit_edge
  %ret.0 = phi i32 [ %ret.0.ph, %out.sink.split ], [ -11, %do.end.i.out_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.bb14, %if.end.i.1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb14 ], [ %ret.0, %out ], [ 1, %if.end.i.1 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  %conv = trunc i64 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb14
    i32 4, label %sw.bb17
    i32 5, label %sw.bb22
    i32 6, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_hb = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl_hb, align 4
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 3
  %and = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 %and
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %10)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %range_avail5 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %range_avail5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %range_avail5, align 4
  %arrayidx8 = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %settling_cycles = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %settling_cycles to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %settling_cycles, align 2
  %conv15 = zext i16 %20 to i32
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv15)
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_hb18 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %ctrl_hb18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl_hb18, align 4
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond)
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = call ptr @memcpy(ptr %buf, ptr @.str.24, i32 7)
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %freq_points = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %freq_points to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %freq_points, align 4
  %conv25 = zext i16 %26 to i32
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv25)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb22, %sw.bb17, %sw.bb14, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %27 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call3, %sw.bb ], [ %call13, %sw.bb4 ], [ %call16, %sw.bb14 ], [ %call21, %sw.bb17 ], [ 6, %sw.bb22 ], [ %call26, %sw.bb24 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !109
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %4)
  %cmp.not = icmp eq i64 %4, 4
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = call i32 @iio_device_claim_direct_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %lock = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %address, align 8
  %conv = trunc i64 %6 to i32
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %conv, label %if.end8.sw.epilog_crit_edge [
    i32 1, label %for.cond.preheader
    i32 4, label %sw.bb23
    i32 3, label %sw.bb40
    i32 6, label %sw.bb80
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader:                               ; preds = %if.end8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %val, align 2
  %conv12 = zext i16 %9 to i32
  %arrayidx = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv12)
  %cmp13 = icmp eq i32 %11, %conv12
  br i1 %cmp13, label %for.cond.preheader.if.then15_crit_edge, label %for.inc

for.cond.preheader.if.then15_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %for.inc.2.if.then15_crit_edge, %for.inc.1.if.then15_crit_edge, %for.inc.if.then15_crit_edge, %for.cond.preheader.if.then15_crit_edge
  %i.0179.lcssa = phi i8 [ 0, %for.cond.preheader.if.then15_crit_edge ], [ 2, %for.inc.if.then15_crit_edge ], [ 4, %for.inc.1.if.then15_crit_edge ], [ 6, %for.inc.2.if.then15_crit_edge ]
  %ctrl_hb = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl_hb, align 4
  %14 = and i8 %13, -7
  %conv20 = or i8 %14, %i.0179.lcssa
  store i8 %conv20, ptr %ctrl_hb, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -128, i8 noundef zeroext %conv20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then15.sw.epilog.sink.split_crit_edge, label %if.then15.sw.epilog_crit_edge

if.then15.sw.epilog_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then15.sw.epilog.sink.split_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

for.inc:                                          ; preds = %for.cond.preheader
  %arrayidx.1 = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv12)
  %cmp13.1 = icmp eq i32 %18, %conv12
  br i1 %cmp13.1, label %for.inc.if.then15_crit_edge, label %for.inc.1

for.inc.if.then15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv12)
  %cmp13.2 = icmp eq i32 %20, %conv12
  br i1 %cmp13.2, label %for.inc.1.if.then15_crit_edge, label %for.inc.2

for.inc.1.if.then15_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.ad5933_state, ptr %1, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv12)
  %cmp13.3 = icmp eq i32 %22, %conv12
  br i1 %cmp13.3, label %for.inc.2.if.then15_crit_edge, label %for.inc.2.sw.epilog_crit_edge

for.inc.2.sw.epilog_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc.2.if.then15_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

sw.bb23:                                          ; preds = %if.end8
  %call24 = call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.22) #7
  br i1 %call24, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_hb26 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %ctrl_hb26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctrl_hb26, align 4
  %25 = or i8 %24, 1
  store i8 %25, ptr %ctrl_hb26, align 4
  br label %if.end38

if.else:                                          ; preds = %sw.bb23
  %call30 = call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.23) #7
  br i1 %call30, label %if.then31, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_hb32 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %ctrl_hb32 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrl_hb32, align 4
  %28 = and i8 %27, -2
  store i8 %28, ptr %ctrl_hb32, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.then25
  %ctrl_hb.i154 = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %ctrl_hb.i154 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrl_hb.i154, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i.i155 = call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -128, i8 noundef zeroext %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i155)
  %cmp.i.i156 = icmp slt i32 %call.i.i155, 0
  br i1 %cmp.i.i156, label %if.end38.sw.epilog.sink.split_crit_edge, label %if.end38.sw.epilog_crit_edge

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end38.sw.epilog.sink.split_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %if.end8
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %val, align 2
  %35 = call i16 @llvm.umin.i16(i16 %34, i16 2047)
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %val, align 2
  %settling_cycles = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 10
  %37 = ptrtoint ptr %settling_cycles to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %35, ptr %settling_cycles, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1022, i16 %35)
  %cmp62 = icmp ugt i16 %35, 1022
  br i1 %cmp62, label %if.then64, label %if.else68

if.then64:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  %38 = lshr i16 %35, 2
  %conv67 = or i16 %38, 1536
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv67, ptr %val, align 2
  br label %if.end78

if.else68:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %35)
  %cmp70 = icmp ugt i16 %35, 511
  br i1 %cmp70, label %if.then72, label %if.else68.if.end78_crit_edge

if.else68.if.end78_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  %40 = lshr i16 %35, 1
  %conv76 = or i16 %40, 512
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv76, ptr %val, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %if.else68.if.end78_crit_edge, %if.then64
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %val, align 2
  %dat.sroa.0.0.extract.shift = lshr i16 %43, 8
  %dat.sroa.0.0.extract.trunc = trunc i16 %dat.sroa.0.0.extract.shift to i8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -118, i8 noundef zeroext %dat.sroa.0.0.extract.trunc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end78.sw.epilog.sink.split_crit_edge, label %while.cond.i.1

if.end78.sw.epilog.sink.split_crit_edge:          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

while.cond.i.1:                                   ; preds = %if.end78
  %dat.sroa.7.0.extract.trunc = trunc i16 %43 to i8
  %call.i.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -117, i8 noundef zeroext %dat.sroa.7.0.extract.trunc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %while.cond.i.1.sw.epilog.sink.split_crit_edge, label %while.cond.i.1.sw.epilog_crit_edge

while.cond.i.1.sw.epilog_crit_edge:               ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.cond.i.1.sw.epilog.sink.split_crit_edge:    ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb80:                                          ; preds = %if.end8
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %val, align 2
  %48 = call i16 @llvm.umin.i16(i16 %47, i16 511)
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %val, align 2
  %freq_points = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %freq_points to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %48, ptr %freq_points, align 4
  %dat.sroa.0.0.extract.shift184 = lshr i16 %48, 8
  %dat.sroa.0.0.extract.trunc185 = trunc i16 %dat.sroa.0.0.extract.shift184 to i8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call.i169 = call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -120, i8 noundef zeroext %dat.sroa.0.0.extract.trunc185) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp.i170 = icmp slt i32 %call.i169, 0
  br i1 %cmp.i170, label %sw.bb80.sw.epilog.sink.split_crit_edge, label %while.cond.i165.1

sw.bb80.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

while.cond.i165.1:                                ; preds = %sw.bb80
  %dat.sroa.7.0.extract.trunc186 = trunc i16 %48 to i8
  %call.i169.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %52, i8 noundef zeroext -119, i8 noundef zeroext %dat.sroa.7.0.extract.trunc186) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169.1)
  %cmp.i170.1 = icmp slt i32 %call.i169.1, 0
  br i1 %cmp.i170.1, label %while.cond.i165.1.sw.epilog.sink.split_crit_edge, label %while.cond.i165.1.sw.epilog_crit_edge

while.cond.i165.1.sw.epilog_crit_edge:            ; preds = %while.cond.i165.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.cond.i165.1.sw.epilog.sink.split_crit_edge: ; preds = %while.cond.i165.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %while.cond.i165.1.sw.epilog.sink.split_crit_edge, %sw.bb80.sw.epilog.sink.split_crit_edge, %while.cond.i.1.sw.epilog.sink.split_crit_edge, %if.end78.sw.epilog.sink.split_crit_edge, %if.end38.sw.epilog.sink.split_crit_edge, %if.then15.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.then15.sw.epilog.sink.split_crit_edge ], [ %32, %if.end38.sw.epilog.sink.split_crit_edge ], [ %45, %while.cond.i.1.sw.epilog.sink.split_crit_edge ], [ %45, %if.end78.sw.epilog.sink.split_crit_edge ], [ %52, %while.cond.i165.1.sw.epilog.sink.split_crit_edge ], [ %52, %sw.bb80.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i.i, %if.then15.sw.epilog.sink.split_crit_edge ], [ %call.i.i155, %if.end38.sw.epilog.sink.split_crit_edge ], [ %call.i.1, %while.cond.i.1.sw.epilog.sink.split_crit_edge ], [ %call.i, %if.end78.sw.epilog.sink.split_crit_edge ], [ %call.i169.1, %while.cond.i165.1.sw.epilog.sink.split_crit_edge ], [ %call.i169, %sw.bb80.sw.epilog.sink.split_crit_edge ]
  %dev.i172 = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i172, ptr noundef nonnull @.str.13) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.cond.i165.1.sw.epilog_crit_edge, %while.cond.i.1.sw.epilog_crit_edge, %if.end38.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %for.inc.2.sw.epilog_crit_edge, %if.then15.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.else.sw.epilog_crit_edge ], [ -22, %if.end8.sw.epilog_crit_edge ], [ 0, %if.then15.sw.epilog_crit_edge ], [ 0, %if.end38.sw.epilog_crit_edge ], [ -22, %for.inc.2.sw.epilog_crit_edge ], [ 0, %while.cond.i.1.sw.epilog_crit_edge ], [ 0, %while.cond.i165.1.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @iio_device_release_direct_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool108.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool108.not, i32 %len, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_show_frequency(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %address, align 8
  %conv = trunc i64 %5 to i8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.ad5933_i2c_read.exit.thread_crit_edge, label %if.end.i

if.end.ad5933_i2c_read.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5933_i2c_read.exit.thread

ad5933_i2c_read.exit.thread:                      ; preds = %if.end.i.1.ad5933_i2c_read.exit.thread_crit_edge, %if.end.i.ad5933_i2c_read.exit.thread_crit_edge, %if.end.ad5933_i2c_read.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.end.ad5933_i2c_read.exit.thread_crit_edge ], [ %call.i.1, %if.end.i.ad5933_i2c_read.exit.thread_crit_edge ], [ %call.i.2, %if.end.i.1.ad5933_i2c_read.exit.thread_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15) #10
  tail call void @iio_device_release_direct_mode(ptr noundef %add.ptr.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %inc.i = add i8 %conv, 1
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %inc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %if.end.i.ad5933_i2c_read.exit.thread_crit_edge, label %if.end.i.1

if.end.i.ad5933_i2c_read.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5933_i2c_read.exit.thread

if.end.i.1:                                       ; preds = %if.end.i
  %inc.i.1 = add i8 %conv, 2
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %inc.i.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %if.end.i.1.ad5933_i2c_read.exit.thread_crit_edge, label %if.end.i.2

if.end.i.1.ad5933_i2c_read.exit.thread_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5933_i2c_read.exit.thread

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iio_device_release_direct_mode(ptr noundef %add.ptr.i) #7
  %dat.sroa.6.0.insert.ext = and i32 %call.i.2, 255
  %dat.sroa.5.0.insert.ext = shl i32 %call.i.1, 8
  %dat.sroa.5.0.insert.shift = and i32 %dat.sroa.5.0.insert.ext, 65280
  %dat.sroa.5.0.insert.insert = or i32 %dat.sroa.6.0.insert.ext, %dat.sroa.5.0.insert.shift
  %dat.sroa.4.0.insert.ext = shl i32 %call.i, 16
  %dat.sroa.4.0.insert.shift = and i32 %dat.sroa.4.0.insert.ext, 16711680
  %dat.sroa.4.0.insert.insert = or i32 %dat.sroa.5.0.insert.insert, %dat.sroa.4.0.insert.shift
  %conv7 = zext i32 %dat.sroa.4.0.insert.insert to i64
  %mclk_hz = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %mclk_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_hz, align 4
  %div291 = lshr i32 %7, 2
  %conv8 = zext i32 %div291 to i64
  %mul = mul nuw nsw i64 %conv8, %conv7
  %shr = lshr i64 %mul, 27
  %extract.t = trunc i64 %shr to i32
  %call200 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %extract.t)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.2, %ad5933_i2c_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call200, %if.end.i.2 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i.lcssa, %ad5933_i2c_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_store_frequency(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !109
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %4)
  %cmp = icmp ugt i32 %4, 100000
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @iio_device_claim_direct_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %address, align 8
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %call9 = call fastcc i32 @ad5933_set_freq(ptr noundef %1, i32 noundef %conv, i32 noundef %8)
  call void @iio_device_release_direct_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %len.call9 = select i1 %tobool10.not, i32 %len, i32 %call9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call9, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5933_set_freq(ptr nocapture noundef %st, i32 noundef %reg, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %freq to i64
  %mul = shl nuw nsw i64 %conv, 27
  %mclk_hz = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 5
  %0 = ptrtoint ptr %mclk_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk_hz, align 4
  %div274 = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %freq)
  %cmp168 = icmp ult i32 %freq, 32
  br i1 %cmp168, label %if.then172, label %if.else178, !prof !113

if.then172:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv173 = trunc i64 %mul to i32
  %div176 = udiv i32 %conv173, %div274
  br label %if.end182

if.else178:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div274, i64 %mul) #11, !srcloc !110
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t300 = trunc i64 %asmresult1.i to i32
  br label %if.end182

if.end182:                                        ; preds = %if.else178, %if.then172
  %freqreg.0.off0 = phi i32 [ %div176, %if.then172 ], [ %extract.t300, %if.else178 ]
  %3 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %reg, label %if.end182.cleanup_crit_edge [
    i32 130, label %sw.bb
    i32 133, label %sw.bb184
  ]

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  %freq_start = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 12
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  %freq_inc = getelementptr inbounds %struct.ad5933_state, ptr %st, i32 0, i32 13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb184, %sw.bb
  %freq_inc.sink = phi ptr [ %freq_inc, %sw.bb184 ], [ %freq_start, %sw.bb ]
  %4 = ptrtoint ptr %freq_inc.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %freq, ptr %freq_inc.sink, align 4
  %dat.sroa.4.0.extract.shift = lshr i32 %freqreg.0.off0, 16
  %dat.sroa.4.0.extract.trunc = trunc i32 %dat.sroa.4.0.extract.shift to i8
  %dat.sroa.6.0.extract.trunc = trunc i32 %freqreg.0.off0 to i8
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 4
  %conv186 = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %conv186, i8 noundef zeroext %dat.sroa.4.0.extract.trunc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.do.end.i_crit_edge, label %while.cond.i.1

sw.epilog.do.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

while.cond.i.1:                                   ; preds = %sw.epilog
  %inc.i = add nuw nsw i8 %conv186, 1
  %dat.sroa.5.0.extract.shift = lshr i32 %freqreg.0.off0, 8
  %dat.sroa.5.0.extract.trunc = trunc i32 %dat.sroa.5.0.extract.shift to i8
  %call.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %inc.i, i8 noundef zeroext %dat.sroa.5.0.extract.trunc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %while.cond.i.1.do.end.i_crit_edge, label %while.cond.i.2

while.cond.i.1.do.end.i_crit_edge:                ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

while.cond.i.2:                                   ; preds = %while.cond.i.1
  %inc.i.1 = add nuw nsw i8 %conv186, 2
  %call.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext %inc.i.1, i8 noundef zeroext %dat.sroa.6.0.extract.trunc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %while.cond.i.2.do.end.i_crit_edge, label %while.cond.i.2.cleanup_crit_edge

while.cond.i.2.cleanup_crit_edge:                 ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.i.2.do.end.i_crit_edge:                ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %while.cond.i.2.do.end.i_crit_edge, %while.cond.i.1.do.end.i_crit_edge, %sw.epilog.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %sw.epilog.do.end.i_crit_edge ], [ %call.i.1, %while.cond.i.1.do.end.i_crit_edge ], [ %call.i.2, %while.cond.i.2.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %while.cond.i.2.cleanup_crit_edge, %if.end182.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end182.cleanup_crit_edge ], [ %call.i.lcssa, %do.end.i ], [ 0, %while.cond.i.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_ring_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %2 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %masklength, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %5, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp4.i = icmp eq i32 %call.i, %3
  br i1 %cmp4.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_lb.i = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %ctrl_lb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_lb.i, align 1
  %8 = or i8 %7, 16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext -127, i8 noundef zeroext %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %ad5933_reset.exit.thread, label %if.end4

ad5933_reset.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ctrl_hb.i = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl_hb.i, align 4
  %or4.i = or i8 %12, -80
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -128, i8 noundef zeroext %or4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp.i.i25 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp.i.i25, label %ad5933_cmd.exit.thread, label %if.end8

ad5933_cmd.exit.thread:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i26, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl_hb.i, align 4
  %or4.i30 = or i8 %16, 16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -128, i8 noundef zeroext %or4.i30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i32 = icmp slt i32 %call.i.i31, 0
  br i1 %cmp.i.i32, label %ad5933_cmd.exit36.thread, label %if.end12

ad5933_cmd.exit36.thread:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i33 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i33, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %ad5933_cmd.exit36.thread, %ad5933_cmd.exit.thread, %ad5933_reset.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ad5933_reset.exit.thread ], [ %call.i.i24, %ad5933_cmd.exit.thread ], [ %call.i.i31, %ad5933_cmd.exit36.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_ring_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %work = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5933_ring_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %work = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  %ctrl_hb.i = getelementptr inbounds %struct.ad5933_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_hb.i, align 4
  %or4.i = or i8 %3, -96
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext %or4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %entry.ad5933_cmd.exit_crit_edge

entry.ad5933_cmd.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5933_cmd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13) #10
  br label %ad5933_cmd.exit

ad5933_cmd.exit:                                  ; preds = %do.end.i.i, %entry.ad5933_cmd.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ 0, %entry.ad5933_cmd.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_ad5933__296_788_ad5933_driver_init6, !1, !"__initcall__kmod_ad5933__296_788_ad5933_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 788, i32 1}
!2 = !{ptr @__exitcall_ad5933_driver_exit, !1, !"__exitcall_ad5933_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 790, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 791, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 792, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 782, i32 11}
!12 = !{ptr @ad5933_driver, !13, !"ad5933_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 780, i32 26}
!14 = !{ptr @ad5933_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 693, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 695, i32 45}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 701, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ad5933_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ad5933_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 715, i32 40}
!29 = !{ptr @ad5933_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 742, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ad5933_probe.__key.11, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 133, i32 4}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ad5933_i2c_write._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ad5933_i2c_write._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 147, i32 4}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ad5933_i2c_read._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ad5933_i2c_read._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ad5933_info, !45, !"ad5933_info", i1 false, i1 false}
!45 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 541, i32 30}
!46 = !{ptr @ad5933_attribute_group, !47, !"ad5933_attribute_group", i1 false, i1 false}
!47 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 494, i32 37}
!48 = !{ptr @ad5933_attributes, !49, !"ad5933_attributes", i1 false, i1 false}
!49 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 482, i32 26}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 446, i32 8}
!52 = !{ptr @iio_dev_attr_out_altvoltage0_raw, !51, !"iio_dev_attr_out_altvoltage0_raw", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 340, i32 22}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 344, i32 22}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 349, i32 22}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 352, i32 22}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 354, i32 10}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 354, i32 16}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 357, i32 22}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 451, i32 8}
!69 = !{ptr @iio_dev_attr_out_altvoltage0_scale_available, !68, !"iio_dev_attr_out_altvoltage0_scale_available", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 318, i32 8}
!72 = !{ptr @iio_dev_attr_out_altvoltage0_frequency_start, !71, !"iio_dev_attr_out_altvoltage0_frequency_start", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 323, i32 8}
!75 = !{ptr @iio_dev_attr_out_altvoltage0_frequency_increment, !74, !"iio_dev_attr_out_altvoltage0_frequency_increment", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 466, i32 8}
!78 = !{ptr @iio_dev_attr_out_altvoltage0_frequency_points, !77, !"iio_dev_attr_out_altvoltage0_frequency_points", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 471, i32 8}
!81 = !{ptr @iio_dev_attr_out_altvoltage0_settling_cycles, !80, !"iio_dev_attr_out_altvoltage0_settling_cycles", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 456, i32 8}
!84 = !{ptr @iio_dev_attr_in_voltage0_scale, !83, !"iio_dev_attr_in_voltage0_scale", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 461, i32 8}
!87 = !{ptr @iio_dev_attr_in_voltage0_scale_available, !86, !"iio_dev_attr_in_voltage0_scale_available", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 122, i32 2}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 123, i32 2}
!92 = !{ptr @ad5933_channels, !93, !"ad5933_channels", i1 false, i1 false}
!93 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 118, i32 35}
!94 = !{ptr @ad5933_ring_setup_ops, !95, !"ad5933_ring_setup_ops", i1 false, i1 false}
!95 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 599, i32 42}
!96 = !{ptr @ad5933_of_match, !97, !"ad5933_of_match", i1 false, i1 false}
!97 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 772, i32 34}
!98 = !{ptr @ad5933_id, !99, !"ad5933_id", i1 false, i1 false}
!99 = !{!"../drivers/staging/iio/impedance-analyzer/ad5933.c", i32 764, i32 35}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 2148648276, i64 2148648556, i64 2148648890, i64 2148649224}
!111 = !{i64 2155611238}
!112 = !{i64 2155611080}
!113 = !{!"branch_weights", i32 2000, i32 1}
