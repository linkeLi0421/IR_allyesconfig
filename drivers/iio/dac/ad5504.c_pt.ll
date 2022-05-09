; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5504.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5504.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad5504_state = type { ptr, ptr, i16, i32, i32, [108 x i8], [2 x i16], [124 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad5504__290_367_ad5504_driver_init6 = internal global ptr @ad5504_driver_init, section ".initcall6.init", align 4
@ad5504_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5504_id, ptr @ad5504_probe, ptr @ad5504_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5504_driver_exit = internal global ptr @ad5504_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad5504.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [52 x i8] c"ad5504.description=Analog Devices AD5501/AD5501 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5504.file=drivers/iio/dac/ad5504\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5504.license=GPL v2\00", section ".modinfo", align 1
@ad5504_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5504\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5504\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@ad5504_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reference voltage unspecified\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5504_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5504.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5504_probe._entry_ptr = internal global ptr @ad5504_probe._entry, section ".printk_index", align 4
@ad5504_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @ad5504_ev_attribute_group, ptr null, ptr @ad5504_read_raw, ptr null, ptr null, ptr @ad5504_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5504_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5504_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 2, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5504_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 3, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5504_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 4, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5504_ext_info, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@ad5504_ev_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad5504_ev_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad5504_ev_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_temp0_thresh_rising_value, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_temp0_thresh_rising_en, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_temp0_thresh_rising_value = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.7, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_temp0_thresh_rising_en = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.9, %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"110000\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"temp0_thresh_rising_value\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp0_thresh_rising_en\00", [41 x i8] zeroinitializer }, align 32
@ad5504_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.11, i32 0, ptr @ad5504_read_dac_powerdown, ptr @ad5504_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.12, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad5504_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.13, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad5504_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@ad5504_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad5504_powerdown_modes, i32 2, ptr @ad5504_set_powerdown_mode, ptr @ad5504_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad5504_powerdown_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"20kohm_to_gnd\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"ad5504_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 359, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"ad5504_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 352, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 361, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 282, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 302, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"ad5504_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 229, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"ad5504_channels\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 264, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"ad5504_ev_attribute_group\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 213, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"ad5504_ev_attributes\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 207, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [41 x i8] c"iio_const_attr_temp0_thresh_rising_value\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [38 x i8] c"iio_const_attr_temp0_thresh_rising_en\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 204, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 205, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"ad5504_ext_info\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 235, i32 44 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 237, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 242, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"ad5504_powerdown_mode_enum\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 161, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 244, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 173, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"ad5504_powerdown_modes\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 138, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 139, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [28 x i8] c"../drivers/iio/dac/ad5504.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 140, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5504_driver_exit, ptr @__initcall__kmod_ad5504__290_367_ad5504_driver_init6, ptr @ad5504_driver_exit, ptr @ad5504_probe._entry, ptr @ad5504_probe._entry_ptr, ptr @ad5504_driver, ptr @ad5504_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad5504_info, ptr @ad5504_channels, ptr @ad5504_ev_attribute_group, ptr @ad5504_ev_attributes, ptr @iio_const_attr_temp0_thresh_rising_value, ptr @iio_const_attr_temp0_thresh_rising_en, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ad5504_ext_info, ptr @.str.11, ptr @.str.12, ptr @ad5504_powerdown_mode_enum, ptr @.str.13, ptr @.str.14, ptr @ad5504_powerdown_modes, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_ev_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_ev_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_temp0_thresh_rising_value to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_temp0_thresh_rising_en to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5504_powerdown_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5504_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5504_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5504_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.thread, label %if.then5

if.end13.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i104 = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i104 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i104, align 4
  %priv.i105 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i105 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i105, align 8
  br label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @regulator_enable(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %call10 = tail call i32 @regulator_get_voltage(ptr noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.if.then56_crit_edge, label %if.end13

if.end9.if.then56_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

if.end13:                                         ; preds = %if.end9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool15.not = icmp eq i32 %call10, 0
  br i1 %tobool15.not, label %if.end13.if.else_crit_edge, label %if.then16

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %div109 = udiv i32 %call10, 1000
  %conv = trunc i32 %div109 to i16
  %vref_mv = getelementptr inbounds %struct.ad5504_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %vref_mv, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %if.end13.thread
  %9 = phi ptr [ %4, %if.end13.thread ], [ %7, %if.end13.if.else_crit_edge ]
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %do.end, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 2
  %vref_mv20 = getelementptr inbounds %struct.ad5504_state, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %vref_mv20 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %vref_mv20, align 8
  br label %if.end24

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.2) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then18, %if.then16
  %13 = phi ptr [ %9, %if.then18 ], [ %9, %do.end ], [ %7, %if.then16 ]
  %reg25 = getelementptr inbounds %struct.ad5504_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %reg25, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spi, ptr %13, align 128
  %call28 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name29 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %16 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %name29, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ad5504_info, ptr %info, align 8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 128
  %call31 = tail call ptr @spi_get_device_id(ptr noundef %19) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call31, i32 0, i32 1
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp32 = icmp eq i32 %21, 1
  %spec.select = select i1 %cmp32, i32 1, i32 4
  %22 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %22, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ad5504_channels, ptr %channels, align 8
  %25 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool38.not = icmp eq i32 %27, 0
  br i1 %tobool38.not, label %if.end24.if.end50_crit_edge, label %if.then39

if.end24.if.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then39:                                        ; preds = %if.end24
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %13, align 128
  %call43 = tail call ptr @spi_get_device_id(ptr noundef %29) #7
  %call46 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %27, ptr noundef null, ptr noundef nonnull @ad5504_event_handler, i32 noundef 8194, ptr noundef %call43, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then39.if.end50_crit_edge, label %if.then39.error_disable_reg_crit_edge

if.then39.error_disable_reg_crit_edge:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_reg

if.then39.if.end50_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50:                                         ; preds = %if.then39.if.end50_crit_edge, %if.end24.if.end50_crit_edge
  %call51 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.end50.error_disable_reg_crit_edge

if.end50.error_disable_reg_crit_edge:             ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_reg

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error_disable_reg:                                ; preds = %if.end50.error_disable_reg_crit_edge, %if.then39.error_disable_reg_crit_edge
  %ret.0 = phi i32 [ %call46, %if.then39.error_disable_reg_crit_edge ], [ %call51, %if.end50.error_disable_reg_crit_edge ]
  br i1 %cmp.i, label %error_disable_reg.cleanup_crit_edge, label %error_disable_reg.if.then56_crit_edge

error_disable_reg.if.then56_crit_edge:            ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then56

error_disable_reg.cleanup_crit_edge:              ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %error_disable_reg.if.then56_crit_edge, %if.end9.if.then56_crit_edge
  %ret.0108 = phi i32 [ %ret.0, %error_disable_reg.if.then56_crit_edge ], [ %call10, %if.end9.if.then56_crit_edge ]
  %call57 = tail call i32 @regulator_disable(ptr noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %error_disable_reg.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ %ret.0108, %if.then56 ], [ %ret.0, %error_disable_reg.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %reg = getelementptr inbounds %struct.ad5504_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @regulator_disable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @iio_get_time_ns(ptr noundef %private) #7
  %call1 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 281513631416320, i64 noundef %call) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
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
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %5 = getelementptr inbounds i8, ptr %t.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 84)
  %data.i = getelementptr inbounds %struct.ad5504_state, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %t.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %arrayidx2.i = getelementptr %struct.ad5504_state, ptr %1, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx2.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len.i, align 4
  %10 = trunc i32 %4 to i16
  %shl.i = shl i16 %10, 12
  %or.i = or i16 %shl.i, -32768
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or.i, ptr %data.i, align 128
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.bb.spi_sync_transfer.exit.i_crit_edge

sw.bb.spi_sync_transfer.exit.i_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %sw.bb.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5504_spi_read.exit.thread, label %ad5504_spi_read.exit

ad5504_spi_read.exit.thread:                      ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  br label %cleanup

ad5504_spi_read.exit:                             ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx2.i, align 2
  %26 = and i16 %25, 4095
  %and.i = zext i16 %26 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vref_mv = getelementptr inbounds %struct.ad5504_state, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vref_mv, align 8
  %conv4 = zext i16 %29 to i32
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv4, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %realbits, align 1
  %conv5 = zext i8 %32 to i32
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv5, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %ad5504_spi_read.exit, %ad5504_spi_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb3 ], [ 1, %ad5504_spi_read.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ad5504_spi_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
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
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %conv5 = trunc i32 %val to i16
  %6 = trunc i32 %5 to i16
  %shl.i = shl i16 %6, 12
  %7 = and i16 %conv5, 4095
  %or2.i = or i16 %shl.i, %7
  %data.i = getelementptr inbounds %struct.ad5504_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or2.i, ptr %data.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
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
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.ad5504_spi_write.exit_crit_edge

if.end.ad5504_spi_write.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5504_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  br label %ad5504_spi_write.exit

ad5504_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %if.end.ad5504_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ad5504_spi_write.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ad5504_spi_write.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mask = getelementptr inbounds %struct.ad5504_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pwr_down_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_down_mask, align 4
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = xor i32 %3, -1
  %7 = lshr i32 %6, %5
  %8 = and i32 %7, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %8) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5504_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i26 = alloca %struct.spi_message, align 4
  %t.i.i27 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #7
  %0 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pwr_down, align 1, !annotation !69
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %channel4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel4, align 4
  %shl5 = shl nuw i32 1, %6
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl5, -1
  %pwr_down_mask = getelementptr inbounds %struct.ad5504_state, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %pwr_down_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwr_down_mask, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %pwr_down_mask, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_down_mask6 = getelementptr inbounds %struct.ad5504_state, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %pwr_down_mask6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pwr_down_mask6, align 4
  %or = or i32 %10, %shl5
  store i32 %or, ptr %pwr_down_mask6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %pwr_down_mode = getelementptr inbounds %struct.ad5504_state, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pwr_down_mode, align 16
  %shl8 = shl i32 %12, 6
  %pwr_down_mask9 = getelementptr inbounds %struct.ad5504_state, ptr %2, i32 0, i32 3
  %13 = ptrtoint ptr %pwr_down_mask9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pwr_down_mask9, align 4
  %shl10 = shl i32 %14, 2
  %or11 = or i32 %shl10, %shl8
  %conv = trunc i32 %or11 to i16
  %15 = and i16 %conv, 4092
  %or2.i = or i16 %15, 28672
  %data.i = getelementptr inbounds %struct.ad5504_state, ptr %2, i32 0, i32 6
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or2.i, ptr %data.i, align 128
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %19 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
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
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end7.ad5504_spi_write.exit_crit_edge

if.end7.ad5504_spi_write.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5504_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
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
  br label %ad5504_spi_write.exit

ad5504_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %if.end7.ad5504_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %data.i, align 128
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i27) #7
  %36 = getelementptr inbounds i8, ptr %t.i.i27, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %38 = ptrtoint ptr %t.i.i27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %data.i, ptr %t.i.i27, align 4
  %len1.i.i29 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i27, i32 0, i32 2
  %39 = ptrtoint ptr %len1.i.i29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len1.i.i29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i26) #7
  %40 = getelementptr inbounds i8, ptr %msg.i.i.i26, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i.i.i26, ptr %msg.i.i.i26, align 4
  %prev.i.i.i.i.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i26, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i26, ptr %prev.i.i.i.i.i.i.i30, align 4
  %resources.i.i.i.i.i.i31 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i26, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i.i.i31, ptr %resources.i.i.i.i.i.i31, align 4
  %prev.i2.i.i.i.i.i.i32 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i26, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i.i.i31, ptr %prev.i2.i.i.i.i.i.i32, align 4
  %transfer_list.i.i.i.i.i33 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i27, i32 0, i32 18
  %call.i.i.i.i.i.i.i34 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i33, ptr noundef nonnull %msg.i.i.i26, ptr noundef nonnull %msg.i.i.i26) #7
  br i1 %call.i.i.i.i.i.i.i34, label %if.end.i.i.i.i.i.i.i36, label %ad5504_spi_write.exit.ad5504_spi_write.exit38_crit_edge

