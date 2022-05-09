; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/adc/ad7280a.c_pt.bc'
source_filename = "../drivers/staging/iio/adc/ad7280a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ad7280_platform_data = type { i32, i32, i32, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.ad7280_state = type { ptr, ptr, ptr, i32, i32, i32, [256 x i8], i8, i8, i8, i8, i8, i8, [8 x i8], %struct.mutex, [124 x i8], [2 x i32], [120 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }

@__initcall__kmod_ad7280a__238_1040_ad7280_driver_init6 = internal global ptr @ad7280_driver_init, section ".initcall6.init", align 4
@ad7280_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7280_id, ptr @ad7280_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7280_driver_exit = internal global ptr @ad7280_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [64 x i8] c"ad7280a.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [43 x i8] c"ad7280a.description=Analog Devices AD7280A\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [45 x i8] c"ad7280a.file=drivers/staging/iio/adc/ad7280a\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [23 x i8] c"ad7280a.license=GPL v2\00", section ".modinfo", align 1
@ad7280_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7280a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7280\00", [25 x i8] zeroinitializer }, align 32
@__const.ad7280_probe.t_acq_ns = private unnamed_addr constant [4 x i16] [i16 465, i16 1010, i16 1460, i16 1890], align 2
@__const.ad7280_probe.n_avg = private unnamed_addr constant [4 x i16] [i16 1, i16 2, i16 4, i16 8], align 2
@ad7280_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad7793_default_pdata = internal constant { %struct.ad7280_platform_data, [16 x i8] } { %struct.ad7280_platform_data { i32 0, i32 0, i32 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@ad7280_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @ad7280_event_attrs_group, ptr @ad7280_attrs_group, ptr @ad7280_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7280_event_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7280_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7280_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7280_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7280_event_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iio_dev_attr_in_thresh_low_value, ptr @iio_dev_attr_in_thresh_high_value, ptr @iio_dev_attr_in_temp_thresh_low_value, ptr @iio_dev_attr_in_temp_thresh_high_value, ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_thresh_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7280_read_channel_config, ptr @ad7280_write_channel_config }, i64 16, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_thresh_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7280_read_channel_config, ptr @ad7280_write_channel_config }, i64 15, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_thresh_low_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7280_read_channel_config, ptr @ad7280_write_channel_config }, i64 18, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_temp_thresh_high_value = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7280_read_channel_config, ptr @ad7280_write_channel_config }, i64 17, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"in_voltage-voltage_thresh_low_value\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"in_voltage-voltage_thresh_high_value\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_temp_thresh_low_value\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_temp_thresh_high_value\00", [38 x i8] zeroinitializer }, align 32
@ad7280_attributes = internal global { [97 x ptr], [124 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in%d-in%d_balance_switch_en\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"in%d-in%d_balance_timer\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 64, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 64, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 64, i64 15, i64 16, i64 17, i64 18]
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"ad7280_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1033, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"ad7280_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1027, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1035, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 934, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"ad7793_default_pdata\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 912, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"ad7280_info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 906, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"ad7280_event_attrs_group\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 865, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"ad7280_attrs_group\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 499, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"ad7280_event_attributes\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 857, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [33 x i8] c"iio_dev_attr_in_thresh_low_value\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [34 x i8] c"iio_dev_attr_in_thresh_high_value\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_in_temp_thresh_low_value\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [39 x i8] c"iio_dev_attr_in_temp_thresh_high_value\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 831, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 710, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 838, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 845, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 851, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"ad7280_attributes\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 496, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 607, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 407, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [37 x i8] c"../drivers/staging/iio/adc/ad7280a.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 623, i32 9 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_ad7280_driver_exit, ptr @__initcall__kmod_ad7280a__238_1040_ad7280_driver_init6, ptr @ad7280_driver_exit, ptr @ad7280_driver, ptr @ad7280_id, ptr @.str, ptr @ad7280_probe.__key, ptr @.str.1, ptr @ad7793_default_pdata, ptr @ad7280_info, ptr @ad7280_event_attrs_group, ptr @ad7280_attrs_group, ptr @ad7280_event_attributes, ptr @iio_dev_attr_in_thresh_low_value, ptr @iio_dev_attr_in_thresh_high_value, ptr @iio_dev_attr_in_temp_thresh_low_value, ptr @iio_dev_attr_in_temp_thresh_high_value, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad7280_attributes, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7793_default_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_event_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_event_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_thresh_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_thresh_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_thresh_low_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_temp_thresh_high_value to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7280_attributes to i32), i32 388, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7280_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7280_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7280_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i114.i = alloca %struct.spi_message, align 4
  %t.i.i115.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i80.i = alloca %struct.spi_message, align 4
  %t.i.i81.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i51.i = alloca %struct.spi_message, align 4
  %t.i.i52.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %3, align 128
  %lock = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad7280_probe.__key) #8
  %tobool5.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %tobool5.not, ptr @ad7793_default_pdata, ptr %1
  %crc_tab = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 6
  tail call void @crc8_populate_msb(ptr noundef %crc_tab, i8 noundef zeroext 47) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 700000, ptr %max_speed_hz, align 8
  %9 = load ptr, ptr %3, align 128
  %mode = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode, align 8
  %11 = load ptr, ptr %3, align 128
  %call11 = tail call i32 @spi_setup(ptr noundef %11) #8
  %12 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spec.store.select, align 4
  %.tr = trunc i32 %13 to i8
  %14 = shl i8 %.tr, 5
  %conv = and i8 %14, 96
  %ctrl_lb = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %ctrl_lb to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %ctrl_lb, align 1
  %conversion_averaging = getelementptr inbounds %struct.ad7280_platform_data, ptr %spec.store.select, i32 0, i32 1
  %16 = ptrtoint ptr %conversion_averaging to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %conversion_averaging, align 4
  %and12 = shl i32 %17, 1
  %shl13 = and i32 %and12, 6
  %thermistor_term_en = getelementptr inbounds %struct.ad7280_platform_data, ptr %spec.store.select, i32 0, i32 3
  %18 = ptrtoint ptr %thermistor_term_en to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %thermistor_term_en, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not = icmp eq i8 %19, 0
  %cond = select i1 %tobool14.not, i32 0, i32 8
  %or = or i32 %cond, %shl13
  %conv16 = trunc i32 %or to i8
  %ctrl_hb = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %ctrl_hb, align 8
  %21 = or i8 %14, -107
  %or.i = zext i8 %21 to i32
  %and.i.i = shl nuw nsw i32 %or.i, 13
  %or5.i.i = or i32 %and.i.i, 29364224
  %shr.i.i = lshr exact i32 %or5.i.i, 11
  %22 = ptrtoint ptr %crc_tab to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %crc_tab, align 1
  %conv.i.i.i = zext i8 %23 to i32
  %or3.i.i = lshr i32 %or.i, 6
  %shr1.i.i.i = or i32 %or3.i.i, 56
  %xor.i.i.i = xor i32 %shr1.i.i.i, %conv.i.i.i
  %arrayidx3.i.i.i = getelementptr i8, ptr %crc_tab, i32 %xor.i.i.i
  %24 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3.i.i.i, align 1
  %26 = trunc i32 %shr.i.i to i8
  %conv7.i.i.i = xor i8 %25, %26
  %conv6.i.i = zext i8 %conv7.i.i.i to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i, 3
  %or8.i.i = or i32 %shl7.i.i, %or5.i.i
  %or9.i.i = or i32 %or8.i.i, 2
  %buf.i.i = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 16
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or9.i.i, ptr %buf.i.i, align 128
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %30 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 92)
  %32 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %34 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.ad7280_write.exit.i_crit_edge

if.end.ad7280_write.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad7280_write.exit.i

ad7280_write.exit.i:                              ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.ad7280_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %29, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ad7280_write.exit.i.ad7280_chain_setup.exit_crit_edge

ad7280_write.exit.i.ad7280_chain_setup.exit_crit_edge: ; preds = %ad7280_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_chain_setup.exit

if.end.i:                                         ; preds = %ad7280_write.exit.i
  %44 = ptrtoint ptr %ctrl_lb to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctrl_lb, align 1
  %46 = or i8 %45, 21
  %or3.i = zext i8 %46 to i32
  %and.i53.i = shl nuw nsw i32 %or3.i, 13
  %or5.i56.i = or i32 %and.i53.i, 29364224
  %shr.i58.i = lshr exact i32 %or5.i56.i, 11
  %47 = ptrtoint ptr %crc_tab to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %crc_tab, align 1
  %conv.i.i59.i = zext i8 %48 to i32
  %or3.i55.i = lshr i32 %or3.i, 6
  %shr1.i.i60.i = or i32 %or3.i55.i, 56
  %xor.i.i62.i = xor i32 %shr1.i.i60.i, %conv.i.i59.i
  %arrayidx3.i.i63.i = getelementptr i8, ptr %crc_tab, i32 %xor.i.i62.i
  %49 = ptrtoint ptr %arrayidx3.i.i63.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx3.i.i63.i, align 1
  %51 = trunc i32 %shr.i58.i to i8
  %conv7.i.i64.i = xor i8 %50, %51
  %conv6.i65.i = zext i8 %conv7.i.i64.i to i32
  %shl7.i66.i = shl nuw nsw i32 %conv6.i65.i, 3
  %or8.i67.i = or i32 %shl7.i66.i, %or5.i56.i
  %or9.i68.i = or i32 %or8.i67.i, 2
  %52 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or9.i68.i, ptr %buf.i.i, align 128
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i52.i) #8
  %55 = getelementptr inbounds i8, ptr %t.i.i52.i, i32 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 92)
  %57 = ptrtoint ptr %t.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i, ptr %t.i.i52.i, align 4
  %len1.i.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i52.i, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %len1.i.i70.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i51.i) #8
  %59 = getelementptr inbounds i8, ptr %msg.i.i.i51.i, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %msg.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %msg.i.i.i51.i, ptr %msg.i.i.i51.i, align 4
  %prev.i.i.i.i.i.i.i71.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i51.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i51.i, ptr %prev.i.i.i.i.i.i.i71.i, align 4
  %resources.i.i.i.i.i.i72.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i51.i, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i.i.i72.i, ptr %resources.i.i.i.i.i.i72.i, align 4
  %prev.i2.i.i.i.i.i.i73.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i51.i, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i.i.i72.i, ptr %prev.i2.i.i.i.i.i.i73.i, align 4
  %transfer_list.i.i.i.i.i74.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i52.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i75.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i74.i, ptr noundef nonnull %msg.i.i.i51.i, ptr noundef nonnull %msg.i.i.i51.i) #8
  br i1 %call.i.i.i.i.i.i.i75.i, label %if.end.i.i.i.i.i.i.i77.i, label %if.end.i.ad7280_write.exit79.i_crit_edge

if.end.i.ad7280_write.exit79.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit79.i

if.end.i.i.i.i.i.i.i77.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %transfer_list.i.i.i.i.i74.i, ptr %prev.i.i.i.i.i.i.i71.i, align 4
  %66 = ptrtoint ptr %transfer_list.i.i.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i.i.i51.i, ptr %transfer_list.i.i.i.i.i74.i, align 4
  %prev3.i.i.i.i.i.i.i76.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i52.i, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i51.i, ptr %prev3.i.i.i.i.i.i.i76.i, align 4
  %68 = ptrtoint ptr %msg.i.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %transfer_list.i.i.i.i.i74.i, ptr %msg.i.i.i51.i, align 4
  br label %ad7280_write.exit79.i

ad7280_write.exit79.i:                            ; preds = %if.end.i.i.i.i.i.i.i77.i, %if.end.i.ad7280_write.exit79.i_crit_edge
  %call.i.i.i78.i = call i32 @spi_sync(ptr noundef %54, ptr noundef nonnull %msg.i.i.i51.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i51.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i52.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i78.i)
  %tobool5.not.i = icmp eq i32 %call.i.i.i78.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %ad7280_write.exit79.i.error_power_down.i_crit_edge

ad7280_write.exit79.i.error_power_down.i_crit_edge: ; preds = %ad7280_write.exit79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_down.i

if.end7.i:                                        ; preds = %ad7280_write.exit79.i
  %69 = ptrtoint ptr %crc_tab to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %crc_tab, align 1
  %71 = xor i8 %70, 112
  %xor.i.i84.i = zext i8 %71 to i32
  %arrayidx3.i.i85.i = getelementptr i8, ptr %crc_tab, i32 %xor.i.i84.i
  %72 = ptrtoint ptr %arrayidx3.i.i85.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx3.i.i85.i, align 1
  %conv7.i.i86.i = xor i8 %73, -30
  %conv6.i87.i = zext i8 %conv7.i.i86.i to i32
  %shl7.i88.i = shl nuw nsw i32 %conv6.i87.i, 3
  %or9.i90.i = or i32 %shl7.i88.i, 59183106
  %74 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or9.i90.i, ptr %buf.i.i, align 128
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i81.i) #8
  %77 = getelementptr inbounds i8, ptr %t.i.i81.i, i32 4
  %78 = call ptr @memset(ptr %77, i32 0, i32 92)
  %79 = ptrtoint ptr %t.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf.i.i, ptr %t.i.i81.i, align 4
  %len1.i.i92.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i81.i, i32 0, i32 2
  %80 = ptrtoint ptr %len1.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %len1.i.i92.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i80.i) #8
  %81 = getelementptr inbounds i8, ptr %msg.i.i.i80.i, i32 8
  %82 = call ptr @memset(ptr %81, i32 0, i32 40)
  %83 = ptrtoint ptr %msg.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %msg.i.i.i80.i, ptr %msg.i.i.i80.i, align 4
  %prev.i.i.i.i.i.i.i93.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i80.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i.i.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i.i80.i, ptr %prev.i.i.i.i.i.i.i93.i, align 4
  %resources.i.i.i.i.i.i94.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i80.i, i32 0, i32 10
  %85 = ptrtoint ptr %resources.i.i.i.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %resources.i.i.i.i.i.i94.i, ptr %resources.i.i.i.i.i.i94.i, align 4
  %prev.i2.i.i.i.i.i.i95.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i80.i, i32 0, i32 10, i32 1
  %86 = ptrtoint ptr %prev.i2.i.i.i.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %resources.i.i.i.i.i.i94.i, ptr %prev.i2.i.i.i.i.i.i95.i, align 4
  %transfer_list.i.i.i.i.i96.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i81.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i97.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i96.i, ptr noundef nonnull %msg.i.i.i80.i, ptr noundef nonnull %msg.i.i.i80.i) #8
  br i1 %call.i.i.i.i.i.i.i97.i, label %if.end.i.i.i.i.i.i.i99.i, label %if.end7.i.ad7280_write.exit101.i_crit_edge

