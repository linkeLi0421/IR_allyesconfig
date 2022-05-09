; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5360.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5360.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad5360_chip_info = type { %struct.iio_chan_spec, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.ad5360_state = type { ptr, ptr, [3 x %struct.regulator_bulk_data], i32, %struct.mutex, [116 x i8], [2 x %union.anon.85], [120 x i8] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%union.anon.85 = type { i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ad5360__290_559_ad5360_driver_init6 = internal global ptr @ad5360_driver_init, section ".initcall6.init", align 4
@ad5360_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5360_ids, ptr @ad5360_probe, ptr @ad5360_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5360_driver_exit = internal global ptr @ad5360_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad5360.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [66 x i8] c"ad5360.description=Analog Devices AD5360/61/62/63/70/71/72/73 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5360.file=drivers/iio/dac/ad5360\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5360.license=GPL v2\00", section ".modinfo", align 1
@ad5360_ids = internal constant { [9 x %struct.spi_device_id], [92 x i8] } { [9 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5360\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5361\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5362\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5363\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad5370\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad5371\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ad5372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"ad5373\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id zeroinitializer], [92 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5360\00", [25 x i8] zeroinitializer }, align 32
@ad5360_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5360_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5360.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5360_probe._entry_ptr = internal global ptr @ad5360_probe._entry, section ".printk_index", align 4
@ad5360_chip_info_tbl = internal constant { [8 x %struct.ad5360_chip_info], [192 x i8] } { [8 x %struct.ad5360_chip_info] [%struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 16, i32 8, i32 2 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 16, i32 8, i32 2 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 8, i32 4, i32 2 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 8, i32 4, i32 2 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 40, i32 8, i32 2 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 40, i32 8, i32 3 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 32, i32 8, i32 2 }, %struct.ad5360_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, i32 32, i32 8, i32 2 }], [192 x i8] zeroinitializer }, align 32
@ad5360_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad5360_attribute_group, ptr @ad5360_read_raw, ptr null, ptr null, ptr @ad5360_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5360_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5360_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate channel spec: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ad5360_probe._entry_ptr.9 = internal global ptr @ad5360_probe._entry.7, section ".printk_index", align 4
@ad5360_vref_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@ad5360_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request vref regulators: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ad5360_probe._entry_ptr.12 = internal global ptr @ad5360_probe._entry.10, section ".printk_index", align 4
@ad5360_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable vref regulators: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ad5360_probe._entry_ptr.15 = internal global ptr @ad5360_probe._entry.13, section ".printk_index", align 4
@ad5360_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register iio device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ad5360_probe._entry_ptr.18 = internal global ptr @ad5360_probe._entry.16, section ".printk_index", align 4
@ad5360_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad5360_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad5360_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_out_voltage_powerdown, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_voltage_powerdown = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad5360_read_dac_powerdown, ptr @ad5360_write_dac_powerdown }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"out_voltage_powerdown\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vref0\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vref1\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vref2\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"ad5360_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 551, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"ad5360_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 538, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 553, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 469, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"ad5360_chip_info_tbl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 119, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"ad5360_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 426, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 484, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 488, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"ad5360_vref_name\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 432, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 498, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 504, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 510, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [23 x i8] c"ad5360_attribute_group\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 309, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"ad5360_attributes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 304, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant [35 x i8] c"iio_dev_attr_out_voltage_powerdown\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 299, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 258, i32 25 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 433, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 433, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [28 x i8] c"../drivers/iio/dac/ad5360.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 433, i32 21 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5360_driver_exit, ptr @__initcall__kmod_ad5360__290_559_ad5360_driver_init6, ptr @ad5360_driver_exit, ptr @ad5360_probe._entry, ptr @ad5360_probe._entry.10, ptr @ad5360_probe._entry.13, ptr @ad5360_probe._entry.16, ptr @ad5360_probe._entry.7, ptr @ad5360_probe._entry_ptr, ptr @ad5360_probe._entry_ptr.12, ptr @ad5360_probe._entry_ptr.15, ptr @ad5360_probe._entry_ptr.18, ptr @ad5360_probe._entry_ptr.9, ptr @ad5360_driver, ptr @ad5360_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad5360_chip_info_tbl, ptr @ad5360_info, ptr @ad5360_probe.__key, ptr @.str.6, ptr @.str.8, ptr @ad5360_vref_name, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @ad5360_attribute_group, ptr @ad5360_attributes, ptr @iio_dev_attr_out_voltage_powerdown, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_ids to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_chip_info_tbl to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_vref_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5360_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_voltage_powerdown to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5360_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5360_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5360_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #7
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr [8 x %struct.ad5360_chip_info], ptr @ad5360_chip_info_tbl, i32 0, i32 %1
  %chip_info = getelementptr inbounds %struct.ad5360_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %chip_info, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %3, align 128
  %call5 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %7 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %name6, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ad5360_info, ptr %info, align 8
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call1, align 8
  %10 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad5360_chip_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels, align 4
  %num_channels8 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_channels8, align 4
  %lock = getelementptr inbounds %struct.ad5360_state, ptr %3, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ad5360_probe.__key) #7
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %chip_info.i = getelementptr inbounds %struct.ad5360_state, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_info.i, align 4
  %num_channels.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_channels.i, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 88) #7
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end.do.end16_crit_edge, label %if.end7.i.i.i, !prof !73

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end7.i.i.i:                                    ; preds = %if.end
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.do.end16_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.do.end16_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %24 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info.i, align 4
  %num_channels325.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %num_channels325.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_channels325.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp26.not.i = icmp eq i32 %27, 0
  br i1 %cmp26.not.i, label %for.cond.preheader.i.ad5360_alloc_channels.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ad5360_alloc_channels.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_alloc_channels.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %28 = phi ptr [ %33, %for.body.i.for.body.i_crit_edge ], [ %25, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iio_chan_spec, ptr %call8.i.i.i, i32 %i.027.i
  %29 = call ptr @memcpy(ptr %arrayidx.i, ptr %28, i32 88)
  %channel.i = getelementptr %struct.iio_chan_spec, ptr %call8.i.i.i, i32 %i.027.i, i32 1
  %30 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.027.i, ptr %channel.i, align 4
  %add.i = add i32 %i.027.i, 8
  %address.i = getelementptr %struct.iio_chan_spec, ptr %call8.i.i.i, i32 %i.027.i, i32 3
  %31 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %address.i, align 4
  %inc.i = add nuw i32 %i.027.i, 1
  %32 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip_info.i, align 4
  %num_channels3.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %num_channels3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_channels3.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ad5360_alloc_channels.exit_crit_edge

for.body.i.ad5360_alloc_channels.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_alloc_channels.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ad5360_alloc_channels.exit:                       ; preds = %for.body.i.ad5360_alloc_channels.exit_crit_edge, %for.cond.preheader.i.ad5360_alloc_channels.exit_crit_edge
  %channels7.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %36 = ptrtoint ptr %channels7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i.i, ptr %channels7.i, align 8
  %37 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip_info, align 4
  %num_vrefs111 = getelementptr inbounds %struct.ad5360_chip_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %num_vrefs111 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_vrefs111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp20112.not = icmp eq i32 %40, 0
  br i1 %cmp20112.not, label %ad5360_alloc_channels.exit.for.end_crit_edge, label %ad5360_alloc_channels.exit.for.body_crit_edge

ad5360_alloc_channels.exit.for.body_crit_edge:    ; preds = %ad5360_alloc_channels.exit
  br label %for.body

ad5360_alloc_channels.exit.for.end_crit_edge:     ; preds = %ad5360_alloc_channels.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end16:                                         ; preds = %if.end7.i.i.i.do.end16_crit_edge, %if.end.do.end16_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef -12) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ad5360_alloc_channels.exit.for.body_crit_edge
  %i.0113 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %ad5360_alloc_channels.exit.for.body_crit_edge ]
  %arrayidx21 = getelementptr [3 x ptr], ptr @ad5360_vref_name, i32 0, i32 %i.0113
  %41 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr %struct.ad5360_state, ptr %3, i32 0, i32 2, i32 %i.0113
  %43 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %arrayidx22, align 4
  %inc = add nuw i32 %i.0113, 1
  %44 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip_info, align 4
  %num_vrefs = getelementptr inbounds %struct.ad5360_chip_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %num_vrefs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_vrefs, align 4
  %cmp20 = icmp ult i32 %inc, %47
  br i1 %cmp20, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ad5360_alloc_channels.exit.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %ad5360_alloc_channels.exit.for.end_crit_edge ], [ %47, %for.body.for.end_crit_edge ]
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 128
  %vref_reg27 = getelementptr inbounds %struct.ad5360_state, ptr %3, i32 0, i32 2
  %call29 = tail call i32 @devm_regulator_bulk_get(ptr noundef %49, i32 noundef %.lcssa, ptr noundef %vref_reg27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %call29) #10
  br label %error_free_channels