ad5504_spi_write.exit.ad5504_spi_write.exit38_crit_edge: ; preds = %ad5504_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5504_spi_write.exit38

if.end.i.i.i.i.i.i.i36:                           ; preds = %ad5504_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i.i33, ptr %prev.i.i.i.i.i.i.i30, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i26, ptr %transfer_list.i.i.i.i.i33, align 4
  %prev3.i.i.i.i.i.i.i35 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i27, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i26, ptr %prev3.i.i.i.i.i.i.i35, align 4
  %49 = ptrtoint ptr %msg.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i.i33, ptr %msg.i.i.i26, align 4
  br label %ad5504_spi_write.exit38

ad5504_spi_write.exit38:                          ; preds = %if.end.i.i.i.i.i.i.i36, %ad5504_spi_write.exit.ad5504_spi_write.exit38_crit_edge
  %call.i.i.i37 = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %msg.i.i.i26) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i26) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool14.not = icmp eq i32 %call.i.i.i, 0
  %len.call12 = select i1 %tobool14.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ad5504_spi_write.exit38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call12, %ad5504_spi_write.exit38 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5504_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mode = getelementptr inbounds %struct.ad5504_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %pwr_down_mode, align 16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5504_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mode = getelementptr inbounds %struct.ad5504_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_down_mode, align 16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_ad5504__290_367_ad5504_driver_init6, !1, !"__initcall__kmod_ad5504__290_367_ad5504_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5504.c", i32 367, i32 1}