if.end7.i.ad7280_write.exit101.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit101.i

if.end.i.i.i.i.i.i.i99.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %prev.i.i.i.i.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %transfer_list.i.i.i.i.i96.i, ptr %prev.i.i.i.i.i.i.i93.i, align 4
  %88 = ptrtoint ptr %transfer_list.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg.i.i.i80.i, ptr %transfer_list.i.i.i.i.i96.i, align 4
  %prev3.i.i.i.i.i.i.i98.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i81.i, i32 0, i32 18, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %msg.i.i.i80.i, ptr %prev3.i.i.i.i.i.i.i98.i, align 4
  %90 = ptrtoint ptr %msg.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %transfer_list.i.i.i.i.i96.i, ptr %msg.i.i.i80.i, align 4
  br label %ad7280_write.exit101.i

ad7280_write.exit101.i:                           ; preds = %if.end.i.i.i.i.i.i.i99.i, %if.end7.i.ad7280_write.exit101.i_crit_edge
  %call.i.i.i100.i = call i32 @spi_sync(ptr noundef %76, ptr noundef nonnull %msg.i.i.i80.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i80.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i81.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i100.i)
  %tobool9.not.i = icmp eq i32 %call.i.i.i100.i, 0
  br i1 %tobool9.not.i, label %for.cond.preheader.i, label %ad7280_write.exit101.i.error_power_down.i_crit_edge

ad7280_write.exit101.i.error_power_down.i_crit_edge: ; preds = %ad7280_write.exit101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_down.i

for.cond.preheader.i:                             ; preds = %ad7280_write.exit101.i
  %91 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %arrayidx2.i.i = getelementptr %struct.ad7280_state, ptr %3, i32 0, i32 16, i32 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %92 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %n.0149.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %93 = call ptr @memset(ptr %91, i32 0, i32 84)
  %94 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i.i, ptr %t.i.i, align 4
  %95 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %arrayidx2.i.i, ptr %rx_buf.i.i, align 4
  %96 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %len.i.i, align 4
  %97 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -134216950, ptr %buf.i.i, align 128
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %100 = call ptr @memset(ptr %92, i32 0, i32 40)
  %101 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %102 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %104 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %for.body.i.spi_sync_transfer.exit.i.i_crit_edge

for.body.i.spi_sync_transfer.exit.i.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %106 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %107 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %108 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %for.body.i.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %99, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end16.i, label %__ad7280_read32.exit.i

__ad7280_read32.exit.i:                           ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %error_power_down.i

if.end16.i:                                       ; preds = %spi_sync_transfer.exit.i.i
  %109 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp17.i = icmp eq i32 %110, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.end20.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %n.0149.i, -1
  br label %ad7280_chain_setup.exit

if.end20.i:                                       ; preds = %if.end16.i
  %shr.i104.i = lshr i32 %110, 10
  %shr.i.i.i = lshr i32 %110, 26
  %arrayidx.i.i.i = getelementptr i8, ptr %crc_tab, i32 %shr.i.i.i
  %111 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i105.i = zext i8 %112 to i32
  %shr1.i.i106.i = lshr i32 %110, 18
  %and2.i.i107.i = and i32 %shr1.i.i106.i, 255
  %xor.i.i108.i = xor i32 %and2.i.i107.i, %conv.i.i105.i
  %arrayidx3.i.i109.i = getelementptr i8, ptr %crc_tab, i32 %xor.i.i108.i
  %113 = ptrtoint ptr %arrayidx3.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx3.i.i109.i, align 1
  %115 = trunc i32 %shr.i104.i to i8
  %conv7.i.i110.i = xor i8 %114, %115
  %shr1.i.i = lshr i32 %110, 2
  %116 = trunc i32 %shr1.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv7.i.i110.i, i8 %116)
  %cmp.not.i.i = icmp eq i8 %conv7.i.i110.i, %116
  br i1 %cmp.not.i.i, label %if.end24.i, label %if.end20.i.error_power_down.i_crit_edge

if.end20.i.error_power_down.i_crit_edge:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_down.i

if.end24.i:                                       ; preds = %if.end20.i
  %shr.i = lshr i32 %110, 27
  %and.i111.i = shl nuw nsw i32 %shr.i, 4
  %and1.i.i = shl nuw nsw i32 %shr.i, 3
  %shl14.i.i = or i32 %and.i111.i, %and1.i.i
  %or.i.i = and i32 %shl14.i.i, 16
  %and3.i.i = and i32 %shr.i, 4
  %and5.i.i = lshr i32 %110, 30
  %shr.i112.i = and i32 %and5.i.i, 1
  %and7.i.i = lshr i32 %110, 31
  %or4.i.i = or i32 %and3.i.i, %and7.i.i
  %or6.i.i = or i32 %or4.i.i, %shr.i112.i
  %or9.i113.i = or i32 %or6.i.i, %or.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0149.i, i32 %or9.i113.i)
  %cmp26.not.i = icmp eq i32 %n.0149.i, %or9.i113.i
  br i1 %cmp26.not.i, label %for.inc.i, label %if.end24.i.error_power_down.i_crit_edge

if.end24.i.error_power_down.i_crit_edge:          ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_down.i

for.inc.i:                                        ; preds = %if.end24.i
  %inc.i = add nuw nsw i32 %n.0149.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.inc.i.error_power_down.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.error_power_down.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_down.i

error_power_down.i:                               ; preds = %for.inc.i.error_power_down.i_crit_edge, %if.end24.i.error_power_down.i_crit_edge, %if.end20.i.error_power_down.i_crit_edge, %__ad7280_read32.exit.i, %ad7280_write.exit101.i.error_power_down.i_crit_edge, %ad7280_write.exit79.i.error_power_down.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i.i78.i, %ad7280_write.exit79.i.error_power_down.i_crit_edge ], [ %call.i.i.i100.i, %ad7280_write.exit101.i.error_power_down.i_crit_edge ], [ %call.i.i.i, %__ad7280_read32.exit.i ], [ -5, %if.end20.i.error_power_down.i_crit_edge ], [ -5, %if.end24.i.error_power_down.i_crit_edge ], [ -14, %for.inc.i.error_power_down.i_crit_edge ]
  %117 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ctrl_hb, align 8
  %119 = or i8 %118, 1
  %or31.i = zext i8 %119 to i32
  %and.i116.i = shl nuw nsw i32 %or31.i, 13
  %or5.i119.i = or i32 %and.i116.i, 27267072
  %shr.i121.i = lshr exact i32 %or5.i119.i, 11
  %120 = ptrtoint ptr %crc_tab to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %crc_tab, align 1
  %conv.i.i122.i = zext i8 %121 to i32
  %or3.i118.i = lshr i32 %or31.i, 6
  %shr1.i.i123.i = or i32 %or3.i118.i, 52
  %xor.i.i125.i = xor i32 %shr1.i.i123.i, %conv.i.i122.i
  %arrayidx3.i.i126.i = getelementptr i8, ptr %crc_tab, i32 %xor.i.i125.i
  %122 = ptrtoint ptr %arrayidx3.i.i126.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx3.i.i126.i, align 1
  %124 = trunc i32 %shr.i121.i to i8
  %conv7.i.i127.i = xor i8 %123, %124
  %conv6.i128.i = zext i8 %conv7.i.i127.i to i32
  %shl7.i129.i = shl nuw nsw i32 %conv6.i128.i, 3
  %or8.i130.i = or i32 %shl7.i129.i, %or5.i119.i
  %or9.i131.i = or i32 %or8.i130.i, 2
  %125 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or9.i131.i, ptr %buf.i.i, align 128
  %126 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i115.i) #8
  %128 = getelementptr inbounds i8, ptr %t.i.i115.i, i32 4
  %129 = call ptr @memset(ptr %128, i32 0, i32 92)
  %130 = ptrtoint ptr %t.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %buf.i.i, ptr %t.i.i115.i, align 4
  %len1.i.i133.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i115.i, i32 0, i32 2
  %131 = ptrtoint ptr %len1.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 4, ptr %len1.i.i133.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i114.i) #8
  %132 = getelementptr inbounds i8, ptr %msg.i.i.i114.i, i32 8
  %133 = call ptr @memset(ptr %132, i32 0, i32 40)
  %134 = ptrtoint ptr %msg.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %msg.i.i.i114.i, ptr %msg.i.i.i114.i, align 4
  %prev.i.i.i.i.i.i.i134.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i114.i, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i.i.i.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %msg.i.i.i114.i, ptr %prev.i.i.i.i.i.i.i134.i, align 4
  %resources.i.i.i.i.i.i135.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i114.i, i32 0, i32 10
  %136 = ptrtoint ptr %resources.i.i.i.i.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %resources.i.i.i.i.i.i135.i, ptr %resources.i.i.i.i.i.i135.i, align 4
  %prev.i2.i.i.i.i.i.i136.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i114.i, i32 0, i32 10, i32 1
  %137 = ptrtoint ptr %prev.i2.i.i.i.i.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %resources.i.i.i.i.i.i135.i, ptr %prev.i2.i.i.i.i.i.i136.i, align 4
  %transfer_list.i.i.i.i.i137.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i115.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i138.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i137.i, ptr noundef nonnull %msg.i.i.i114.i, ptr noundef nonnull %msg.i.i.i114.i) #8
  br i1 %call.i.i.i.i.i.i.i138.i, label %if.end.i.i.i.i.i.i.i140.i, label %error_power_down.i.ad7280_write.exit142.i_crit_edge

error_power_down.i.ad7280_write.exit142.i_crit_edge: ; preds = %error_power_down.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit142.i

if.end.i.i.i.i.i.i.i140.i:                        ; preds = %error_power_down.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %prev.i.i.i.i.i.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %transfer_list.i.i.i.i.i137.i, ptr %prev.i.i.i.i.i.i.i134.i, align 4
  %139 = ptrtoint ptr %transfer_list.i.i.i.i.i137.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %msg.i.i.i114.i, ptr %transfer_list.i.i.i.i.i137.i, align 4
  %prev3.i.i.i.i.i.i.i139.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i115.i, i32 0, i32 18, i32 1
  %140 = ptrtoint ptr %prev3.i.i.i.i.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msg.i.i.i114.i, ptr %prev3.i.i.i.i.i.i.i139.i, align 4
  %141 = ptrtoint ptr %msg.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %transfer_list.i.i.i.i.i137.i, ptr %msg.i.i.i114.i, align 4
  br label %ad7280_write.exit142.i

ad7280_write.exit142.i:                           ; preds = %if.end.i.i.i.i.i.i.i140.i, %error_power_down.i.ad7280_write.exit142.i_crit_edge
  %call.i.i.i141.i = call i32 @spi_sync(ptr noundef %127, ptr noundef nonnull %msg.i.i.i114.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i114.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i115.i) #8
  br label %ad7280_chain_setup.exit