if.end36:                                         ; preds = %for.end
  %50 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip_info, align 4
  %num_vrefs38 = getelementptr inbounds %struct.ad5360_chip_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %num_vrefs38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_vrefs38, align 4
  %call41 = tail call i32 @regulator_bulk_enable(i32 noundef %53, ptr noundef %vref_reg27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %call41) #10
  br label %error_free_channels

if.end48:                                         ; preds = %if.end36
  %call49 = tail call i32 @__iio_device_register(ptr noundef nonnull %call1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %do.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %call49) #10
  %54 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip_info, align 4
  %num_vrefs58 = getelementptr inbounds %struct.ad5360_chip_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %num_vrefs58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_vrefs58, align 4
  %call61 = tail call i32 @regulator_bulk_disable(i32 noundef %57, ptr noundef %vref_reg27) #7
  br label %error_free_channels

error_free_channels:                              ; preds = %do.end54, %do.end46, %do.end34
  %ret.0 = phi i32 [ %call29, %do.end34 ], [ %call41, %do.end46 ], [ %call49, %do.end54 ]
  %58 = ptrtoint ptr %channels7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels7.i, align 8
  tail call void @kfree(ptr noundef %59) #7
  br label %cleanup

cleanup:                                          ; preds = %error_free_channels, %if.end48.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end16 ], [ %ret.0, %error_free_channels ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 8
  tail call void @kfree(ptr noundef %5) #7
  %chip_info = getelementptr inbounds %struct.ad5360_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info, align 4
  %num_vrefs = getelementptr inbounds %struct.ad5360_chip_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_vrefs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vrefs, align 4
  %vref_reg = getelementptr inbounds %struct.ad5360_state, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef %9, ptr noundef %vref_reg) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
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
    i32 2, label %sw.bb2
    i32 5, label %sw.bb10
    i32 4, label %sw.bb17
    i32 3, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %call1 = tail call fastcc i32 @ad5360_read(ptr noundef %indio_dev, i32 noundef 0, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 1
  %conv = zext i8 %6 to i32
  %shr69 = lshr i32 %call1, %conv
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr69, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %chip_info.i.i = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_info.i.i, align 4
  %channels_per_group.i.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %channels_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels_per_group.i.i, align 4
  %div.i.i = udiv i32 %9, %13
  %num_vrefs.i.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %num_vrefs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vrefs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %15)
  %cmp.not.i.i = icmp ult i32 %div.i.i, %15
  %sub.i.i = add i32 %15, -1
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 %div.i.i, i32 %sub.i.i
  %consumer.i = getelementptr %struct.ad5360_state, ptr %1, i32 0, i32 2, i32 %spec.select.i.i, i32 1
  %16 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %consumer.i, align 4
  %call1.i = tail call i32 @regulator_get_voltage(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4 = icmp slt i32 %call1.i, 0
  br i1 %cmp4, label %sw.bb2.cleanup_crit_edge, label %if.end7

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %call1.i, 2
  %div = sdiv i32 %mul, 1000
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %realbits, align 1
  %conv9 = zext i8 %20 to i32
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv9, ptr %val2, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %address11 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %address11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address11, align 4
  %call12 = tail call fastcc i32 @ad5360_read(ptr noundef %indio_dev, i32 noundef 2, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %sw.bb10.cleanup_crit_edge, label %if.end16

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call12, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %address18 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %25 = ptrtoint ptr %address18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address18, align 4
  %call19 = tail call fastcc i32 @ad5360_read(ptr noundef %indio_dev, i32 noundef 3, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %sw.bb17.cleanup_crit_edge, label %if.end23

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call19, ptr %val, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %channel25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %28 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel25, align 4
  %chip_info.i = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip_info.i, align 4
  %channels_per_group.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %channels_per_group.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels_per_group.i, align 4
  %div.i = udiv i32 %29, %33
  %num_vrefs.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %num_vrefs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_vrefs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %35)
  %cmp.not.i = icmp ult i32 %div.i, %35
  %sub.i = add i32 %35, -1
  %spec.select.i = select i1 %cmp.not.i, i32 %div.i, i32 %sub.i
  %add = add i32 %spec.select.i, 2
  %call27 = tail call fastcc i32 @ad5360_read(ptr noundef %indio_dev, i32 noundef 4, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %sw.bb24.cleanup_crit_edge, label %if.end31

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %realbits33 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %realbits33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %realbits33, align 1
  %conv34 = zext i8 %37 to i32
  %sub = add nsw i32 %conv34, -14
  %shl = shl i32 %call27, %sub
  %sub35 = sub i32 0, %shl
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub35, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %sw.bb24.cleanup_crit_edge, %if.end23, %sw.bb17.cleanup_crit_edge, %if.end16, %sw.bb10.cleanup_crit_edge, %if.end7, %sw.bb2.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 1, %if.end23 ], [ 1, %if.end16 ], [ 11, %if.end7 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call1.i, %sw.bb2.cleanup_crit_edge ], [ %call12, %sw.bb10.cleanup_crit_edge ], [ %call19, %sw.bb17.cleanup_crit_edge ], [ %call27, %sw.bb24.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i121 = alloca %struct.spi_message, align 4
  %t.i.i.i122 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i101 = alloca %struct.spi_message, align 4
  %t.i.i.i102 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i81 = alloca %struct.spi_message, align 4
  %t.i.i.i82 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 5, label %sw.bb7
    i32 4, label %sw.bb20
    i32 3, label %sw.bb33
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp.not = icmp sle i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 1
  %conv5 = zext i8 %8 to i32
  %lock.i = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %shl.i.i = shl i32 %val, %conv5
  %shl2.i.i = shl i32 %6, 16
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %or3.i.i = or i32 %or.i.i, 12582912
  %data.i.i = getelementptr inbounds %struct.ad5360_state, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or3.i.i, ptr %data.i.i, align 128
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 128
  %arrayidx6.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %14 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx6.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %18 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.ad5360_write.exit_crit_edge

if.end.ad5360_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5360_write.exit

ad5360_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.ad5360_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp8.not = icmp sle i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp11 = icmp slt i32 %val, 0
  %or.cond78 = or i1 %cmp11, %cmp8.not
  br i1 %or.cond78, label %sw.bb7.cleanup_crit_edge, label %if.end14

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %sw.bb7
  %address15 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %28 = ptrtoint ptr %address15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address15, align 4
  %shift17 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %shift17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift17, align 1
  %conv18 = zext i8 %31 to i32
  %lock.i84 = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i84, i32 noundef 0) #7
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  %shl.i.i85 = shl i32 %val, %conv18
  %shl2.i.i86 = shl i32 %29, 16
  %or.i.i87 = or i32 %shl2.i.i86, %shl.i.i85
  %or3.i.i88 = or i32 %or.i.i87, 8388608
  %data.i.i89 = getelementptr inbounds %struct.ad5360_state, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %data.i.i89 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or3.i.i88, ptr %data.i.i89, align 128
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %33, align 128
  %arrayidx6.i.i90 = getelementptr [4 x i8], ptr %data.i.i89, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i82) #7
  %37 = getelementptr inbounds i8, ptr %t.i.i.i82, i32 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 92)
  %39 = ptrtoint ptr %t.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx6.i.i90, ptr %t.i.i.i82, align 4
  %len1.i.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i82, i32 0, i32 2
  %40 = ptrtoint ptr %len1.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %len1.i.i.i91, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i81) #7
  %41 = getelementptr inbounds i8, ptr %msg.i.i.i.i81, i32 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 40)
  %43 = ptrtoint ptr %msg.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %msg.i.i.i.i81, ptr %msg.i.i.i.i81, align 4
  %prev.i.i.i.i.i.i.i.i92 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i81, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i.i81, ptr %prev.i.i.i.i.i.i.i.i92, align 4
  %resources.i.i.i.i.i.i.i93 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i81, i32 0, i32 10
  %45 = ptrtoint ptr %resources.i.i.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %resources.i.i.i.i.i.i.i93, ptr %resources.i.i.i.i.i.i.i93, align 4
  %prev.i2.i.i.i.i.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i81, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %resources.i.i.i.i.i.i.i93, ptr %prev.i2.i.i.i.i.i.i.i94, align 4
  %transfer_list.i.i.i.i.i.i95 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i82, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i96 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i95, ptr noundef nonnull %msg.i.i.i.i81, ptr noundef nonnull %msg.i.i.i.i81) #7
  br i1 %call.i.i.i.i.i.i.i.i96, label %if.end.i.i.i.i.i.i.i.i98, label %if.end14.ad5360_write.exit100_crit_edge