!2 = !{ptr @__exitcall_ad5504_driver_exit, !1, !"__exitcall_ad5504_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5504.c", i32 369, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5504.c", i32 370, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5504.c", i32 371, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5504.c", i32 361, i32 14}
!12 = !{ptr @ad5504_driver, !13, !"ad5504_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5504.c", i32 359, i32 26}
!14 = !{ptr @ad5504_id, !15, !"ad5504_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5504.c", i32 352, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5504.c", i32 282, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ad5504.c", i32 302, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad5504_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad5504_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ad5504_info, !27, !"ad5504_info", i1 false, i1 false}
!27 = !{!"../drivers/iio/dac/ad5504.c", i32 229, i32 30}
!28 = !{ptr @ad5504_ev_attribute_group, !29, !"ad5504_ev_attribute_group", i1 false, i1 false}
!29 = !{!"../drivers/iio/dac/ad5504.c", i32 213, i32 37}
!30 = !{ptr @ad5504_ev_attributes, !31, !"ad5504_ev_attributes", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ad5504.c", i32 207, i32 26}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ad5504.c", i32 204, i32 8}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @iio_const_attr_temp0_thresh_rising_value, !33, !"iio_const_attr_temp0_thresh_rising_value", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/dac/ad5504.c", i32 205, i32 8}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @iio_const_attr_temp0_thresh_rising_en, !37, !"iio_const_attr_temp0_thresh_rising_en", i1 false, i1 false}
!40 = !{ptr @ad5504_channels, !41, !"ad5504_channels", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5504.c", i32 264, i32 35}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/ad5504.c", i32 237, i32 11}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5504.c", i32 242, i32 2}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/dac/ad5504.c", i32 244, i32 2}
!48 = !{ptr @ad5504_ext_info, !49, !"ad5504_ext_info", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ad5504.c", i32 235, i32 44}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5504.c", i32 173, i32 25}
!52 = !{ptr @ad5504_powerdown_mode_enum, !53, !"ad5504_powerdown_mode_enum", i1 false, i1 false}
!53 = !{!"../drivers/iio/dac/ad5504.c", i32 161, i32 30}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/dac/ad5504.c", i32 139, i32 2}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/dac/ad5504.c", i32 140, i32 2}
!58 = !{ptr @ad5504_powerdown_modes, !59, !"ad5504_powerdown_modes", i1 false, i1 false}
!59 = !{!"../drivers/iio/dac/ad5504.c", i32 138, i32 27}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i8 0, i8 2}