ad7280_chain_setup.exit:                          ; preds = %ad7280_write.exit142.i, %if.then19.i, %ad7280_write.exit.i.ad7280_chain_setup.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %ad7280_write.exit142.i ], [ %sub.i, %if.then19.i ], [ %call.i.i.i.i, %ad7280_write.exit.i.ad7280_chain_setup.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ad7280_chain_setup.exit.cleanup_crit_edge, label %if.end20

ad7280_chain_setup.exit.cleanup_crit_edge:        ; preds = %ad7280_chain_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %ad7280_chain_setup.exit
  %slave_num = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 3
  %142 = ptrtoint ptr %slave_num to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %retval.0.i, ptr %slave_num, align 4
  %143 = mul i32 %retval.0.i, 12
  %mul = add i32 %143, 12
  %scan_cnt = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 4
  %144 = ptrtoint ptr %scan_cnt to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %mul, ptr %scan_cnt, align 16
  %cell_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 9
  %145 = ptrtoint ptr %cell_threshhigh to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -1, ptr %cell_threshhigh, align 2
  %aux_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 11
  %146 = ptrtoint ptr %aux_threshhigh to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %aux_threshhigh, align 4
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7280_sw_power_down, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i165 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i165, label %if.end26, label %if.then.i

if.then.i:                                        ; preds = %if.end20
  %147 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ctrl_hb, align 8
  %149 = or i8 %148, 1
  %or.i.i166 = zext i8 %149 to i32
  %and.i.i.i = shl nuw nsw i32 %or.i.i166, 13
  %or5.i.i.i = or i32 %and.i.i.i, 27267072
  %shr.i.i.i167 = lshr exact i32 %or5.i.i.i, 11
  %150 = ptrtoint ptr %crc_tab to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %crc_tab, align 1
  %conv.i.i.i.i = zext i8 %151 to i32
  %or3.i.i.i = lshr i32 %or.i.i166, 6
  %shr1.i.i.i.i = or i32 %or3.i.i.i, 52
  %xor.i.i.i.i = xor i32 %shr1.i.i.i.i, %conv.i.i.i.i
  %arrayidx3.i.i.i.i = getelementptr i8, ptr %crc_tab, i32 %xor.i.i.i.i
  %152 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx3.i.i.i.i, align 1
  %154 = trunc i32 %shr.i.i.i167 to i8
  %conv7.i.i.i.i = xor i8 %153, %154
  %conv6.i.i.i = zext i8 %conv7.i.i.i.i to i32
  %shl7.i.i.i = shl nuw nsw i32 %conv6.i.i.i, 3
  %or8.i.i.i = or i32 %shl7.i.i.i, %or5.i.i.i
  %or9.i.i.i = or i32 %or8.i.i.i, 2
  %155 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or9.i.i.i, ptr %buf.i.i, align 128
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #8
  %158 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %159 = call ptr @memset(ptr %158, i32 0, i32 92)
  %160 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %161 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 4, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #8
  %162 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %163 = call ptr @memset(ptr %162, i32 0, i32 40)
  %164 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %165 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %166 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %167 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.then.i.devm_add_action_or_reset.exit_crit_edge

if.then.i.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_add_action_or_reset.exit

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %169 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %170 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %171 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.then.i.devm_add_action_or_reset.exit_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %157, ptr noundef nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %172 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %spec.store.select, align 4
  %and28 = and i32 %173, 3
  %arrayidx = getelementptr [4 x i16], ptr @__const.ad7280_probe.t_acq_ns, i32 0, i32 %and28
  %174 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %arrayidx, align 2
  %conv29 = zext i16 %175 to i32
  %176 = ptrtoint ptr %conversion_averaging to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %conversion_averaging, align 4
  %and32 = and i32 %177, 3
  %arrayidx33 = getelementptr [4 x i16], ptr @__const.ad7280_probe.n_avg, i32 0, i32 %and32
  %178 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx33, align 2
  %conv34 = zext i16 %179 to i32
  %180 = mul nuw nsw i32 %conv29, 12
  %mul35 = add nuw nsw i32 %180, 8340
  %mul36 = mul i32 %mul35, %conv34
  %181 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %slave_num, align 4
  %mul42 = mul i32 %182, 250
  %readback_delay_us = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 5
  %sub = sub nsw i32 999, %conv29
  %add43 = add i32 %sub, %mul42
  %sub46 = add i32 %add43, %mul36
  %div = sdiv i32 %sub46, 1000
  %add49 = add nsw i32 %div, 5
  %183 = ptrtoint ptr %readback_delay_us to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add49, ptr %readback_delay_us, align 4
  %call50 = call ptr @spi_get_device_id(ptr noundef %spi) #8
  %name52 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %184 = ptrtoint ptr %name52 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call50, ptr %name52, align 8
  %185 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %call2, align 8
  %186 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %slave_num, align 4
  %188 = mul i32 %187, 12
  %add2.i = add i32 %188, 14
  %189 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add2.i, i32 88) #8
  %190 = extractvalue { i32, i1 } %189, 1
  br i1 %190, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !61

devm_kcalloc.exit.thread.i:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %channels32.i = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 1
  %191 = ptrtoint ptr %channels32.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %channels32.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end26
  %192 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %3, align 128
  %194 = extractvalue { i32, i1 } %189, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %193, i32 noundef %194, i32 noundef 3520) #8
  %channels.i = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 1
  %195 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call5.i.i.i, ptr %channels.i, align 4
  %tobool.not.i169 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i169, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond.preheader.i170

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i170:                          ; preds = %devm_kcalloc.exit.i
  %196 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %slave_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp.not34.i = icmp slt i32 %197, 0
  br i1 %cmp.not34.i, label %for.cond.preheader.i170.ad7280_channel_init.exit_crit_edge, label %for.cond.preheader.i170.for.body.i174_crit_edge

for.cond.preheader.i170.for.body.i174_crit_edge:  ; preds = %for.cond.preheader.i170
  br label %for.body.i174

for.cond.preheader.i170.ad7280_channel_init.exit_crit_edge: ; preds = %for.cond.preheader.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_channel_init.exit

for.body.i174:                                    ; preds = %ad7280_init_dev_channels.exit.i.for.body.i174_crit_edge, %for.cond.preheader.i170.for.body.i174_crit_edge
  %dev.036.i = phi i32 [ %inc.i176, %ad7280_init_dev_channels.exit.i.for.body.i174_crit_edge ], [ 0, %for.cond.preheader.i170.for.body.i174_crit_edge ]
  %cnt.035.i = phi i32 [ %inc.i.i, %ad7280_init_dev_channels.exit.i.for.body.i174_crit_edge ], [ 0, %for.cond.preheader.i170.for.body.i174_crit_edge ]
  %and.i.i.i171 = shl i32 %dev.036.i, 4
  %and1.i.i.i = shl i32 %dev.036.i, 3
  %shl14.i.i.i = or i32 %and.i.i.i171, %and1.i.i.i
  %or.i.i.i = and i32 %shl14.i.i.i, 16
  %and3.i.i.i = and i32 %dev.036.i, 4
  %and5.i.i.i = lshr i32 %dev.036.i, 3
  %shr.i.i.i172 = and i32 %and5.i.i.i, 1
  %and7.i.i.i = lshr i32 %dev.036.i, 4
  %shr8.i.i.i = and i32 %and7.i.i.i, 1
  %or4.i.i.i = or i32 %shr.i.i.i172, %and3.i.i.i
  %or6.i.i.i = or i32 %or4.i.i.i, %shr8.i.i.i
  %or9.i.i.i173 = or i32 %or6.i.i.i, %or.i.i.i
  %shl.i.i = shl nuw nsw i32 %or9.i.i.i173, 8
  %mul2.i.i = mul i32 %dev.036.i, 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i174
  %cnt.1.i = phi i32 [ %cnt.035.i, %for.body.i174 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %ch.020.i.i = phi i32 [ 0, %for.body.i174 ], [ %inc4.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %198 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %channels.i, align 4
  %arrayidx.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ch.020.i.i)
  %cmp1.i.i = icmp ult i32 %ch.020.i.i, 6
  %add.i.i = add i32 %ch.020.i.i, %mul2.i.i
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %arrayidx.i.i, align 4
  %differential.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 19
  %201 = ptrtoint ptr %differential.i.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load.i.i.i = load i8, ptr %differential.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 16
  store i8 %bf.set.i.i.i, ptr %differential.i.i.i, align 4
  %add.i.i.i = add i32 %add.i.i, 1
  %channel2.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 2
  %202 = ptrtoint ptr %channel2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add.i.i.i, ptr %channel2.i.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %add.i.i, -6
  %203 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 9, ptr %arrayidx.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %sub.sink.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub.i.i, %if.else.i.i ]
  %204 = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 1
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %sub.sink.i.i, ptr %204, align 4
  %or.i.i175 = or i32 %ch.020.i.i, %shl.i.i
  %indexed.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 19
  %206 = ptrtoint ptr %indexed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load.i18.i.i = load i8, ptr %indexed.i.i.i, align 4
  %bf.set.i19.i.i = or i8 %bf.load.i18.i.i, 64
  store i8 %bf.set.i19.i.i, ptr %indexed.i.i.i, align 4
  %info_mask_separate.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 6
  %207 = ptrtoint ptr %info_mask_separate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 1, ptr %info_mask_separate.i.i.i, align 4
  %info_mask_shared_by_type.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 8
  %208 = ptrtoint ptr %info_mask_shared_by_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 4, ptr %info_mask_shared_by_type.i.i.i, align 4
  %address.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 3
  %209 = ptrtoint ptr %address.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %or.i.i175, ptr %address.i.i.i, align 4
  %scan_index.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 4
  %210 = ptrtoint ptr %scan_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %cnt.1.i, ptr %scan_index.i.i.i, align 4
  %scan_type.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 5
  %211 = ptrtoint ptr %scan_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 117, ptr %scan_type.i.i.i, align 4
  %realbits.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 5, i32 1
  %212 = ptrtoint ptr %realbits.i.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 12, ptr %realbits.i.i.i, align 1
  %storagebits.i.i.i = getelementptr %struct.iio_chan_spec, ptr %199, i32 %cnt.1.i, i32 5, i32 2
  %213 = ptrtoint ptr %storagebits.i.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 32, ptr %storagebits.i.i.i, align 2
  %inc.i.i = add i32 %cnt.1.i, 1
  %inc4.i.i = add nuw nsw i32 %ch.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc4.i.i, 12
  br i1 %exitcond.not.i.i, label %ad7280_init_dev_channels.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

ad7280_init_dev_channels.exit.i:                  ; preds = %if.end.i.i
  %inc.i176 = add i32 %dev.036.i, 1
  %214 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %slave_num, align 4
  %cmp.not.i = icmp sgt i32 %inc.i176, %215
  br i1 %cmp.not.i, label %for.end.loopexit.i, label %ad7280_init_dev_channels.exit.i.for.body.i174_crit_edge

ad7280_init_dev_channels.exit.i.for.body.i174_crit_edge: ; preds = %ad7280_init_dev_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i174

for.end.loopexit.i:                               ; preds = %ad7280_init_dev_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = mul i32 %inc.i176, 6
  br label %ad7280_channel_init.exit

ad7280_channel_init.exit:                         ; preds = %for.end.loopexit.i, %for.cond.preheader.i170.ad7280_channel_init.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i170.ad7280_channel_init.exit_crit_edge ], [ %inc.i.i, %for.end.loopexit.i ]
  %dev.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i170.ad7280_channel_init.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %216 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %channels.i, align 4
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %arrayidx.i, align 4
  %differential.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 19
  %219 = ptrtoint ptr %differential.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %bf.load.i.i = load i8, ptr %differential.i.i, align 4
  %channel.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 1
  %220 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %channel.i.i, align 4
  %channel2.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 2
  %221 = ptrtoint ptr %channel2.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %dev.0.lcssa.i, ptr %channel2.i.i, align 4
  %address.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 3
  %222 = ptrtoint ptr %address.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 11337728, ptr %address.i.i, align 4
  %bf.set3.i.i = or i8 %bf.load.i.i, 80
  store i8 %bf.set3.i.i, ptr %differential.i.i, align 4
  %info_mask_separate.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 6
  %223 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %info_mask_separate.i.i, align 4
  %info_mask_shared_by_type.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 8
  %224 = ptrtoint ptr %info_mask_shared_by_type.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 4, ptr %info_mask_shared_by_type.i.i, align 4
  %scan_index.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 4
  %225 = ptrtoint ptr %scan_index.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %cnt.0.lcssa.i, ptr %scan_index.i.i, align 4
  %scan_type.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 5
  %226 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 117, ptr %scan_type.i.i, align 4
  %realbits.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 5, i32 1
  %227 = ptrtoint ptr %realbits.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 32, ptr %realbits.i.i, align 1
  %storagebits.i.i = getelementptr %struct.iio_chan_spec, ptr %217, i32 %cnt.0.lcssa.i, i32 5, i32 2
  %228 = ptrtoint ptr %storagebits.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 32, ptr %storagebits.i.i, align 2
  %inc6.i = add i32 %cnt.0.lcssa.i, 1
  %229 = load ptr, ptr %channels.i, align 4
  %arrayidx8.i = getelementptr %struct.iio_chan_spec, ptr %229, i32 %inc6.i
  %230 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 13, ptr %arrayidx8.i, align 4
  %channel.i21.i = getelementptr %struct.iio_chan_spec, ptr %229, i32 %inc6.i, i32 1
  %231 = ptrtoint ptr %channel.i21.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 -1, ptr %channel.i21.i, align 4
  %scan_index.i22.i = getelementptr %struct.iio_chan_spec, ptr %229, i32 %inc6.i, i32 4
  %232 = ptrtoint ptr %scan_index.i22.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %inc6.i, ptr %scan_index.i22.i, align 4
  %scan_type.i23.i = getelementptr %struct.iio_chan_spec, ptr %229, i32 %inc6.i, i32 5
  %233 = ptrtoint ptr %scan_type.i23.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 115, ptr %scan_type.i23.i, align 4
  %realbits.i24.i = getelementptr %struct.iio_chan_spec, ptr %229, i32 %inc6.i, i32 5, i32 1
  %234 = ptrtoint ptr %realbits.i24.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 64, ptr %realbits.i24.i, align 1
  %storagebits.i25.i = getelementptr %struct.iio_chan_spec, ptr %229, i32 %inc6.i, i32 5, i32 2
  %235 = ptrtoint ptr %storagebits.i25.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 64, ptr %storagebits.i25.i, align 2
  %add9.i = add i32 %cnt.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i)
  %cmp54 = icmp slt i32 %add9.i, 0
  br i1 %cmp54, label %ad7280_channel_init.exit.cleanup_crit_edge, label %if.end57

ad7280_channel_init.exit.cleanup_crit_edge:       ; preds = %ad7280_channel_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %ad7280_channel_init.exit
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %236 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %add9.i, ptr %num_channels, align 4
  %237 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %channels.i, align 4
  %channels58 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %239 = ptrtoint ptr %channels58 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %238, ptr %channels58, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %240 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @ad7280_info, ptr %info, align 8
  %241 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %slave_num, align 4
  %243 = mul i32 %242, 336
  %mul2.i = add i32 %243, 336
  %244 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul2.i, i32 2) #8
  %245 = extractvalue { i32, i1 } %244, 1
  br i1 %245, label %devm_kcalloc.exit.thread.i179, label %devm_kcalloc.exit.i182, !prof !61