if.end14.ad5360_write.exit100_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_write.exit100

if.end.i.i.i.i.i.i.i.i98:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %transfer_list.i.i.i.i.i.i95, ptr %prev.i.i.i.i.i.i.i.i92, align 4
  %48 = ptrtoint ptr %transfer_list.i.i.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i.i81, ptr %transfer_list.i.i.i.i.i.i95, align 4
  %prev3.i.i.i.i.i.i.i.i97 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i82, i32 0, i32 18, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i.i.i81, ptr %prev3.i.i.i.i.i.i.i.i97, align 4
  %50 = ptrtoint ptr %msg.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %transfer_list.i.i.i.i.i.i95, ptr %msg.i.i.i.i81, align 4
  br label %ad5360_write.exit100

ad5360_write.exit100:                             ; preds = %if.end.i.i.i.i.i.i.i.i98, %if.end14.ad5360_write.exit100_crit_edge
  %call.i.i.i.i99 = call i32 @spi_sync(ptr noundef %36, ptr noundef nonnull %msg.i.i.i.i81) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i81) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i82) #7
  br label %cleanup.sink.split

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp21.not = icmp sle i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp24 = icmp slt i32 %val, 0
  %or.cond79 = or i1 %cmp24, %cmp21.not
  br i1 %or.cond79, label %sw.bb20.cleanup_crit_edge, label %if.end27

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %sw.bb20
  %address28 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %51 = ptrtoint ptr %address28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %address28, align 4
  %shift30 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %53 = ptrtoint ptr %shift30 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %shift30, align 1
  %conv31 = zext i8 %54 to i32
  %lock.i104 = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i104, i32 noundef 0) #7
  %55 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i, align 8
  %shl.i.i105 = shl i32 %val, %conv31
  %shl2.i.i106 = shl i32 %52, 16
  %or.i.i107 = or i32 %shl2.i.i106, %shl.i.i105
  %or3.i.i108 = or i32 %or.i.i107, 4194304
  %data.i.i109 = getelementptr inbounds %struct.ad5360_state, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %data.i.i109 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or3.i.i108, ptr %data.i.i109, align 128
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %56, align 128
  %arrayidx6.i.i110 = getelementptr [4 x i8], ptr %data.i.i109, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i102) #7
  %60 = getelementptr inbounds i8, ptr %t.i.i.i102, i32 4
  %61 = call ptr @memset(ptr %60, i32 0, i32 92)
  %62 = ptrtoint ptr %t.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx6.i.i110, ptr %t.i.i.i102, align 4
  %len1.i.i.i111 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i102, i32 0, i32 2
  %63 = ptrtoint ptr %len1.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %len1.i.i.i111, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i101) #7
  %64 = getelementptr inbounds i8, ptr %msg.i.i.i.i101, i32 8
  %65 = call ptr @memset(ptr %64, i32 0, i32 40)
  %66 = ptrtoint ptr %msg.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %msg.i.i.i.i101, ptr %msg.i.i.i.i101, align 4
  %prev.i.i.i.i.i.i.i.i112 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i101, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i.i101, ptr %prev.i.i.i.i.i.i.i.i112, align 4
  %resources.i.i.i.i.i.i.i113 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i101, i32 0, i32 10
  %68 = ptrtoint ptr %resources.i.i.i.i.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %resources.i.i.i.i.i.i.i113, ptr %resources.i.i.i.i.i.i.i113, align 4
  %prev.i2.i.i.i.i.i.i.i114 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i101, i32 0, i32 10, i32 1
  %69 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %resources.i.i.i.i.i.i.i113, ptr %prev.i2.i.i.i.i.i.i.i114, align 4
  %transfer_list.i.i.i.i.i.i115 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i102, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i116 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i115, ptr noundef nonnull %msg.i.i.i.i101, ptr noundef nonnull %msg.i.i.i.i101) #7
  br i1 %call.i.i.i.i.i.i.i.i116, label %if.end.i.i.i.i.i.i.i.i118, label %if.end27.ad5360_write.exit120_crit_edge