devm_kcalloc.exit.thread.i179:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %iio_attr25.i = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 2
  %246 = ptrtoint ptr %iio_attr25.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %iio_attr25.i, align 8
  br label %cleanup

devm_kcalloc.exit.i182:                           ; preds = %if.end57
  %247 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %3, align 128
  %249 = extractvalue { i32, i1 } %244, 0
  %call5.i.i.i180 = call noalias ptr @devm_kmalloc(ptr noundef %248, i32 noundef %249, i32 noundef 3520) #8
  %iio_attr.i = getelementptr inbounds %struct.ad7280_state, ptr %3, i32 0, i32 2
  %250 = ptrtoint ptr %iio_attr.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call5.i.i.i180, ptr %iio_attr.i, align 8
  %tobool.not.i181 = icmp eq ptr %call5.i.i.i180, null
  br i1 %tobool.not.i181, label %devm_kcalloc.exit.i182.cleanup_crit_edge, label %for.cond.preheader.i183

devm_kcalloc.exit.i182.cleanup_crit_edge:         ; preds = %devm_kcalloc.exit.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i183:                          ; preds = %devm_kcalloc.exit.i182
  %251 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %slave_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp.not31.i = icmp slt i32 %252, 0
  br i1 %cmp.not31.i, label %for.cond.preheader.i183.if.end63_crit_edge, label %for.cond.preheader.i183.for.body.i197_crit_edge

for.cond.preheader.i183.for.body.i197_crit_edge:  ; preds = %for.cond.preheader.i183
  br label %for.body.i197

for.cond.preheader.i183.if.end63_crit_edge:       ; preds = %for.cond.preheader.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

for.body.i197:                                    ; preds = %for.inc.i212.for.body.i197_crit_edge, %for.cond.preheader.i183.for.body.i197_crit_edge
  %dev.033.i = phi i32 [ %inc.i210, %for.inc.i212.for.body.i197_crit_edge ], [ 0, %for.cond.preheader.i183.for.body.i197_crit_edge ]
  %cnt.032.i = phi i32 [ %inc19.i.i, %for.inc.i212.for.body.i197_crit_edge ], [ 0, %for.cond.preheader.i183.for.body.i197_crit_edge ]
  %253 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %3, align 128
  %and.i.i.i184 = shl i32 %dev.033.i, 4
  %and1.i.i.i185 = shl i32 %dev.033.i, 3
  %shl14.i.i.i186 = or i32 %and.i.i.i184, %and1.i.i.i185
  %or.i.i.i187 = and i32 %shl14.i.i.i186, 16
  %and3.i.i.i188 = and i32 %dev.033.i, 4
  %and5.i.i.i189 = lshr i32 %dev.033.i, 3
  %shr.i.i.i190 = and i32 %and5.i.i.i189, 1
  %and7.i.i.i191 = lshr i32 %dev.033.i, 4
  %shr8.i.i.i192 = and i32 %and7.i.i.i191, 1
  %or4.i.i.i193 = or i32 %shr.i.i.i190, %and3.i.i.i188
  %or6.i.i.i194 = or i32 %or4.i.i.i193, %shr8.i.i.i192
  %or9.i.i.i195 = or i32 %or6.i.i.i194, %or.i.i.i187
  %shl.i.i196 = shl nuw nsw i32 %or9.i.i.i195, 8
  %mul.i.i = mul i32 %dev.033.i, 6
  br label %for.body.i.i206

for.body.i.i206:                                  ; preds = %if.end15.i.i.for.body.i.i206_crit_edge, %for.body.i197
  %cnt.1.i198 = phi i32 [ %cnt.032.i, %for.body.i197 ], [ %inc19.i.i, %if.end15.i.i.for.body.i.i206_crit_edge ]
  %ch.071.i.i = phi i32 [ 0, %for.body.i197 ], [ %inc20.i.i, %if.end15.i.i.for.body.i.i206_crit_edge ]
  %255 = ptrtoint ptr %iio_attr.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %iio_attr.i, align 8
  %arrayidx.i.i199 = getelementptr %struct.iio_dev_attr, ptr %256, i32 %cnt.1.i198
  %or.i.i200 = or i32 %ch.071.i.i, %shl.i.i196
  %add.i.i201 = add i32 %ch.071.i.i, %mul.i.i
  %conv.i.i.i202 = zext i32 %or.i.i200 to i64
  %address.i.i.i203 = getelementptr %struct.iio_dev_attr, ptr %256, i32 %cnt.1.i198, i32 1
  %257 = ptrtoint ptr %address.i.i.i203 to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 %conv.i.i.i202, ptr %address.i.i.i203, align 8
  %mode.i.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i199, i32 0, i32 1
  %258 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 420, ptr %mode.i.i.i, align 4
  %show.i.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i.i199, i32 0, i32 1
  %259 = ptrtoint ptr %show.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @ad7280_show_balance_sw, ptr %show.i.i.i, align 4
  %store.i.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i.i199, i32 0, i32 2
  %260 = ptrtoint ptr %store.i.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @ad7280_store_balance_sw, ptr %store.i.i.i, align 8
  %add.i.i.i204 = add i32 %add.i.i201, 1
  %call.i.i.i205 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %254, i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %add.i.i201, i32 noundef %add.i.i.i204) #8
  %261 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call.i.i.i205, ptr %arrayidx.i.i199, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i205, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i206.cleanup_crit_edge, label %if.end.i.i208

for.body.i.i206.cleanup_crit_edge:                ; preds = %for.body.i.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i208:                                    ; preds = %for.body.i.i206
  %arrayidx5.i.i = getelementptr [97 x ptr], ptr @ad7280_attributes, i32 0, i32 %cnt.1.i198
  %262 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %arrayidx.i.i199, ptr %arrayidx5.i.i, align 4
  %inc.i.i207 = add i32 %cnt.1.i198, 1
  %263 = ptrtoint ptr %iio_attr.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %iio_attr.i, align 8
  %arrayidx7.i.i = getelementptr %struct.iio_dev_attr, ptr %264, i32 %inc.i.i207
  %add10.i.i = add nuw nsw i32 %ch.071.i.i, 21
  %or11.i.i = or i32 %add10.i.i, %shl.i.i196
  %conv.i62.i.i = zext i32 %or11.i.i to i64
  %address.i63.i.i = getelementptr %struct.iio_dev_attr, ptr %264, i32 %inc.i.i207, i32 1
  %265 = ptrtoint ptr %address.i63.i.i to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %conv.i62.i.i, ptr %address.i63.i.i, align 8
  %mode.i64.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx7.i.i, i32 0, i32 1
  %266 = ptrtoint ptr %mode.i64.i.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 420, ptr %mode.i64.i.i, align 4
  %show.i65.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx7.i.i, i32 0, i32 1
  %267 = ptrtoint ptr %show.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr @ad7280_show_balance_timer, ptr %show.i65.i.i, align 4
  %store.i66.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx7.i.i, i32 0, i32 2
  %268 = ptrtoint ptr %store.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @ad7280_store_balance_timer, ptr %store.i66.i.i, align 8
  %call.i68.i.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %254, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %add.i.i201, i32 noundef %add.i.i.i204) #8
  %269 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call.i68.i.i, ptr %arrayidx7.i.i, align 8
  %tobool.not.i69.i.i = icmp eq ptr %call.i68.i.i, null
  br i1 %tobool.not.i69.i.i, label %if.end.i.i208.cleanup_crit_edge, label %if.end15.i.i

if.end.i.i208.cleanup_crit_edge:                  ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i.i:                                     ; preds = %if.end.i.i208
  %arrayidx18.i.i = getelementptr [97 x ptr], ptr @ad7280_attributes, i32 0, i32 %inc.i.i207
  %270 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %arrayidx7.i.i, ptr %arrayidx18.i.i, align 4
  %inc19.i.i = add i32 %cnt.1.i198, 2
  %inc20.i.i = add nuw nsw i32 %ch.071.i.i, 1
  %exitcond.not.i.i209 = icmp eq i32 %inc20.i.i, 6
  br i1 %exitcond.not.i.i209, label %for.inc.i212, label %if.end15.i.i.for.body.i.i206_crit_edge

if.end15.i.i.for.body.i.i206_crit_edge:           ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i206

for.inc.i212:                                     ; preds = %if.end15.i.i
  %arrayidx21.i.i = getelementptr [97 x ptr], ptr @ad7280_attributes, i32 0, i32 %inc19.i.i
  %271 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr null, ptr %arrayidx21.i.i, align 4
  %inc.i210 = add i32 %dev.033.i, 1
  %272 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %slave_num, align 4
  %cmp.not.i211 = icmp sgt i32 %inc.i210, %273
  br i1 %cmp.not.i211, label %for.inc.i212.if.end63_crit_edge, label %for.inc.i212.for.body.i197_crit_edge

for.inc.i212.for.body.i197_crit_edge:             ; preds = %for.inc.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i197

for.inc.i212.if.end63_crit_edge:                  ; preds = %for.inc.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %for.inc.i212.if.end63_crit_edge, %for.cond.preheader.i183.if.end63_crit_edge
  %call65 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %274 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp69 = icmp sgt i32 %275, 0
  br i1 %cmp69, label %if.then71, label %if.end68.if.end91_crit_edge

if.end68.if.end91_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then71:                                        ; preds = %if.end68
  %call72 = call fastcc i32 @ad7280_write(ptr noundef %3, i32 noundef 0, i32 noundef 19, i1 noundef zeroext true, i32 noundef 192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.then71
  %276 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %slave_num, align 4
  %and.i = shl i32 %277, 4
  %and1.i = shl i32 %277, 3
  %shl14.i = or i32 %and.i, %and1.i
  %or.i214 = and i32 %shl14.i, 16
  %and3.i = and i32 %277, 4
  %and5.i = lshr i32 %277, 3
  %shr.i215 = and i32 %and5.i, 1
  %and7.i = lshr i32 %277, 4
  %shr8.i = and i32 %and7.i, 1
  %or4.i = or i32 %shr.i215, %and3.i
  %or6.i = or i32 %or4.i, %shr8.i
  %or9.i = or i32 %or6.i, %or.i214
  %chain_last_alert_ignore = getelementptr inbounds %struct.ad7280_platform_data, ptr %spec.store.select, i32 0, i32 2
  %278 = ptrtoint ptr %chain_last_alert_ignore to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %chain_last_alert_ignore, align 4
  %and78 = and i32 %279, 15
  %or79 = or i32 %and78, 64
  %call80 = call fastcc i32 @ad7280_write(ptr noundef %3, i32 noundef %or9.i, i32 noundef 19, i1 noundef zeroext false, i32 noundef %or79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %if.end75
  %280 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %irq, align 4
  %282 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %name52, align 8
  %call87 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %281, ptr noundef null, ptr noundef nonnull @ad7280_event_handler, i32 noundef 8194, ptr noundef %283, ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end83.if.end91_crit_edge, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %if.end83.if.end91_crit_edge, %if.end68.if.end91_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end83.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end.i.i208.cleanup_crit_edge, %for.body.i.i206.cleanup_crit_edge, %devm_kcalloc.exit.i182.cleanup_crit_edge, %devm_kcalloc.exit.thread.i179, %ad7280_channel_init.exit.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %devm_add_action_or_reset.exit, %ad7280_chain_setup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %ad7280_chain_setup.exit.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %add9.i, %ad7280_channel_init.exit.cleanup_crit_edge ], [ %call65, %if.end63.cleanup_crit_edge ], [ %call72, %if.then71.cleanup_crit_edge ], [ %call80, %if.end75.cleanup_crit_edge ], [ %call87, %if.end83.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i182.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i179 ], [ -12, %for.body.i.i206.cleanup_crit_edge ], [ -12, %if.end.i.i208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7280_sw_power_down(ptr noundef %data) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_hb = getelementptr inbounds %struct.ad7280_state, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_hb, align 8
  %2 = or i8 %1, 1
  %or = zext i8 %2 to i32
  %and.i = shl nuw nsw i32 %or, 13
  %or5.i = or i32 %and.i, 27267072
  %crc_tab.i = getelementptr inbounds %struct.ad7280_state, ptr %data, i32 0, i32 6
  %shr.i = lshr exact i32 %or5.i, 11
  %3 = ptrtoint ptr %crc_tab.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %crc_tab.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %or3.i = lshr i32 %or, 6
  %shr1.i.i = or i32 %or3.i, 52
  %xor.i.i = xor i32 %shr1.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i
  %5 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i.i, align 1
  %7 = trunc i32 %shr.i to i8
  %conv7.i.i = xor i8 %6, %7
  %conv6.i = zext i8 %conv7.i.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 3
  %or8.i = or i32 %shl7.i, %or5.i
  %or9.i = or i32 %or8.i, 2
  %buf.i = getelementptr inbounds %struct.ad7280_state, ptr %data, i32 0, i32 16
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or9.i, ptr %buf.i, align 128
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7280_write.exit_crit_edge

entry.ad7280_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7280_write.exit

ad7280_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7280_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7280_write(ptr noundef %st, i32 noundef %devaddr, i32 noundef %addr, i1 noundef zeroext %all, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %devaddr, 27
  %shl1 = shl i32 %addr, 21
  %or = or i32 %shl1, %shl
  %and = shl i32 %val, 13
  %shl2 = and i32 %and, 2088960
  %or3 = or i32 %shl2, %or
  %shl4 = select i1 %all, i32 4096, i32 0
  %or5 = or i32 %or3, %shl4
  %crc_tab = getelementptr inbounds %struct.ad7280_state, ptr %st, i32 0, i32 6
  %shr = lshr exact i32 %or5, 11
  %shr.i = lshr i32 %or, 27
  %arrayidx.i = getelementptr i8, ptr %crc_tab, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %1 to i32
  %shr1.i = lshr i32 %or3, 19
  %and2.i = and i32 %shr1.i, 255
  %xor.i = xor i32 %and2.i, %conv.i
  %arrayidx3.i = getelementptr i8, ptr %crc_tab, i32 %xor.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  %4 = trunc i32 %shr to i8
  %conv7.i = xor i8 %3, %4
  %conv6 = zext i8 %conv7.i to i32
  %shl7 = shl nuw nsw i32 %conv6, 3
  %or8 = or i32 %shl7, %or5
  %or9 = or i32 %or8, 2
  %buf = getelementptr inbounds %struct.ad7280_state, ptr %st, i32 0, i32 16
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or9, ptr %buf, align 128
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %8 = getelementptr inbounds i8, ptr %t.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scan_cnt = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %scan_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_cnt, align 16
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !61

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %scan_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_cnt, align 16
  %call3 = tail call fastcc i32 @ad7280_read_all_channels(ptr noundef %1, i32 noundef %8, ptr noundef nonnull %call8.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %for.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %scan_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_cnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp794 = icmp sgt i32 %10, 0
  br i1 %cmp794, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %aux_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 11
  %aux_threshlow = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 12
  %cell_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 9
  %cell_threshlow = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %i.095
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = and i32 %12, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %13)
  %cmp8 = icmp ult i32 %13, 50331648
  %shr11 = lshr i32 %12, 11
  %and12 = and i32 %shr11, 4095
  br i1 %cmp8, label %if.then9, label %if.else30

if.then9:                                         ; preds = %for.body
  %14 = ptrtoint ptr %cell_threshhigh to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cell_threshhigh, align 2
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %conv)
  %cmp13.not = icmp ult i32 %and12, %conv
  br i1 %cmp13.not, label %if.else, label %if.then9.for.inc.sink.split_crit_edge

if.then9.for.inc.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.then9
  %16 = ptrtoint ptr %cell_threshlow to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cell_threshlow, align 1
  %conv21 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %conv21)
  %cmp22.not = icmp ugt i32 %and12, %conv21
  br i1 %cmp22.not, label %if.else.for.inc_crit_edge, label %if.else.for.inc.sink.split_crit_edge

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else30:                                        ; preds = %for.body
  %18 = ptrtoint ptr %aux_threshhigh to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %aux_threshhigh, align 4
  %conv34 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %conv34)
  %cmp35.not = icmp ult i32 %and12, %conv34
  br i1 %cmp35.not, label %if.else41, label %if.else30.for.inc.sink.split_crit_edge

if.else30.for.inc.sink.split_crit_edge:           ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else41:                                        ; preds = %if.else30
  %20 = ptrtoint ptr %aux_threshlow to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aux_threshlow, align 1
  %conv45 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %conv45)
  %cmp46.not = icmp ugt i32 %and12, %conv45
  br i1 %cmp46.not, label %if.else41.for.inc_crit_edge, label %if.else41.for.inc.sink.split_crit_edge

if.else41.for.inc.sink.split_crit_edge:           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else41.for.inc_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc.sink.split:                               ; preds = %if.else41.for.inc.sink.split_crit_edge, %if.else30.for.inc.sink.split_crit_edge, %if.else.for.inc.sink.split_crit_edge, %if.then9.for.inc.sink.split_crit_edge
  %.sink = phi i64 [ 36310271995674624, %if.then9.for.inc.sink.split_crit_edge ], [ 36591746972385280, %if.else.for.inc.sink.split_crit_edge ], [ 281513631416320, %if.else30.for.inc.sink.split_crit_edge ], [ 562988608126976, %if.else41.for.inc.sink.split_crit_edge ]
  %call26 = tail call i64 @iio_get_time_ns(ptr noundef %private) #8
  %call27 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %.sink, i64 noundef %call26) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else41.for.inc_crit_edge, %if.else.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.095, 1
  %22 = ptrtoint ptr %scan_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_cnt, align 16
  %cmp7 = icmp slt i32 %inc, %23
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i74.i = alloca %struct.spi_message, align 4
  %t.i.i75.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i46.i = alloca %struct.spi_message, align 4
  %t.i.i47.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11337728, i32 %4)
  %cmp = icmp eq i32 %4, 11337728
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %scan_cnt = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %scan_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_cnt, align 16
  %call1 = tail call fastcc i32 @ad7280_read_all_channels(ptr noundef %1, i32 noundef %6, ptr noundef null)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %shr = lshr i32 %4, 8
  %and = and i32 %4, 255
  %shl.i = shl nuw nsw i32 %and, 15
  %shl.i.i = shl i32 %shr, 27
  %shl2.i.i = and i32 %shl.i, 2064384
  %or.i.i = or i32 %shl.i.i, %shl2.i.i
  %or3.i.i = or i32 %or.i.i, 58720256
  %crc_tab.i.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 6
  %shr.i.i.i = and i32 %shr, 31
  %arrayidx.i.i.i = getelementptr i8, ptr %crc_tab.i.i, i32 %shr.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shr1.i.i.i = lshr i32 %or3.i.i, 19
  %and2.i.i.i = and i32 %shr1.i.i.i, 115
  %xor.i.i.i = xor i32 %and2.i.i.i, %conv.i.i.i
  %arrayidx3.i.i.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i.i
  %9 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.i.i.i, align 1
  %and.tr = trunc i32 %4 to i8
  %11 = shl i8 %and.tr, 4
  %conv7.i.i.i = xor i8 %10, %11
  %conv6.i.i = zext i8 %conv7.i.i.i to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i, 3
  %or8.i.i = or i32 %shl7.i.i, %or3.i.i
  %or9.i.i = or i32 %or8.i.i, 2
  %buf.i.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or9.i.i, ptr %buf.i.i, align 128
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %15 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.else.ad7280_write.exit.i_crit_edge

if.else.ad7280_write.exit.i_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad7280_write.exit.i

ad7280_write.exit.i:                              ; preds = %if.end.i.i.i.i.i.i.i.i, %if.else.ad7280_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ad7280_write.exit.i.if.end_crit_edge

ad7280_write.exit.i.if.end_crit_edge:             ; preds = %ad7280_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %ad7280_write.exit.i
  %ctrl_hb.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrl_hb.i, align 8
  %31 = or i8 %30, 48
  %or.i = zext i8 %31 to i32
  %and.i48.i = shl nuw nsw i32 %or.i, 13
  %or5.i.i = or i32 %and.i48.i, 27267072
  %shr.i52.i = lshr exact i32 %or5.i.i, 11
  %32 = ptrtoint ptr %crc_tab.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %crc_tab.i.i, align 1
  %conv.i.i53.i = zext i8 %33 to i32
  %or3.i50.i = lshr i32 %or.i, 6
  %shr1.i.i54.i = or i32 %or3.i50.i, 52
  %xor.i.i56.i = xor i32 %shr1.i.i54.i, %conv.i.i53.i
  %arrayidx3.i.i57.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i56.i
  %34 = ptrtoint ptr %arrayidx3.i.i57.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.i.i57.i, align 1
  %36 = trunc i32 %shr.i52.i to i8
  %conv7.i.i58.i = xor i8 %35, %36
  %conv6.i59.i = zext i8 %conv7.i.i58.i to i32
  %shl7.i60.i = shl nuw nsw i32 %conv6.i59.i, 3
  %or8.i61.i = or i32 %shl7.i60.i, %or5.i.i
  %or9.i62.i = or i32 %or8.i61.i, 2
  %37 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or9.i62.i, ptr %buf.i.i, align 128
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i47.i) #8
  %40 = getelementptr inbounds i8, ptr %t.i.i47.i, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 92)
  %42 = ptrtoint ptr %t.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i.i, ptr %t.i.i47.i, align 4
  %len1.i.i64.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47.i, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %len1.i.i64.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i46.i) #8
  %44 = getelementptr inbounds i8, ptr %msg.i.i.i46.i, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i.i46.i, ptr %msg.i.i.i46.i, align 4
  %prev.i.i.i.i.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i46.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i46.i, ptr %prev.i.i.i.i.i.i.i65.i, align 4
  %resources.i.i.i.i.i.i66.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i46.i, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i.i66.i, ptr %resources.i.i.i.i.i.i66.i, align 4
  %prev.i2.i.i.i.i.i.i67.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i46.i, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i.i66.i, ptr %prev.i2.i.i.i.i.i.i67.i, align 4
  %transfer_list.i.i.i.i.i68.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i69.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i68.i, ptr noundef nonnull %msg.i.i.i46.i, ptr noundef nonnull %msg.i.i.i46.i) #8
  br i1 %call.i.i.i.i.i.i.i69.i, label %if.end.i.i.i.i.i.i.i71.i, label %if.end.i.ad7280_write.exit73.i_crit_edge

if.end.i.ad7280_write.exit73.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit73.i

if.end.i.i.i.i.i.i.i71.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i.i68.i, ptr %prev.i.i.i.i.i.i.i65.i, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i46.i, ptr %transfer_list.i.i.i.i.i68.i, align 4
  %prev3.i.i.i.i.i.i.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47.i, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i46.i, ptr %prev3.i.i.i.i.i.i.i70.i, align 4
  %53 = ptrtoint ptr %msg.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i.i68.i, ptr %msg.i.i.i46.i, align 4
  br label %ad7280_write.exit73.i

ad7280_write.exit73.i:                            ; preds = %if.end.i.i.i.i.i.i.i71.i, %if.end.i.ad7280_write.exit73.i_crit_edge
  %call.i.i.i72.i = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %msg.i.i.i46.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i46.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i47.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i72.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %ad7280_write.exit73.i.if.end_crit_edge

ad7280_write.exit73.i.if.end_crit_edge:           ; preds = %ad7280_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end4.i:                                        ; preds = %ad7280_write.exit73.i
  %54 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ctrl_hb.i, align 8
  %56 = or i8 %55, 8
  %or7.i = zext i8 %56 to i32
  %or.i77.i = or i32 %shl.i.i, 27262976
  %and.i78.i = shl nuw nsw i32 %or7.i, 13
  %or3.i80.i = or i32 %and.i78.i, %or.i77.i
  %shr.i82.i = shl i8 %56, 2
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i85.i = zext i8 %58 to i32
  %shr1.i.i86.i = lshr i32 %or3.i80.i, 19
  %and2.i.i87.i = and i32 %shr1.i.i86.i, 55
  %xor.i.i88.i = xor i32 %and2.i.i87.i, %conv.i.i85.i
  %arrayidx3.i.i89.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i88.i
  %59 = ptrtoint ptr %arrayidx3.i.i89.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx3.i.i89.i, align 1
  %conv7.i.i90.i = xor i8 %60, %shr.i82.i
  %conv6.i91.i = zext i8 %conv7.i.i90.i to i32
  %shl7.i92.i = shl nuw nsw i32 %conv6.i91.i, 3
  %or8.i93.i = or i32 %shl7.i92.i, %or3.i80.i
  %or9.i94.i = or i32 %or8.i93.i, 2
  %61 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or9.i94.i, ptr %buf.i.i, align 128
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i75.i) #8
  %64 = getelementptr inbounds i8, ptr %t.i.i75.i, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 92)
  %66 = ptrtoint ptr %t.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i.i, ptr %t.i.i75.i, align 4
  %len1.i.i96.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i75.i, i32 0, i32 2
  %67 = ptrtoint ptr %len1.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %len1.i.i96.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i74.i) #8
  %68 = getelementptr inbounds i8, ptr %msg.i.i.i74.i, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 40)
  %70 = ptrtoint ptr %msg.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %msg.i.i.i74.i, ptr %msg.i.i.i74.i, align 4
  %prev.i.i.i.i.i.i.i97.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i74.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i.i74.i, ptr %prev.i.i.i.i.i.i.i97.i, align 4
  %resources.i.i.i.i.i.i98.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i74.i, i32 0, i32 10
  %72 = ptrtoint ptr %resources.i.i.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %resources.i.i.i.i.i.i98.i, ptr %resources.i.i.i.i.i.i98.i, align 4
  %prev.i2.i.i.i.i.i.i99.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i74.i, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i2.i.i.i.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %resources.i.i.i.i.i.i98.i, ptr %prev.i2.i.i.i.i.i.i99.i, align 4
  %transfer_list.i.i.i.i.i100.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i75.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i101.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i100.i, ptr noundef nonnull %msg.i.i.i74.i, ptr noundef nonnull %msg.i.i.i74.i) #8
  br i1 %call.i.i.i.i.i.i.i101.i, label %if.end.i.i.i.i.i.i.i103.i, label %if.end4.i.ad7280_write.exit105.i_crit_edge

if.end4.i.ad7280_write.exit105.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit105.i

if.end.i.i.i.i.i.i.i103.i:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %transfer_list.i.i.i.i.i100.i, ptr %prev.i.i.i.i.i.i.i97.i, align 4
  %75 = ptrtoint ptr %transfer_list.i.i.i.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i.i74.i, ptr %transfer_list.i.i.i.i.i100.i, align 4
  %prev3.i.i.i.i.i.i.i102.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i75.i, i32 0, i32 18, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i.i74.i, ptr %prev3.i.i.i.i.i.i.i102.i, align 4
  %77 = ptrtoint ptr %msg.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %transfer_list.i.i.i.i.i100.i, ptr %msg.i.i.i74.i, align 4
  br label %ad7280_write.exit105.i