if.end27.ad5360_write.exit120_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_write.exit120

if.end.i.i.i.i.i.i.i.i118:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i.i.i.i.i.i115, ptr %prev.i.i.i.i.i.i.i.i112, align 4
  %71 = ptrtoint ptr %transfer_list.i.i.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i.i.i101, ptr %transfer_list.i.i.i.i.i.i115, align 4
  %prev3.i.i.i.i.i.i.i.i117 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i102, i32 0, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i.i101, ptr %prev3.i.i.i.i.i.i.i.i117, align 4
  %73 = ptrtoint ptr %msg.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i.i.i.i.i.i115, ptr %msg.i.i.i.i101, align 4
  br label %ad5360_write.exit120

ad5360_write.exit120:                             ; preds = %if.end.i.i.i.i.i.i.i.i118, %if.end27.ad5360_write.exit120_crit_edge
  %call.i.i.i.i119 = call i32 @spi_sync(ptr noundef %59, ptr noundef nonnull %msg.i.i.i.i101) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i101) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i102) #7
  br label %cleanup.sink.split

sw.bb33:                                          ; preds = %entry
  %sub = sub i32 0, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %val)
  %cmp34.not = icmp sge i32 %sub, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp37 = icmp sgt i32 %val, 0
  %or.cond80 = or i1 %cmp37, %cmp34.not
  br i1 %or.cond80, label %sw.bb33.cleanup_crit_edge, label %if.end40

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %sw.bb33
  %sub41 = sub nsw i32 0, %val
  %sub45 = add nsw i32 %conv, -14
  %shr139 = lshr i32 %sub41, %sub45
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %74 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel, align 4
  %chip_info.i = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chip_info.i, align 4
  %channels_per_group.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %channels_per_group.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channels_per_group.i, align 4
  %div.i = udiv i32 %75, %79
  %num_vrefs.i = getelementptr inbounds %struct.ad5360_chip_info, ptr %77, i32 0, i32 3
  %80 = ptrtoint ptr %num_vrefs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_vrefs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %81)
  %cmp.not.i = icmp ult i32 %div.i, %81
  %sub.i = add i32 %81, 65535
  %spec.select.i = select i1 %cmp.not.i, i32 %div.i, i32 %sub.i
  %lock.i124 = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i124, i32 noundef 0) #7
  %82 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv.i, align 8
  %add = shl i32 %spec.select.i, 16
  %shl2.i.i125 = add i32 %add, 131072
  %or3.i.i126 = or i32 %shl2.i.i125, %shr139
  %data.i.i127 = getelementptr inbounds %struct.ad5360_state, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %data.i.i127 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or3.i.i126, ptr %data.i.i127, align 128
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %83, align 128
  %arrayidx6.i.i128 = getelementptr [4 x i8], ptr %data.i.i127, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i122) #7
  %87 = getelementptr inbounds i8, ptr %t.i.i.i122, i32 4
  %88 = call ptr @memset(ptr %87, i32 0, i32 92)
  %89 = ptrtoint ptr %t.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx6.i.i128, ptr %t.i.i.i122, align 4
  %len1.i.i.i129 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i122, i32 0, i32 2
  %90 = ptrtoint ptr %len1.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %len1.i.i.i129, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i121) #7
  %91 = getelementptr inbounds i8, ptr %msg.i.i.i.i121, i32 8
  %92 = call ptr @memset(ptr %91, i32 0, i32 40)
  %93 = ptrtoint ptr %msg.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %msg.i.i.i.i121, ptr %msg.i.i.i.i121, align 4
  %prev.i.i.i.i.i.i.i.i130 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i121, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i.i.i121, ptr %prev.i.i.i.i.i.i.i.i130, align 4
  %resources.i.i.i.i.i.i.i131 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i121, i32 0, i32 10
  %95 = ptrtoint ptr %resources.i.i.i.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %resources.i.i.i.i.i.i.i131, ptr %resources.i.i.i.i.i.i.i131, align 4
  %prev.i2.i.i.i.i.i.i.i132 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i121, i32 0, i32 10, i32 1
  %96 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i132 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %resources.i.i.i.i.i.i.i131, ptr %prev.i2.i.i.i.i.i.i.i132, align 4
  %transfer_list.i.i.i.i.i.i133 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i122, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i134 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i133, ptr noundef nonnull %msg.i.i.i.i121, ptr noundef nonnull %msg.i.i.i.i121) #7
  br i1 %call.i.i.i.i.i.i.i.i134, label %if.end.i.i.i.i.i.i.i.i136, label %if.end40.ad5360_write.exit138_crit_edge