ad7280_write.exit105.i:                           ; preds = %if.end.i.i.i.i.i.i.i103.i, %if.end4.i.ad7280_write.exit105.i_crit_edge
  %call.i.i.i104.i = call i32 @spi_sync(ptr noundef %63, ptr noundef nonnull %msg.i.i.i74.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i74.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i75.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i104.i)
  %tobool9.not.i = icmp eq i32 %call.i.i.i104.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %ad7280_write.exit105.i.if.end_crit_edge

ad7280_write.exit105.i.if.end_crit_edge:          ; preds = %ad7280_write.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end11.i:                                       ; preds = %ad7280_write.exit105.i
  %readback_delay_us.i.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 5
  %78 = ptrtoint ptr %readback_delay_us.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %readback_delay_us.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %79)
  %cmp.i.i = icmp slt i32 %79, 50
  br i1 %cmp.i.i, label %cond.false6.i.i, label %if.else.i.i

cond.false6.i.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %80(i32 noundef %79) #8
  br label %ad7280_delay.exit.i

if.else.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  br label %ad7280_delay.exit.i

ad7280_delay.exit.i:                              ; preds = %if.else.i.i, %cond.false6.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %81 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %82 = call ptr @memset(ptr %81, i32 0, i32 84)
  %83 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buf.i.i, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %arrayidx2.i.i = getelementptr %struct.ad7280_state, ptr %1, i32 0, i32 16, i32 1
  %84 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx2.i.i, ptr %rx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %len.i.i, align 4
  %86 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -134216950, ptr %buf.i.i, align 128
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %89 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %90 = call ptr @memset(ptr %89, i32 0, i32 40)
  %91 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %93 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %94 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %ad7280_delay.exit.i.spi_sync_transfer.exit.i.i_crit_edge

ad7280_delay.exit.i.spi_sync_transfer.exit.i.i_crit_edge: ; preds = %ad7280_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %ad7280_delay.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %96 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %ad7280_delay.exit.i.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %88, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end15.i, label %__ad7280_read32.exit.i

__ad7280_read32.exit.i:                           ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %if.end

if.end15.i:                                       ; preds = %spi_sync_transfer.exit.i.i
  %99 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  %shr.i108.i = lshr i32 %100, 10
  %shr.i.i109.i = lshr i32 %100, 26
  %arrayidx.i.i110.i = getelementptr i8, ptr %crc_tab.i.i, i32 %shr.i.i109.i
  %101 = ptrtoint ptr %arrayidx.i.i110.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i110.i, align 1
  %conv.i.i111.i = zext i8 %102 to i32
  %shr1.i.i112.i = lshr i32 %100, 18
  %and2.i.i113.i = and i32 %shr1.i.i112.i, 255
  %xor.i.i114.i = xor i32 %and2.i.i113.i, %conv.i.i111.i
  %arrayidx3.i.i115.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i114.i
  %103 = ptrtoint ptr %arrayidx3.i.i115.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx3.i.i115.i, align 1
  %105 = trunc i32 %shr.i108.i to i8
  %conv7.i.i116.i = xor i8 %104, %105
  %shr1.i.i = lshr i32 %100, 2
  %106 = trunc i32 %shr1.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv7.i.i116.i, i8 %106)
  %cmp.not.i.i = icmp eq i8 %conv7.i.i116.i, %106
  br i1 %cmp.not.i.i, label %if.end19.i, label %if.end15.i.if.end.thread_crit_edge

if.end15.i.if.end.thread_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end19.i:                                       ; preds = %if.end15.i
  %shr.i = lshr i32 %100, 27
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr)
  %cmp.not.i = icmp eq i32 %shr.i, %shr
  %shr21.i = lshr i32 %100, 23
  %and.i = and i32 %shr21.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and)
  %cmp22.not.i = icmp eq i32 %and.i, %and
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp22.not.i, i1 false
  br i1 %or.cond.i, label %if.end.thread30, label %if.end19.i.if.end.thread_crit_edge

if.end19.i.if.end.thread_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.thread30:                                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr26.i = lshr i32 %100, 11
  %and27.i = and i32 %shr26.i, 4095
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end8

if.end.thread:                                    ; preds = %if.end19.i.if.end.thread_crit_edge, %if.end15.i.if.end.thread_crit_edge
  %ret.0.ph = phi i32 [ -14, %if.end19.i.if.end.thread_crit_edge ], [ -5, %if.end15.i.if.end.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %__ad7280_read32.exit.i, %ad7280_write.exit105.i.if.end_crit_edge, %ad7280_write.exit73.i.if.end_crit_edge, %ad7280_write.exit.i.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call.i.i.i.i, %ad7280_write.exit.i.if.end_crit_edge ], [ %call.i.i.i72.i, %ad7280_write.exit73.i.if.end_crit_edge ], [ %call.i.i.i104.i, %ad7280_write.exit105.i.if.end_crit_edge ], [ %call.i.i.i, %__ad7280_read32.exit.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp6 = icmp slt i32 %ret.0, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.thread30
  %ret.033 = phi i32 [ %and27.i, %if.end.thread30 ], [ %ret.0, %if.end.if.end8_crit_edge ]
  %107 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %ret.033, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %address10 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %108 = ptrtoint ptr %address10 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %address10, align 4
  %and11 = and i32 %109, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and11)
  %cmp12 = icmp ult i32 %and11, 6
  %. = select i1 %cmp12, i32 4000, i32 5000
  %110 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %., ptr %val, align 4
  %111 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 12, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %if.end8, %if.end.cleanup_crit_edge, %if.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb9 ], [ 1, %if.end8 ], [ %ret.0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.ph, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_read_channel_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.10)
  switch i64 %3, label %entry.cleanup_crit_edge [
    i64 15, label %sw.bb
    i64 16, label %sw.bb2
    i64 17, label %sw.bb7
    i64 18, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cell_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %cell_threshhigh to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cell_threshhigh, align 2
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1568
  %div = udiv i32 %mul, 100
  %add = add nuw nsw i32 %div, 1000
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cell_threshlow = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %cell_threshlow to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cell_threshlow, align 1
  %conv3 = zext i8 %7 to i32
  %mul4 = mul nuw nsw i32 %conv3, 1568
  %div5 = udiv i32 %mul4, 100
  %add6 = add nuw nsw i32 %div5, 1000
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %aux_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %aux_threshhigh to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aux_threshhigh, align 4
  %conv8 = zext i8 %9 to i16
  %mul9 = mul nuw i16 %conv8, 196
  %div1022 = udiv i16 %mul9, 10
  %div10.zext = zext i16 %div1022 to i32
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %aux_threshlow = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %aux_threshlow to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aux_threshlow, align 1
  %conv12 = zext i8 %11 to i16
  %mul13 = mul nuw i16 %conv12, 196
  %div1423 = udiv i16 %mul13, 10
  %div14.zext = zext i16 %div1423 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb2, %sw.bb
  %val.0 = phi i32 [ %div14.zext, %sw.bb11 ], [ %div10.zext, %sw.bb7 ], [ %add6, %sw.bb2 ], [ %add, %sw.bb ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %val.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_write_channel_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !62
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i64 %4, label %if.end.cleanup_crit_edge [
    i64 15, label %if.end.sw.bb_crit_edge
    i64 16, label %if.end.sw.bb_crit_edge50
    i64 17, label %if.end.sw.bb3_crit_edge
    i64 18, label %if.end.sw.bb3_crit_edge51
  ]

if.end.sw.bb3_crit_edge51:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

if.end.sw.bb_crit_edge50:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge50
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = mul i32 %6, 100
  %mul = add i32 %7, -100000
  %div = sdiv i32 %mul, 1568
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge51
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %mul4 = mul i32 %9, 10
  %div5 = sdiv i32 %mul4, 196
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %storemerge = phi i32 [ %div5, %sw.bb3 ], [ %div, %sw.bb ]
  %10 = call i32 @llvm.smax.i32(i32 %storemerge, i32 0)
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 255)
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  %lock = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.12)
  switch i64 %14, label %sw.epilog.sw.epilog21_crit_edge [
    i64 15, label %sw.bb14
    i64 16, label %sw.bb15
    i64 17, label %sw.bb17
    i64 18, label %sw.bb19
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %conv = trunc i32 %16 to i8
  %cell_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %cell_threshhigh to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %cell_threshhigh, align 2
  br label %sw.epilog21

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %conv16 = trunc i32 %19 to i8
  %cell_threshlow = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %cell_threshlow to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv16, ptr %cell_threshlow, align 1
  br label %sw.epilog21

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %conv18 = trunc i32 %22 to i8
  %aux_threshhigh = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %aux_threshhigh to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv18, ptr %aux_threshhigh, align 4
  br label %sw.epilog21

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv20 = trunc i32 %25 to i8
  %aux_threshlow = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %aux_threshlow to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv20, ptr %aux_threshlow, align 1
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb14, %sw.epilog.sw.epilog21_crit_edge
  %27 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %address, align 8
  %conv23 = trunc i64 %28 to i32
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %shl1.i = shl i32 %conv23, 21
  %and.i = shl i32 %30, 13
  %shl2.i = and i32 %and.i, 2088960
  %or3.i = or i32 %shl2.i, %shl1.i
  %or5.i = or i32 %or3.i, 4096
  %crc_tab.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 6
  %shr.i = lshr exact i32 %or5.i, 11
  %shr.i.i = lshr i32 %shl1.i, 27
  %arrayidx.i.i = getelementptr i8, ptr %crc_tab.i, i32 %shr.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %shr1.i.i = lshr i32 %or3.i, 19
  %and2.i.i = and i32 %shr1.i.i, 255
  %xor.i.i = xor i32 %and2.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i
  %33 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx3.i.i, align 1
  %35 = trunc i32 %shr.i to i8
  %conv7.i.i = xor i8 %34, %35
  %conv6.i = zext i8 %conv7.i.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 3
  %or8.i = or i32 %shl7.i, %or5.i
  %or9.i = or i32 %or8.i, 2
  %buf.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or9.i, ptr %buf.i, align 128
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %39 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.epilog21.ad7280_write.exit_crit_edge

sw.epilog21.ad7280_write.exit_crit_edge:          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7280_write.exit

ad7280_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %sw.epilog21.ad7280_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool26.not = icmp eq i32 %call.i.i.i, 0
  %len.call24 = select i1 %tobool26.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ad7280_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call24, %ad7280_write.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7280_read_all_channels(ptr noundef %st, i32 noundef %cnt, ptr noundef writeonly %array) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i40 = alloca %struct.spi_message, align 4
  %t.i.i41 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crc_tab.i = getelementptr inbounds %struct.ad7280_state, ptr %st, i32 0, i32 6
  %0 = ptrtoint ptr %crc_tab.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crc_tab.i, align 1
  %2 = xor i8 %1, 112
  %xor.i.i = zext i8 %2 to i32
  %arrayidx3.i.i = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i
  %3 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3.i.i, align 1
  %conv7.i.i = xor i8 %4, 2
  %conv6.i = zext i8 %conv7.i.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 3
  %or9.i = or i32 %shl7.i, 58724354
  %buf.i = getelementptr inbounds %struct.ad7280_state, ptr %st, i32 0, i32 16
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or9.i, ptr %buf.i, align 128
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7280_write.exit_crit_edge

entry.ad7280_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7280_write.exit

ad7280_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7280_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %ad7280_write.exit.cleanup_crit_edge

ad7280_write.exit.cleanup_crit_edge:              ; preds = %ad7280_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ad7280_write.exit
  %ctrl_hb = getelementptr inbounds %struct.ad7280_state, ptr %st, i32 0, i32 7
  %22 = ptrtoint ptr %ctrl_hb to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrl_hb, align 8
  %24 = or i8 %23, 8
  %or = zext i8 %24 to i32
  %and.i = shl nuw nsw i32 %or, 13
  %or5.i = or i32 %and.i, 27267072
  %shr.i = lshr exact i32 %or5.i, 11
  %25 = ptrtoint ptr %crc_tab.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %crc_tab.i, align 1
  %conv.i.i43 = zext i8 %26 to i32
  %or3.i = lshr i32 %or, 6
  %shr1.i.i = or i32 %or3.i, 52
  %xor.i.i44 = xor i32 %shr1.i.i, %conv.i.i43
  %arrayidx3.i.i45 = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i44
  %27 = ptrtoint ptr %arrayidx3.i.i45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3.i.i45, align 1
  %29 = trunc i32 %shr.i to i8
  %conv7.i.i46 = xor i8 %28, %29
  %conv6.i47 = zext i8 %conv7.i.i46 to i32
  %shl7.i48 = shl nuw nsw i32 %conv6.i47, 3
  %or8.i49 = or i32 %shl7.i48, %or5.i
  %or9.i50 = or i32 %or8.i49, 2
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or9.i50, ptr %buf.i, align 128
  %31 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i41) #8
  %33 = getelementptr inbounds i8, ptr %t.i.i41, i32 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 92)
  %35 = ptrtoint ptr %t.i.i41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i, ptr %t.i.i41, align 4
  %len1.i.i52 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i41, i32 0, i32 2
  %36 = ptrtoint ptr %len1.i.i52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %len1.i.i52, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i40) #8
  %37 = getelementptr inbounds i8, ptr %msg.i.i.i40, i32 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 40)
  %39 = ptrtoint ptr %msg.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %msg.i.i.i40, ptr %msg.i.i.i40, align 4
  %prev.i.i.i.i.i.i.i53 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i40, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i40, ptr %prev.i.i.i.i.i.i.i53, align 4
  %resources.i.i.i.i.i.i54 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i40, i32 0, i32 10
  %41 = ptrtoint ptr %resources.i.i.i.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %resources.i.i.i.i.i.i54, ptr %resources.i.i.i.i.i.i54, align 4
  %prev.i2.i.i.i.i.i.i55 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i40, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %prev.i2.i.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %resources.i.i.i.i.i.i54, ptr %prev.i2.i.i.i.i.i.i55, align 4
  %transfer_list.i.i.i.i.i56 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i41, i32 0, i32 18
  %call.i.i.i.i.i.i.i57 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i56, ptr noundef nonnull %msg.i.i.i40, ptr noundef nonnull %msg.i.i.i40) #8
  br i1 %call.i.i.i.i.i.i.i57, label %if.end.i.i.i.i.i.i.i59, label %if.end.ad7280_write.exit61_crit_edge

if.end.ad7280_write.exit61_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit61

if.end.i.i.i.i.i.i.i59:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %transfer_list.i.i.i.i.i56, ptr %prev.i.i.i.i.i.i.i53, align 4
  %44 = ptrtoint ptr %transfer_list.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i40, ptr %transfer_list.i.i.i.i.i56, align 4
  %prev3.i.i.i.i.i.i.i58 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i41, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i40, ptr %prev3.i.i.i.i.i.i.i58, align 4
  %46 = ptrtoint ptr %msg.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %transfer_list.i.i.i.i.i56, ptr %msg.i.i.i40, align 4
  br label %ad7280_write.exit61

ad7280_write.exit61:                              ; preds = %if.end.i.i.i.i.i.i.i59, %if.end.ad7280_write.exit61_crit_edge
  %call.i.i.i60 = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %msg.i.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i60)
  %tobool2.not = icmp eq i32 %call.i.i.i60, 0
  br i1 %tobool2.not, label %if.end4, label %ad7280_write.exit61.cleanup_crit_edge

ad7280_write.exit61.cleanup_crit_edge:            ; preds = %ad7280_write.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %ad7280_write.exit61
  %readback_delay_us.i = getelementptr inbounds %struct.ad7280_state, ptr %st, i32 0, i32 5
  %47 = ptrtoint ptr %readback_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %readback_delay_us.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %48)
  %cmp.i = icmp slt i32 %48, 50
  br i1 %cmp.i, label %cond.false6.i, label %if.else.i

cond.false6.i:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %49(i32 noundef %48) #8
  br label %ad7280_delay.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  br label %ad7280_delay.exit

ad7280_delay.exit:                                ; preds = %if.else.i, %cond.false6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp75.not = icmp eq i32 %cnt, 0
  br i1 %cmp75.not, label %ad7280_delay.exit.cleanup_crit_edge, label %for.body.lr.ph

ad7280_delay.exit.cleanup_crit_edge:              ; preds = %ad7280_delay.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %ad7280_delay.exit
  %50 = getelementptr inbounds i8, ptr %t.i, i32 12
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %arrayidx2.i = getelementptr %struct.ad7280_state, ptr %st, i32 0, i32 16, i32 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %51 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %tobool14.not = icmp eq ptr %array, null
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %sum.078 = phi i32 [ 0, %for.body.lr.ph ], [ %sum.1, %if.end16.for.body_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %52 = call ptr @memset(ptr %50, i32 0, i32 84)
  %53 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i, ptr %t.i, align 4
  %54 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx2.i, ptr %rx_buf.i, align 4
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %len.i, align 4
  %56 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -134216950, ptr %buf.i, align 128
  %57 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %59 = call ptr @memset(ptr %51, i32 0, i32 40)
  %60 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %61 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.body.spi_sync_transfer.exit.i_crit_edge

for.body.spi_sync_transfer.exit.i_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %66 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %for.body.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %58, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end9, label %__ad7280_read32.exit

__ad7280_read32.exit:                             ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  br label %cleanup

if.end9:                                          ; preds = %spi_sync_transfer.exit.i
  %68 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx2.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  %shr.i64 = lshr i32 %69, 10
  %shr.i.i = lshr i32 %69, 26
  %arrayidx.i.i = getelementptr i8, ptr %crc_tab.i, i32 %shr.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i65 = zext i8 %71 to i32
  %shr1.i.i66 = lshr i32 %69, 18
  %and2.i.i67 = and i32 %shr1.i.i66, 255
  %xor.i.i68 = xor i32 %and2.i.i67, %conv.i.i65
  %arrayidx3.i.i69 = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i68
  %72 = ptrtoint ptr %arrayidx3.i.i69 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx3.i.i69, align 1
  %74 = trunc i32 %shr.i64 to i8
  %conv7.i.i70 = xor i8 %73, %74
  %shr1.i = lshr i32 %69, 2
  %75 = trunc i32 %shr1.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv7.i.i70, i8 %75)
  %cmp.not.i = icmp eq i8 %conv7.i.i70, %75
  br i1 %cmp.not.i, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i32, ptr %array, i32 %i.076
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %69, ptr %arrayidx, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %77 = and i32 %69, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %77)
  %cmp17 = icmp ult i32 %77, 50331648
  %shr20 = lshr i32 %69, 11
  %and21 = and i32 %shr20, 4095
  %add = select i1 %cmp17, i32 %and21, i32 0
  %sum.1 = add i32 %add, %sum.078
  %inc = add nuw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %__ad7280_read32.exit, %ad7280_delay.exit.cleanup_crit_edge, %ad7280_write.exit61.cleanup_crit_edge, %ad7280_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ad7280_write.exit.cleanup_crit_edge ], [ %call.i.i.i60, %ad7280_write.exit61.cleanup_crit_edge ], [ %call.i.i, %__ad7280_read32.exit ], [ 0, %ad7280_delay.exit.cleanup_crit_edge ], [ -5, %if.end9.cleanup_crit_edge ], [ %sum.1, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_show_balance_sw(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  %shr = lshr i64 %3, 8
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr %struct.ad7280_state, ptr %1, i32 0, i32 13, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, 255
  %shl = shl i32 4, %7
  %and3 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool = icmp ne i32 %and3, 0
  %lnot.ext = zext i1 %tobool to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %lnot.ext)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_store_balance_sw(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %readin = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %readin) #8
  %2 = ptrtoint ptr %readin to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %readin, align 1, !annotation !62
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %readin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  %shr = lshr i64 %4, 8
  %conv = trunc i64 %shr to i32
  %5 = trunc i64 %4 to i32
  %conv4 = and i32 %5, 255
  %lock = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %6 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %readin, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  %shl10 = shl i32 4, %conv4
  %arrayidx12 = getelementptr %struct.ad7280_state, ptr %1, i32 0, i32 13, i32 %conv
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %10 = trunc i32 %shl10 to i8
  %11 = xor i8 %10, -1
  %conv15 = and i8 %9, %11
  %conv8 = or i8 %9, %10
  %conv15.sink = select i1 %tobool5.not, i8 %conv15, i8 %conv8
  store i8 %conv15.sink, ptr %arrayidx12, align 1
  %conv19 = zext i8 %conv15.sink to i32
  %shl.i = shl i32 %conv, 27
  %or.i = or i32 %shl.i, 41943040
  %and.i = shl nuw nsw i32 %conv19, 13
  %or3.i = or i32 %and.i, %or.i
  %crc_tab.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 6
  %shr.i = shl i8 %conv15.sink, 2
  %shr.i.i = and i32 %conv, 31
  %arrayidx.i.i = getelementptr i8, ptr %crc_tab.i, i32 %shr.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %13 to i32
  %shr1.i.i = lshr i32 %or3.i, 19
  %and2.i.i = and i32 %shr1.i.i, 83
  %xor.i.i = xor i32 %and2.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i
  %14 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.i.i, align 1
  %conv7.i.i = xor i8 %15, %shr.i
  %conv6.i = zext i8 %conv7.i.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 3
  %or8.i = or i32 %shl7.i, %or3.i
  %or9.i = or i32 %or8.i, 2
  %buf.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or9.i, ptr %buf.i, align 128
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %19 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.ad7280_write.exit_crit_edge

if.end.ad7280_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7280_write.exit

ad7280_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end.ad7280_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool22.not = icmp eq i32 %call.i.i.i, 0
  %len.call20 = select i1 %tobool22.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ad7280_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call20, %ad7280_write.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %readin) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_show_balance_timer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i73.i = alloca %struct.spi_message, align 4
  %t.i.i74.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i45.i = alloca %struct.spi_message, align 4
  %t.i.i46.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  %shr = lshr i64 %3, 8
  %conv = trunc i64 %shr to i32
  %4 = trunc i64 %3 to i32
  %conv3 = and i32 %4, 255
  %ctrl_hb.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl_hb.i, align 8
  %7 = or i8 %6, 48
  %or.i = zext i8 %7 to i32
  %and.i.i = shl nuw nsw i32 %or.i, 13
  %or5.i.i = or i32 %and.i.i, 27267072
  %crc_tab.i.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 6
  %shr.i.i = lshr exact i32 %or5.i.i, 11
  %8 = ptrtoint ptr %crc_tab.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crc_tab.i.i, align 1
  %conv.i.i.i = zext i8 %9 to i32
  %or3.i.i = lshr i32 %or.i, 6
  %shr1.i.i.i = or i32 %or3.i.i, 52
  %xor.i.i.i = xor i32 %shr1.i.i.i, %conv.i.i.i
  %arrayidx3.i.i.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i.i
  %10 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i.i.i, align 1
  %12 = trunc i32 %shr.i.i to i8
  %conv7.i.i.i = xor i8 %11, %12
  %conv6.i.i = zext i8 %conv7.i.i.i to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i, 3
  %or8.i.i = or i32 %shl7.i.i, %or5.i.i
  %or9.i.i = or i32 %or8.i.i, 2
  %buf.i.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or9.i.i, ptr %buf.i.i, align 128
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %20 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.ad7280_write.exit.i_crit_edge

entry.ad7280_write.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad7280_write.exit.i

ad7280_write.exit.i:                              ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.ad7280_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %15, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ad7280_write.exit.i.ad7280_read.exit_crit_edge

ad7280_write.exit.i.ad7280_read.exit_crit_edge:   ; preds = %ad7280_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_read.exit

if.end.i:                                         ; preds = %ad7280_write.exit.i
  %30 = ptrtoint ptr %ctrl_hb.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctrl_hb.i, align 8
  %conv2.i = zext i8 %31 to i32
  %shl.i.i = shl i32 %conv, 27
  %or.i.i = or i32 %shl.i.i, 27262976
  %and.i47.i = shl nuw nsw i32 %conv2.i, 13
  %or3.i49.i = or i32 %and.i47.i, %or.i.i
  %shr.i51.i = shl i8 %31, 2
  %shr.i.i.i = and i32 %conv, 31
  %arrayidx.i.i.i = getelementptr i8, ptr %crc_tab.i.i, i32 %shr.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i52.i = zext i8 %33 to i32
  %shr1.i.i53.i = lshr i32 %or3.i49.i, 19
  %and2.i.i54.i = and i32 %shr1.i.i53.i, 55
  %xor.i.i55.i = xor i32 %and2.i.i54.i, %conv.i.i52.i
  %arrayidx3.i.i56.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i55.i
  %34 = ptrtoint ptr %arrayidx3.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.i.i56.i, align 1
  %conv7.i.i57.i = xor i8 %35, %shr.i51.i
  %conv6.i58.i = zext i8 %conv7.i.i57.i to i32
  %shl7.i59.i = shl nuw nsw i32 %conv6.i58.i, 3
  %or8.i60.i = or i32 %shl7.i59.i, %or3.i49.i
  %or9.i61.i = or i32 %or8.i60.i, 2
  %36 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or9.i61.i, ptr %buf.i.i, align 128
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i46.i) #8
  %39 = getelementptr inbounds i8, ptr %t.i.i46.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = ptrtoint ptr %t.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i.i, ptr %t.i.i46.i, align 4
  %len1.i.i63.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46.i, i32 0, i32 2
  %42 = ptrtoint ptr %len1.i.i63.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %len1.i.i63.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i45.i) #8
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i45.i, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %msg.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %msg.i.i.i45.i, ptr %msg.i.i.i45.i, align 4
  %prev.i.i.i.i.i.i.i64.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i45.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i45.i, ptr %prev.i.i.i.i.i.i.i64.i, align 4
  %resources.i.i.i.i.i.i65.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i45.i, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i.i.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i.i.i.i65.i, ptr %resources.i.i.i.i.i.i65.i, align 4
  %prev.i2.i.i.i.i.i.i66.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i45.i, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i.i.i.i65.i, ptr %prev.i2.i.i.i.i.i.i66.i, align 4
  %transfer_list.i.i.i.i.i67.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i68.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i67.i, ptr noundef nonnull %msg.i.i.i45.i, ptr noundef nonnull %msg.i.i.i45.i) #8
  br i1 %call.i.i.i.i.i.i.i68.i, label %if.end.i.i.i.i.i.i.i70.i, label %if.end.i.ad7280_write.exit72.i_crit_edge

if.end.i.ad7280_write.exit72.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit72.i

if.end.i.i.i.i.i.i.i70.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i.i.i.i67.i, ptr %prev.i.i.i.i.i.i.i64.i, align 4
  %50 = ptrtoint ptr %transfer_list.i.i.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i45.i, ptr %transfer_list.i.i.i.i.i67.i, align 4
  %prev3.i.i.i.i.i.i.i69.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i46.i, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i45.i, ptr %prev3.i.i.i.i.i.i.i69.i, align 4
  %52 = ptrtoint ptr %msg.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i.i.i.i67.i, ptr %msg.i.i.i45.i, align 4
  br label %ad7280_write.exit72.i