if.end40.ad5360_write.exit138_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_write.exit138

if.end.i.i.i.i.i.i.i.i136:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %transfer_list.i.i.i.i.i.i133, ptr %prev.i.i.i.i.i.i.i.i130, align 4
  %98 = ptrtoint ptr %transfer_list.i.i.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i.i.i121, ptr %transfer_list.i.i.i.i.i.i133, align 4
  %prev3.i.i.i.i.i.i.i.i135 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i122, i32 0, i32 18, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %msg.i.i.i.i121, ptr %prev3.i.i.i.i.i.i.i.i135, align 4
  %100 = ptrtoint ptr %msg.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %transfer_list.i.i.i.i.i.i133, ptr %msg.i.i.i.i121, align 4
  br label %ad5360_write.exit138

ad5360_write.exit138:                             ; preds = %if.end.i.i.i.i.i.i.i.i136, %if.end40.ad5360_write.exit138_crit_edge
  %call.i.i.i.i137 = call i32 @spi_sync(ptr noundef %86, ptr noundef nonnull %msg.i.i.i.i121) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i121) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i122) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ad5360_write.exit138, %ad5360_write.exit120, %ad5360_write.exit100, %ad5360_write.exit
  %lock.i124.sink = phi ptr [ %lock.i124, %ad5360_write.exit138 ], [ %lock.i104, %ad5360_write.exit120 ], [ %lock.i84, %ad5360_write.exit100 ], [ %lock.i, %ad5360_write.exit ]
  %retval.0.ph = phi i32 [ %call.i.i.i.i137, %ad5360_write.exit138 ], [ %call.i.i.i.i119, %ad5360_write.exit120 ], [ %call.i.i.i.i99, %ad5360_write.exit100 ], [ %call.i.i.i.i, %ad5360_write.exit ]
  call void @mutex_unlock(ptr noundef %lock.i124.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb33.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_read_dac_powerdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %and = and i32 %3, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %and) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5360_write_dac_powerdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #7
  %0 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pwr_down, align 1, !annotation !74
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pwr_down, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call fastcc i32 @ad5360_update_ctrl(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call fastcc i32 @ad5360_update_ctrl(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7.not = icmp eq i32 %ret.0, 0
  %len.ret.0 = select i1 %tobool7.not, i32 %len, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.ret.0, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5360_update_ctrl(ptr nocapture noundef readonly %indio_dev, i32 noundef %set, i32 noundef %clr) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %ctrl = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %or = or i32 %3, %set
  %neg = xor i32 %clr, -1
  %and = and i32 %or, %neg
  store i32 %and, ptr %ctrl, align 4
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %or3.i = or i32 %and, 65536
  %data.i = getelementptr inbounds %struct.ad5360_state, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3.i, ptr %data.i, align 128
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 128
  %arrayidx6.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx6.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
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
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad5360_write_unlocked.exit_crit_edge

entry.ad5360_write_unlocked.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5360_write_unlocked.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  br label %ad5360_write_unlocked.exit

ad5360_write_unlocked.exit:                       ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad5360_write_unlocked.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5360_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %type, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %data = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 6
  %arrayidx1 = getelementptr [4 x i8], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx1, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %cs_change, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %arrayidx4 = getelementptr %struct.ad5360_state, ptr %1, i32 0, i32 6, i32 1
  %arrayidx5 = getelementptr [4 x i8], ptr %arrayidx4, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx5, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %8 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len6, align 4
  %lock = getelementptr inbounds %struct.ad5360_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %shl = shl i32 %type, 13
  %shl11 = shl i32 %addr, 7
  %or = or i32 %shl, %shl11
  %or12 = or i32 %or, 327680
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or12, ptr %data, align 128
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %23, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.i.i.1, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.1, ptr %23, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then, label %spi_message_add_tail.exit.i.i.1.if.end_crit_edge

spi_message_add_tail.exit.i.i.1.if.end_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %29, 65535
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_message_add_tail.exit.i.i.1.if.end_crit_edge
  %ret.0 = phi i32 [ %and, %if.then ], [ %call.i, %spi_message_add_tail.exit.i.i.1.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_ad5360__290_559_ad5360_driver_init6, !1, !"__initcall__kmod_ad5360__290_559_ad5360_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5360.c", i32 559, i32 1}
!2 = !{ptr @__exitcall_ad5360_driver_exit, !1, !"__exitcall_ad5360_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5360.c", i32 561, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5360.c", i32 562, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5360.c", i32 563, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5360.c", i32 553, i32 14}
!12 = !{ptr @ad5360_driver, !13, !"ad5360_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5360.c", i32 551, i32 26}
!14 = !{ptr @ad5360_ids, !15, !"ad5360_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5360.c", i32 538, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5360.c", i32 469, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad5360_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad5360_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ad5360_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/dac/ad5360.c", i32 484, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5360.c", i32 488, i32 3}
!29 = !{ptr @ad5360_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ad5360_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ad5360.c", i32 498, i32 3}
!33 = !{ptr @ad5360_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ad5360_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/ad5360.c", i32 504, i32 3}
!37 = !{ptr @ad5360_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ad5360_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/ad5360.c", i32 510, i32 3}
!41 = !{ptr @ad5360_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ad5360_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ad5360_chip_info_tbl, !44, !"ad5360_chip_info_tbl", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/ad5360.c", i32 119, i32 38}
!45 = !{ptr @ad5360_info, !46, !"ad5360_info", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/ad5360.c", i32 426, i32 30}
!47 = !{ptr @ad5360_attribute_group, !48, !"ad5360_attribute_group", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ad5360.c", i32 309, i32 37}
!49 = !{ptr @ad5360_attributes, !50, !"ad5360_attributes", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/ad5360.c", i32 304, i32 26}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/ad5360.c", i32 299, i32 8}
!53 = !{ptr @iio_dev_attr_out_voltage_powerdown, !52, !"iio_dev_attr_out_voltage_powerdown", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/dac/ad5360.c", i32 258, i32 25}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/dac/ad5360.c", i32 433, i32 3}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/dac/ad5360.c", i32 433, i32 12}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/dac/ad5360.c", i32 433, i32 21}
!62 = !{ptr @ad5360_vref_name, !63, !"ad5360_vref_name", i1 false, i1 false}
!63 = !{!"../drivers/iio/dac/ad5360.c", i32 432, i32 27}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