ad7280_write.exit72.i:                            ; preds = %if.end.i.i.i.i.i.i.i70.i, %if.end.i.ad7280_write.exit72.i_crit_edge
  %call.i.i.i71.i = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i.i.i45.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i45.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i46.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i71.i)
  %tobool5.not.i = icmp eq i32 %call.i.i.i71.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %ad7280_write.exit72.i.ad7280_read.exit_crit_edge

ad7280_write.exit72.i.ad7280_read.exit_crit_edge: ; preds = %ad7280_write.exit72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_read.exit

if.end7.i:                                        ; preds = %ad7280_write.exit72.i
  %shl.i = shl nuw nsw i32 %conv3, 15
  %shl2.i78.i = and i32 %shl.i, 2064384
  %or.i76.i = or i32 %shl.i.i, %shl2.i78.i
  %or3.i79.i = or i32 %or.i76.i, 58720256
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i84.i = zext i8 %54 to i32
  %shr1.i.i85.i = lshr i32 %or3.i79.i, 19
  %and2.i.i86.i = and i32 %shr1.i.i85.i, 115
  %xor.i.i87.i = xor i32 %and2.i.i86.i, %conv.i.i84.i
  %arrayidx3.i.i88.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i87.i
  %55 = ptrtoint ptr %arrayidx3.i.i88.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx3.i.i88.i, align 1
  %conv3.tr = trunc i64 %3 to i8
  %57 = shl i8 %conv3.tr, 4
  %conv7.i.i89.i = xor i8 %56, %57
  %conv6.i90.i = zext i8 %conv7.i.i89.i to i32
  %shl7.i91.i = shl nuw nsw i32 %conv6.i90.i, 3
  %or8.i92.i = or i32 %shl7.i91.i, %or3.i79.i
  %or9.i93.i = or i32 %or8.i92.i, 2
  %58 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or9.i93.i, ptr %buf.i.i, align 128
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i74.i) #8
  %61 = getelementptr inbounds i8, ptr %t.i.i74.i, i32 4
  %62 = call ptr @memset(ptr %61, i32 0, i32 92)
  %63 = ptrtoint ptr %t.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i.i, ptr %t.i.i74.i, align 4
  %len1.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i74.i, i32 0, i32 2
  %64 = ptrtoint ptr %len1.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %len1.i.i95.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i73.i) #8
  %65 = getelementptr inbounds i8, ptr %msg.i.i.i73.i, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %msg.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %msg.i.i.i73.i, ptr %msg.i.i.i73.i, align 4
  %prev.i.i.i.i.i.i.i96.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i73.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i73.i, ptr %prev.i.i.i.i.i.i.i96.i, align 4
  %resources.i.i.i.i.i.i97.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i73.i, i32 0, i32 10
  %69 = ptrtoint ptr %resources.i.i.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i.i.i.i97.i, ptr %resources.i.i.i.i.i.i97.i, align 4
  %prev.i2.i.i.i.i.i.i98.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i73.i, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i.i.i.i97.i, ptr %prev.i2.i.i.i.i.i.i98.i, align 4
  %transfer_list.i.i.i.i.i99.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i74.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i100.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i99.i, ptr noundef nonnull %msg.i.i.i73.i, ptr noundef nonnull %msg.i.i.i73.i) #8
  br i1 %call.i.i.i.i.i.i.i100.i, label %if.end.i.i.i.i.i.i.i102.i, label %if.end7.i.ad7280_write.exit104.i_crit_edge

if.end7.i.ad7280_write.exit104.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit104.i

if.end.i.i.i.i.i.i.i102.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transfer_list.i.i.i.i.i99.i, ptr %prev.i.i.i.i.i.i.i96.i, align 4
  %72 = ptrtoint ptr %transfer_list.i.i.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i73.i, ptr %transfer_list.i.i.i.i.i99.i, align 4
  %prev3.i.i.i.i.i.i.i101.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i74.i, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i.i.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i73.i, ptr %prev3.i.i.i.i.i.i.i101.i, align 4
  %74 = ptrtoint ptr %msg.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %transfer_list.i.i.i.i.i99.i, ptr %msg.i.i.i73.i, align 4
  br label %ad7280_write.exit104.i

ad7280_write.exit104.i:                           ; preds = %if.end.i.i.i.i.i.i.i102.i, %if.end7.i.ad7280_write.exit104.i_crit_edge
  %call.i.i.i103.i = call i32 @spi_sync(ptr noundef %60, ptr noundef nonnull %msg.i.i.i73.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i73.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i74.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i103.i)
  %tobool9.not.i = icmp eq i32 %call.i.i.i103.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %ad7280_write.exit104.i.ad7280_read.exit_crit_edge

ad7280_write.exit104.i.ad7280_read.exit_crit_edge: ; preds = %ad7280_write.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_read.exit

if.end11.i:                                       ; preds = %ad7280_write.exit104.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %75 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %76 = call ptr @memset(ptr %75, i32 0, i32 84)
  %77 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i.i, ptr %t.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %arrayidx2.i.i = getelementptr %struct.ad7280_state, ptr %1, i32 0, i32 16, i32 1
  %78 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx2.i.i, ptr %rx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %len.i.i, align 4
  %80 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -134216950, ptr %buf.i.i, align 128
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %83 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %84 = call ptr @memset(ptr %83, i32 0, i32 40)
  %85 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %87 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %88 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end11.i.spi_sync_transfer.exit.i.i_crit_edge

if.end11.i.spi_sync_transfer.exit.i.i_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %91 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %92 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %if.end11.i.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %82, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end15.i, label %__ad7280_read32.exit.i

__ad7280_read32.exit.i:                           ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %ad7280_read.exit

if.end15.i:                                       ; preds = %spi_sync_transfer.exit.i.i
  %93 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx2.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  %shr.i107.i = lshr i32 %94, 10
  %shr.i.i108.i = lshr i32 %94, 26
  %arrayidx.i.i109.i = getelementptr i8, ptr %crc_tab.i.i, i32 %shr.i.i108.i
  %95 = ptrtoint ptr %arrayidx.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i109.i, align 1
  %conv.i.i110.i = zext i8 %96 to i32
  %shr1.i.i111.i = lshr i32 %94, 18
  %and2.i.i112.i = and i32 %shr1.i.i111.i, 255
  %xor.i.i113.i = xor i32 %and2.i.i112.i, %conv.i.i110.i
  %arrayidx3.i.i114.i = getelementptr i8, ptr %crc_tab.i.i, i32 %xor.i.i113.i
  %97 = ptrtoint ptr %arrayidx3.i.i114.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx3.i.i114.i, align 1
  %99 = trunc i32 %shr.i107.i to i8
  %conv7.i.i115.i = xor i8 %98, %99
  %shr1.i.i = lshr i32 %94, 2
  %100 = trunc i32 %shr1.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv7.i.i115.i, i8 %100)
  %cmp.not.i.i = icmp eq i8 %conv7.i.i115.i, %100
  br i1 %cmp.not.i.i, label %if.end19.i, label %if.end15.i.ad7280_read.exit.thread_crit_edge

if.end15.i.ad7280_read.exit.thread_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_read.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %shr.i = lshr i32 %94, 27
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv)
  %cmp.not.i = icmp eq i32 %shr.i, %conv
  %shr21.i = lshr i32 %94, 21
  %and.i = and i32 %shr21.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv3)
  %cmp22.not.i = icmp eq i32 %and.i, %conv3
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp22.not.i, i1 false
  br i1 %or.cond.i, label %ad7280_read.exit.thread20, label %if.end19.i.ad7280_read.exit.thread_crit_edge

if.end19.i.ad7280_read.exit.thread_crit_edge:     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_read.exit.thread

ad7280_read.exit.thread20:                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr26.i = lshr i32 %94, 13
  %and27.i = and i32 %shr26.i, 255
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %if.end

ad7280_read.exit.thread:                          ; preds = %if.end19.i.ad7280_read.exit.thread_crit_edge, %if.end15.i.ad7280_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -14, %if.end19.i.ad7280_read.exit.thread_crit_edge ], [ -5, %if.end15.i.ad7280_read.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

ad7280_read.exit:                                 ; preds = %__ad7280_read32.exit.i, %ad7280_write.exit104.i.ad7280_read.exit_crit_edge, %ad7280_write.exit72.i.ad7280_read.exit_crit_edge, %ad7280_write.exit.i.ad7280_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i.i, %ad7280_write.exit.i.ad7280_read.exit_crit_edge ], [ %call.i.i.i71.i, %ad7280_write.exit72.i.ad7280_read.exit_crit_edge ], [ %call.i.i.i103.i, %ad7280_write.exit104.i.ad7280_read.exit_crit_edge ], [ %call.i.i.i, %__ad7280_read32.exit.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ad7280_read.exit.cleanup_crit_edge, label %ad7280_read.exit.if.end_crit_edge

ad7280_read.exit.if.end_crit_edge:                ; preds = %ad7280_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ad7280_read.exit.cleanup_crit_edge:               ; preds = %ad7280_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ad7280_read.exit.if.end_crit_edge, %ad7280_read.exit.thread20
  %retval.0.i23 = phi i32 [ %and27.i, %ad7280_read.exit.thread20 ], [ %retval.0.i, %ad7280_read.exit.if.end_crit_edge ]
  %shr724 = lshr i32 %retval.0.i23, 3
  %mul = mul i32 %shr724, 71500
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad7280_read.exit.cleanup_crit_edge, %ad7280_read.exit.thread
  %retval.0 = phi i32 [ %call8, %if.end ], [ %retval.0.i, %ad7280_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ad7280_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7280_store_balance_timer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !62
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %div = udiv i32 %4, 71500
  store i32 %div, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2287999, i32 %4)
  %cmp = icmp ugt i32 %4, 2287999
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %address, align 8
  %7 = trunc i64 %6 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and7 = shl i32 %9, 16
  %shl = and i32 %and7, 2031616
  %10 = shl i32 %7, 19
  %shl.i = and i32 %10, -134217728
  %conv6 = shl i32 %7, 21
  %shl1.i = and i32 %conv6, 534773760
  %or.i = or i32 %shl1.i, %shl.i
  %or3.i = or i32 %or.i, %shl
  %crc_tab.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 6
  %shr.i = lshr exact i32 %and7, 11
  %shr.i.i = lshr i32 %or.i, 27
  %arrayidx.i.i = getelementptr i8, ptr %crc_tab.i, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %shr1.i.i = lshr i32 %or3.i, 19
  %and2.i.i = and i32 %shr1.i.i, 255
  %xor.i.i = xor i32 %and2.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %crc_tab.i, i32 %xor.i.i
  %13 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i.i, align 1
  %15 = trunc i32 %shr.i to i8
  %conv7.i.i = xor i8 %14, %15
  %conv6.i = zext i8 %conv7.i.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 3
  %or8.i = or i32 %shl7.i, %or3.i
  %or9.i = or i32 %or8.i, 2
  %buf.i = getelementptr inbounds %struct.ad7280_state, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or9.i, ptr %buf.i, align 128
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %19 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end4.ad7280_write.exit_crit_edge

if.end4.ad7280_write.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7280_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7280_write.exit

ad7280_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end4.ad7280_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not = icmp eq i32 %call.i.i.i, 0
  %len.call8 = select i1 %tobool10.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ad7280_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call8, %ad7280_write.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_ad7280a__238_1040_ad7280_driver_init6, !1, !"__initcall__kmod_ad7280a__238_1040_ad7280_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1040, i32 1}
!2 = !{ptr @__exitcall_ad7280_driver_exit, !1, !"__exitcall_ad7280_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1042, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1043, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1044, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1035, i32 11}
!12 = !{ptr @ad7280_driver, !13, !"ad7280_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1033, i32 26}
!14 = !{ptr @ad7280_id, !15, !"ad7280_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 1027, i32 35}
!16 = !{ptr @ad7280_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 934, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ad7793_default_pdata, !20, !"ad7793_default_pdata", i1 false, i1 false}
!20 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 912, i32 42}
!21 = !{ptr @ad7280_info, !22, !"ad7280_info", i1 false, i1 false}
!22 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 906, i32 30}
!23 = !{ptr @ad7280_event_attrs_group, !24, !"ad7280_event_attrs_group", i1 false, i1 false}
!24 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 865, i32 37}
!25 = !{ptr @ad7280_event_attributes, !26, !"ad7280_event_attributes", i1 false, i1 false}
!26 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 857, i32 26}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 831, i32 8}
!29 = !{ptr @iio_dev_attr_in_thresh_low_value, !28, !"iio_dev_attr_in_thresh_low_value", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 710, i32 22}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 838, i32 8}
!34 = !{ptr @iio_dev_attr_in_thresh_high_value, !33, !"iio_dev_attr_in_thresh_high_value", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 845, i32 8}
!37 = !{ptr @iio_dev_attr_in_temp_thresh_low_value, !36, !"iio_dev_attr_in_temp_thresh_low_value", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 851, i32 8}
!40 = !{ptr @iio_dev_attr_in_temp_thresh_high_value, !39, !"iio_dev_attr_in_temp_thresh_high_value", i1 false, i1 false}
!41 = !{ptr @ad7280_attrs_group, !42, !"ad7280_attrs_group", i1 false, i1 false}
!42 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 499, i32 37}
!43 = !{ptr @ad7280_attributes, !44, !"ad7280_attributes", i1 false, i1 false}
!44 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 496, i32 26}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 607, i32 9}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 407, i32 22}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/iio/adc/ad7280a.c", i32 623, i32 9}
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
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{!"auto-init"}
