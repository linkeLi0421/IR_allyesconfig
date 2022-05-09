; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7124.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7124.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ad_sigma_delta_info = type { ptr, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.ad7124_chip_info = type { ptr, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ad7124_state = type { ptr, [124 x i8], %struct.ad_sigma_delta, ptr, [4 x ptr], ptr, i32, i32, %struct.mutex, i32, %struct.anon.84, [76 x i8] }
%struct.ad_sigma_delta = type { ptr, ptr, %struct.completion, i8, i8, i8, i8, ptr, [56 x i8], [4 x i8], [4 x i8], [16 x i8], [104 x i8] }
%struct.anon.84 = type { %union.anon.85, [8 x ptr] }
%union.anon.85 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.ad7124_channel = type { i32, %struct.ad7124_channel_config, i32, i32 }
%struct.ad7124_channel_config = type { i8, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32 }

@__initcall__kmod_ad7124__370_968_ad71124_driver_init6 = internal global ptr @ad71124_driver_init, section ".initcall6.init", align 4
@ad71124_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad7124_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7124_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad71124_driver_exit = internal global ptr @ad71124_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author371 = internal constant [51 x i8] c"ad7124.author=Stefan Popa <stefan.popa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [52 x i8] c"ad7124.description=Analog Devices AD7124 SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [35 x i8] c"ad7124.file=drivers/iio/adc/ad7124\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [19 x i8] c"ad7124.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7124\00", [25 x i8] zeroinitializer }, align 32
@ad7124_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7124-4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ad7124_chip_info_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7124-8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ad7124_chip_info_tbl, i64 12) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ad7124_sigma_delta_info = internal constant { %struct.ad_sigma_delta_info, [32 x i8] } { %struct.ad_sigma_delta_info { ptr @ad7124_set_channel, ptr @ad7124_set_mode, ptr null, i8 1, i32 0, i32 64, i32 2, i32 2 }, [32 x i8] zeroinitializer }, align 32
@ad7124_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7124_attrs_group, ptr @ad7124_read_raw, ptr null, ptr null, ptr @ad7124_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad_sd_validate_trigger, ptr null, ptr @ad7124_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7124_ref_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@ad7124_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7124_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7124_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_voltage_scale_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_voltage_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.2, %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"0.000001164 0.000002328 0.000004656 0.000009313 0.000018626 0.000037252 0.000074505 0.000149011 0.000298023\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_voltage_scale_available\00", [37 x i8] zeroinitializer }, align 32
@ad7124_reg_size = internal constant { [57 x i32], [60 x i8] } { [57 x i32] [i32 1, i32 2, i32 3, i32 3, i32 2, i32 1, i32 3, i32 3, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], [60 x i8] zeroinitializer }, align 32
@ad7124_of_parse_channel_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 749, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channel children\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ad7124_of_parse_channel_config\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7124.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7124_of_parse_channel_config._entry_ptr = internal global ptr @ad7124_of_parse_channel_config._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ad7124_of_parse_channel_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 776, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Channel index >= number of channels\0A\00", [59 x i8] zeroinitializer }, align 32
@ad7124_of_parse_channel_config._entry_ptr.12 = internal global ptr @ad7124_of_parse_channel_config._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diff-channels\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bipolar\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,reference-select\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,buffered-positive\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,buffered-negative\00", [42 x i8] zeroinitializer }, align 32
@ad7124_channel_template = internal constant { %struct.iio_chan_spec, [40 x i8] } { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 5133, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refin1\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refin2\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@ad7124_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 703, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Soft reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ad7124_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@ad7124_soft_reset._entry_ptr = internal global ptr @ad7124_soft_reset._entry, section ".printk_index", align 4
@ad7124_check_chip_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 723, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Chip ID mismatch: expected %u, got %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad7124_check_chip_id\00", [43 x i8] zeroinitializer }, align 32
@ad7124_check_chip_id._entry_ptr = internal global ptr @ad7124_check_chip_id._entry, section ".printk_index", align 4
@ad7124_check_chip_id._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.6, i32 729, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Silicon revision empty. Chip may not be present\0A\00", [47 x i8] zeroinitializer }, align 32
@ad7124_check_chip_id._entry_ptr.28 = internal global ptr @ad7124_check_chip_id._entry.26, section ".printk_index", align 4
@ad7124_master_clk_freq_hz = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 76800, i32 153600, i32 614400], [20 x i8] zeroinitializer }, align 32
@ad7124_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&st->cfgs_lock\00", [17 x i8] zeroinitializer }, align 32
@ad7124_init_config_vref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 368, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Error, trying to use external voltage reference without a %s regulator.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ad7124_init_config_vref\00", [40 x i8] zeroinitializer }, align 32
@ad7124_init_config_vref._entry_ptr = internal global ptr @ad7124_init_config_vref._entry, section ".printk_index", align 4
@ad7124_init_config_vref._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.6, i32 382, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid reference %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ad7124_init_config_vref._entry_ptr.34 = internal global ptr @ad7124_init_config_vref._entry.32, section ".printk_index", align 4
@ad7124_chip_info_tbl = internal global { [2 x %struct.ad7124_chip_info], [40 x i8] } { [2 x %struct.ad7124_chip_info] [%struct.ad7124_chip_info { ptr @.str.35, i32 0, i32 8 }, %struct.ad7124_chip_info { ptr @.str.36, i32 1, i32 16 }], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ad7124-4\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ad7124-8\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 12]
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"ad71124_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 961, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 963, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"ad7124_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 952, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"ad7124_sigma_delta_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 516, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"ad7124_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 673, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"ad7124_ref_names\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 131, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 920, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"ad7124_attrs_group\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 669, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"ad7124_attributes\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 664, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_voltage_scale_available\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 661, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"ad7124_reg_size\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 117, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 749, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 770, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 775, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 781, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 790, i32 47 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 792, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 798, i32 52 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 799, i32 52 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"ad7124_channel_template\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 178, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 132, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 133, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 134, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 135, i32 22 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 703, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 721, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 728, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"ad7124_master_clk_freq_hz\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 125, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 841, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 366, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 382, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"ad7124_chip_info_tbl\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 196, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 198, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [28 x i8] c"../drivers/iio/adc/ad7124.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 203, i32 11 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__exitcall_ad71124_driver_exit, ptr @__initcall__kmod_ad7124__370_968_ad71124_driver_init6, ptr @ad71124_driver_exit, ptr @ad7124_check_chip_id._entry, ptr @ad7124_check_chip_id._entry.26, ptr @ad7124_check_chip_id._entry_ptr, ptr @ad7124_check_chip_id._entry_ptr.28, ptr @ad7124_init_config_vref._entry, ptr @ad7124_init_config_vref._entry.32, ptr @ad7124_init_config_vref._entry_ptr, ptr @ad7124_init_config_vref._entry_ptr.34, ptr @ad7124_of_parse_channel_config._entry, ptr @ad7124_of_parse_channel_config._entry.10, ptr @ad7124_of_parse_channel_config._entry_ptr, ptr @ad7124_of_parse_channel_config._entry_ptr.12, ptr @ad7124_soft_reset._entry, ptr @ad7124_soft_reset._entry_ptr, ptr @ad71124_driver, ptr @.str, ptr @ad7124_of_match, ptr @ad7124_sigma_delta_info, ptr @ad7124_info, ptr @ad7124_ref_names, ptr @.str.1, ptr @ad7124_attrs_group, ptr @ad7124_attributes, ptr @iio_const_attr_in_voltage_scale_available, ptr @.str.2, ptr @.str.3, ptr @ad7124_reg_size, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ad7124_channel_template, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @ad7124_master_clk_freq_hz, ptr @ad7124_setup.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @ad7124_chip_info_tbl, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad71124_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_sigma_delta_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_ref_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_voltage_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_reg_size to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_of_parse_channel_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_of_parse_channel_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_channel_template to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_check_chip_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_check_chip_id._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_master_clk_freq_hz to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_init_config_vref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_init_config_vref._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7124_chip_info_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad71124_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad71124_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad71124_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad71124_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7124_probe(ptr noundef %spi) #2 align 64 {
entry:
  %ain.i = alloca [2 x i32], align 4
  %channel.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_device_get_match_data(ptr noundef %spi) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %1, align 128
  %sd = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 2
  %call7 = tail call i32 @ad_sd_init(ptr noundef %sd, ptr noundef nonnull %call2, ptr noundef %spi, ptr noundef nonnull @ad7124_sigma_delta_info) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %name9 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %7 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name9, align 8
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call2, align 8
  %info10 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %9 = ptrtoint ptr %info10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ad7124_info, ptr %info10, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ain.i) #6
  %14 = ptrtoint ptr %ain.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %ain.i, align 4, !annotation !113
  %15 = getelementptr inbounds [2 x i32], ptr %ain.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #6
  %17 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %channel.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %tmp.i, align 4, !annotation !113
  %call.i.i = tail call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %of_get_available_child_count.exit.thread.i, label %if.end5.for.body.i.i_crit_edge

if.end5.for.body.i.i_crit_edge:                   ; preds = %if.end5
  br label %for.body.i.i

of_get_available_child_count.exit.thread.i:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %num_channels176.i = getelementptr inbounds %struct.ad7124_state, ptr %13, i32 0, i32 7
  %19 = ptrtoint ptr %num_channels176.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_channels176.i, align 4
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end5.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end5.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end5.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  %num_channels.i = getelementptr inbounds %struct.ad7124_state, ptr %13, i32 0, i32 7
  %20 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i.i, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i, label %of_get_available_child_count.exit.i.do.end.i_crit_edge, label %if.end.i

of_get_available_child_count.exit.i.do.end.i_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_available_child_count.exit.i.do.end.i_crit_edge, %of_get_available_child_count.exit.thread.i
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.4) #9
  br label %ad7124_of_parse_channel_config.exit.thread

if.end.i:                                         ; preds = %of_get_available_child_count.exit.i
  %parent4.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2, i32 1
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 88) #6
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %if.end.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !114

if.end.i.ad7124_of_parse_channel_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_of_parse_channel_config.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %25 = ptrtoint ptr %parent4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent4.i, align 8
  %27 = extractvalue { i32, i1 } %23, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef %27, i32 noundef 3520) #6
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, label %if.end9.i

devm_kcalloc.exit.i.ad7124_of_parse_channel_config.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_of_parse_channel_config.exit.thread

if.end9.i:                                        ; preds = %devm_kcalloc.exit.i
  %28 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_channels.i, align 4
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 48) #6
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %if.end9.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, label %devm_kcalloc.exit167.i, !prof !114

if.end9.i.ad7124_of_parse_channel_config.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_of_parse_channel_config.exit.thread

devm_kcalloc.exit167.i:                           ; preds = %if.end9.i
  %32 = ptrtoint ptr %parent4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent4.i, align 8
  %34 = extractvalue { i32, i1 } %30, 0
  %call5.i.i164.i = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef %34, i32 noundef 3520) #6
  %tobool14.not.i = icmp eq ptr %call5.i.i164.i, null
  br i1 %tobool14.not.i, label %devm_kcalloc.exit167.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, label %if.end16.i

devm_kcalloc.exit167.i.ad7124_of_parse_channel_config.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_of_parse_channel_config.exit.thread

if.end16.i:                                       ; preds = %devm_kcalloc.exit167.i
  %channels17.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %35 = ptrtoint ptr %channels17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i.i, ptr %channels17.i, align 8
  %36 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_channels.i, align 4
  %num_channels19.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %38 = ptrtoint ptr %num_channels19.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %num_channels19.i, align 4
  %channels20.i = getelementptr inbounds %struct.ad7124_state, ptr %13, i32 0, i32 3
  %39 = ptrtoint ptr %channels20.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i164.i, ptr %channels20.i, align 128
  %call21.i = tail call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef null) #6
  %cmp.not190.i = icmp eq ptr %call21.i, null
  br i1 %cmp.not190.i, label %if.end16.i.if.end18_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.if.end18_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body.i:                                       ; preds = %if.end101.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %child.0191.i = phi ptr [ %call114.i, %if.end101.i.for.body.i_crit_edge ], [ %call21.i, %if.end16.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %channels20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channels20.i, align 128
  %42 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0191.i, ptr noundef nonnull @.str.9, ptr noundef nonnull %channel.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool25.not.i, label %if.end27.i, label %for.body.i.err.i_crit_edge

for.body.i.err.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end27.i:                                       ; preds = %for.body.i
  %44 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel.i, align 4
  %46 = ptrtoint ptr %num_channels19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_channels19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp29.not.i = icmp ult i32 %45, %47
  br i1 %cmp29.not.i, label %if.end36.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %parent4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent4.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.11) #9
  br label %err.i

if.end36.i:                                       ; preds = %if.end27.i
  %call.i168.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0191.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %ain.i, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i168.i)
  %tobool38.not.i = icmp sgt i32 %call.i168.i, -1
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.err.i_crit_edge

if.end36.i.err.i_crit_edge:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end40.i:                                       ; preds = %if.end36.i
  %50 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel.i, align 4
  %52 = ptrtoint ptr %channels20.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channels20.i, align 128
  %arrayidx42.i = getelementptr %struct.ad7124_channel, ptr %53, i32 %51
  %54 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %arrayidx42.i, align 4
  %55 = ptrtoint ptr %ain.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ain.i, align 4
  %57 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %15, align 4
  %shl.i = shl i32 %56, 5
  %and65.i = and i32 %shl.i, 992
  %and92.i = and i32 %58, 31
  %or.i = or i32 %and92.i, %and65.i
  %59 = load ptr, ptr %channels20.i, align 128
  %60 = load i32, ptr %channel.i, align 4
  %ain95.i = getelementptr %struct.ad7124_channel, ptr %59, i32 %60, i32 2
  %61 = ptrtoint ptr %ain95.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i, ptr %ain95.i, align 4
  %call.i169.i = call ptr @of_find_property(ptr noundef nonnull %child.0191.i, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i169.i, null
  %bipolar.i = getelementptr %struct.ad7124_channel, ptr %41, i32 %43, i32 1, i32 3
  %frombool.i = zext i1 %tobool.i.i to i8
  %62 = ptrtoint ptr %bipolar.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool.i, ptr %bipolar.i, align 4
  %call.i.i170.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0191.i, ptr noundef nonnull @.str.15, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i170.i)
  %tobool98.not.i = icmp sgt i32 %call.i.i170.i, -1
  br i1 %tobool98.not.i, label %if.else.i, label %if.end40.i.if.end101.i_crit_edge

if.end40.i.if.end101.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tmp.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else.i, %if.end40.i.if.end101.i_crit_edge
  %.sink.i = phi i32 [ %64, %if.else.i ], [ 2, %if.end40.i.if.end101.i_crit_edge ]
  %65 = getelementptr %struct.ad7124_channel, ptr %41, i32 %43, i32 1, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %65, align 4
  %call.i171.i = call ptr @of_find_property(ptr noundef nonnull %child.0191.i, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %tobool.i172.i = icmp ne ptr %call.i171.i, null
  %buf_positive.i = getelementptr %struct.ad7124_channel, ptr %41, i32 %43, i32 1, i32 4
  %frombool103.i = zext i1 %tobool.i172.i to i8
  %67 = ptrtoint ptr %buf_positive.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool103.i, ptr %buf_positive.i, align 1
  %call.i173.i = call ptr @of_find_property(ptr noundef nonnull %child.0191.i, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %tobool.i174.i = icmp ne ptr %call.i173.i, null
  %buf_negative.i = getelementptr %struct.ad7124_channel, ptr %41, i32 %43, i32 1, i32 5
  %frombool105.i = zext i1 %tobool.i174.i to i8
  %68 = ptrtoint ptr %buf_negative.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool105.i, ptr %buf_negative.i, align 2
  %69 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %channel.i, align 4
  %arrayidx106.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %70
  %71 = call ptr @memcpy(ptr %arrayidx106.i, ptr @ad7124_channel_template, i32 88)
  %address.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %70, i32 3
  %72 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %70, ptr %address.i, align 4
  %scan_index.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %70, i32 4
  %73 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %scan_index.i, align 4
  %74 = ptrtoint ptr %ain.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ain.i, align 4
  %channel111.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %70, i32 1
  %76 = ptrtoint ptr %channel111.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %channel111.i, align 4
  %77 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %15, align 4
  %channel2.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %70, i32 2
  %79 = ptrtoint ptr %channel2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %channel2.i, align 4
  %call114.i = call ptr @of_get_next_available_child(ptr noundef %11, ptr noundef nonnull %child.0191.i) #6
  %cmp.not.i = icmp eq ptr %call114.i, null
  br i1 %cmp.not.i, label %if.end101.i.if.end18_crit_edge, label %if.end101.i.for.body.i_crit_edge

if.end101.i.for.body.i_crit_edge:                 ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end101.i.if.end18_crit_edge:                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

err.i:                                            ; preds = %if.end36.i.err.i_crit_edge, %do.end33.i, %for.body.i.err.i_crit_edge
  %ret.0.i = phi i32 [ -22, %do.end33.i ], [ %call.i.i.i, %for.body.i.err.i_crit_edge ], [ %call.i168.i, %if.end36.i.err.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0191.i) #6
  br label %ad7124_of_parse_channel_config.exit.thread

ad7124_of_parse_channel_config.exit.thread:       ; preds = %err.i, %devm_kcalloc.exit167.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, %if.end9.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, %devm_kcalloc.exit.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, %if.end.i.ad7124_of_parse_channel_config.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end9.i.ad7124_of_parse_channel_config.exit.thread_crit_edge ], [ -12, %if.end.i.ad7124_of_parse_channel_config.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit167.i.ad7124_of_parse_channel_config.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.ad7124_of_parse_channel_config.exit.thread_crit_edge ], [ -19, %do.end.i ], [ %ret.0.i, %err.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ain.i) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end101.i.if.end18_crit_edge, %if.end16.i.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ain.i) #6
  %call20 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.18) #6
  %arrayidx21 = getelementptr %struct.ad7124_state, ptr %1, i32 0, i32 4, i32 0
  %80 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call20, ptr %arrayidx21, align 4
  %cmp25 = icmp eq ptr %call20, inttoptr (i32 -19 to ptr)
  br i1 %cmp25, label %if.end18.if.end18.1_crit_edge, label %if.else

if.end18.if.end18.1_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.1

if.else:                                          ; preds = %if.end18
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else.cleanup.loopexit.split.loop.exit173_crit_edge, label %if.end35

if.else.cleanup.loopexit.split.loop.exit173_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit.split.loop.exit173

if.end35:                                         ; preds = %if.else
  %call38 = call i32 @regulator_enable(ptr noundef %call20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx21, align 4
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7124_reg_disable, ptr noundef %82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i151 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i151, label %if.end41.if.end18.1_crit_edge, label %if.end41.devm_add_action_or_reset.exit_crit_edge

if.end41.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_add_action_or_reset.exit

if.end41.if.end18.1_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.1

devm_add_action_or_reset.exit:                    ; preds = %if.end41.3.devm_add_action_or_reset.exit_crit_edge, %if.end41.1.devm_add_action_or_reset.exit_crit_edge, %if.end41.devm_add_action_or_reset.exit_crit_edge
  %.lcssa = phi ptr [ %82, %if.end41.devm_add_action_or_reset.exit_crit_edge ], [ %85, %if.end41.1.devm_add_action_or_reset.exit_crit_edge ], [ %88, %if.end41.3.devm_add_action_or_reset.exit_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.end41.devm_add_action_or_reset.exit_crit_edge ], [ %call.i.1, %if.end41.1.devm_add_action_or_reset.exit_crit_edge ], [ %call.i.3, %if.end41.3.devm_add_action_or_reset.exit_crit_edge ]
  %call.i163 = call i32 @regulator_disable(ptr noundef %.lcssa) #6
  br label %cleanup

if.end18.1:                                       ; preds = %if.end41.if.end18.1_crit_edge, %if.end18.if.end18.1_crit_edge
  %call20.1 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.19) #6
  %arrayidx21.1 = getelementptr %struct.ad7124_state, ptr %1, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call20.1, ptr %arrayidx21.1, align 4
  %cmp25.1 = icmp eq ptr %call20.1, inttoptr (i32 -19 to ptr)
  br i1 %cmp25.1, label %if.end18.1.if.end18.3_crit_edge, label %if.else.1

if.end18.1.if.end18.3_crit_edge:                  ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.3

if.else.1:                                        ; preds = %if.end18.1
  %cmp.i.1 = icmp ugt ptr %call20.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.else.1.cleanup.loopexit.split.loop.exit173_crit_edge, label %if.end35.1

if.else.1.cleanup.loopexit.split.loop.exit173_crit_edge: ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit.split.loop.exit173

if.end35.1:                                       ; preds = %if.else.1
  %call38.1 = call i32 @regulator_enable(ptr noundef %call20.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1)
  %tobool39.not.1 = icmp eq i32 %call38.1, 0
  br i1 %tobool39.not.1, label %if.end41.1, label %if.end35.1.cleanup_crit_edge

if.end35.1.cleanup_crit_edge:                     ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.1:                                       ; preds = %if.end35.1
  %84 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx21.1, align 4
  %call.i.1 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7124_reg_disable, ptr noundef %85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i151.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i151.1, label %if.end41.1.if.end18.3_crit_edge, label %if.end41.1.devm_add_action_or_reset.exit_crit_edge

if.end41.1.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_add_action_or_reset.exit

if.end41.1.if.end18.3_crit_edge:                  ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.3

if.end18.3:                                       ; preds = %if.end41.1.if.end18.3_crit_edge, %if.end18.1.if.end18.3_crit_edge
  %call20.3 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.21) #6
  %arrayidx21.3 = getelementptr %struct.ad7124_state, ptr %1, i32 0, i32 4, i32 3
  %86 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call20.3, ptr %arrayidx21.3, align 4
  %cmp25.3 = icmp eq ptr %call20.3, inttoptr (i32 -19 to ptr)
  br i1 %cmp25.3, label %if.end18.3.for.inc.3_crit_edge, label %if.else.3

if.end18.3.for.inc.3_crit_edge:                   ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.else.3:                                        ; preds = %if.end18.3
  %cmp.i.3 = icmp ugt ptr %call20.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.else.3.cleanup.loopexit.split.loop.exit173_crit_edge, label %if.end35.3

if.else.3.cleanup.loopexit.split.loop.exit173_crit_edge: ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit.split.loop.exit173

if.end35.3:                                       ; preds = %if.else.3
  %call38.3 = call i32 @regulator_enable(ptr noundef %call20.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.3)
  %tobool39.not.3 = icmp eq i32 %call38.3, 0
  br i1 %tobool39.not.3, label %if.end41.3, label %if.end35.3.cleanup_crit_edge

if.end35.3.cleanup_crit_edge:                     ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.3:                                       ; preds = %if.end35.3
  %87 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx21.3, align 4
  %call.i.3 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7124_reg_disable, ptr noundef %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i151.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i151.3, label %if.end41.3.for.inc.3_crit_edge, label %if.end41.3.devm_add_action_or_reset.exit_crit_edge

if.end41.3.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %devm_add_action_or_reset.exit

if.end41.3.for.inc.3_crit_edge:                   ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end41.3.for.inc.3_crit_edge, %if.end18.3.for.inc.3_crit_edge
  %call50 = call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #6
  %mclk = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call50, ptr %mclk, align 4
  %cmp.i153 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then53, label %if.end56

if.then53:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end56:                                         ; preds = %for.inc.3
  %call.i154 = call i32 @clk_prepare(ptr noundef %call50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i155 = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i155, label %if.end.i156, label %if.end56.clk_prepare_enable.exit_crit_edge

if.end56.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i156:                                      ; preds = %if.end56
  %call1.i = call i32 @clk_enable(ptr noundef %call50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i156.if.end61_crit_edge, label %if.then3.i

if.end.i156.if.end61_crit_edge:                   ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then3.i:                                       ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call50) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end56.clk_prepare_enable.exit_crit_edge
  %retval.0.i157 = phi i32 [ %call.i154, %if.end56.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i157)
  %cmp59 = icmp slt i32 %retval.0.i157, 0
  br i1 %cmp59, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end61_crit_edge

clk_prepare_enable.exit.if.end61_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %clk_prepare_enable.exit.if.end61_crit_edge, %if.end.i156.if.end61_crit_edge
  %91 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mclk, align 4
  %call.i158 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7124_clk_disable, ptr noundef %92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %if.end67, label %devm_add_action_or_reset.exit162

devm_add_action_or_reset.exit162:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %92) #6
  call void @clk_unprepare(ptr noundef %92) #6
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %call68 = call fastcc i32 @ad7124_soft_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call72 = call fastcc i32 @ad7124_check_chip_id(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %call76 = call fastcc i32 @ad7124_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end75.cleanup_crit_edge, label %if.end79

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.end75
  %call81 = call i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef %spi, ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end79.cleanup_crit_edge, label %if.end84

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call2, ptr noundef null) #6
  br label %cleanup

cleanup.loopexit.split.loop.exit173:              ; preds = %if.else.3.cleanup.loopexit.split.loop.exit173_crit_edge, %if.else.1.cleanup.loopexit.split.loop.exit173_crit_edge, %if.else.cleanup.loopexit.split.loop.exit173_crit_edge
  %call20.lcssa = phi ptr [ %call20, %if.else.cleanup.loopexit.split.loop.exit173_crit_edge ], [ %call20.1, %if.else.1.cleanup.loopexit.split.loop.exit173_crit_edge ], [ %call20.3, %if.else.3.cleanup.loopexit.split.loop.exit173_crit_edge ]
  %93 = ptrtoint ptr %call20.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit173, %if.end84, %if.end79.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %devm_add_action_or_reset.exit162, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then53, %if.end35.3.cleanup_crit_edge, %if.end35.1.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end35.cleanup_crit_edge, %ad7124_of_parse_channel_config.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %90, %if.then53 ], [ %call86, %if.end84 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.lcssa, %devm_add_action_or_reset.exit ], [ %retval.0.i157, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i158, %devm_add_action_or_reset.exit162 ], [ %call68, %if.end67.cleanup_crit_edge ], [ %call72, %if.end71.cleanup_crit_edge ], [ %call76, %if.end75.cleanup_crit_edge ], [ %call81, %if.end79.cleanup_crit_edge ], [ %retval.0.i.ph, %ad7124_of_parse_channel_config.exit.thread ], [ %93, %cleanup.loopexit.split.loop.exit173 ], [ %call38, %if.end35.cleanup_crit_edge ], [ %call38.1, %if.end35.1.cleanup_crit_edge ], [ %call38.3, %if.end35.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7124_reg_disable(ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %r) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7124_clk_disable(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %c) #6
  tail call void @clk_unprepare(ptr noundef %c) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7124_soft_reset(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %readval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval) #6
  %0 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %readval, align 4, !annotation !113
  %sd = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 2
  %call = tail call i32 @ad_sd_reset(ptr noundef %sd, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %entry.do.body_crit_edge
  %timeout.0 = phi i32 [ %dec, %if.end7.do.body_crit_edge ], [ 100, %entry.do.body_crit_edge ]
  %call2 = call i32 @ad_sd_read_reg(ptr noundef %sd, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %readval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.body.cleanup_crit_edge, label %if.end5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %1 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %readval, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 2000, i32 noundef 2) #6
  %dec = add nsw i32 %timeout.0, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %do.end11, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end11 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call2, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7124_check_chip_id(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %readval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval) #6
  %0 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %readval, align 4, !annotation !113
  %sd = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 2
  %call = call i32 @ad_sd_read_reg(ptr noundef %sd, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %readval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end12:                                         ; preds = %entry
  %1 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %readval, align 4
  %and = lshr i32 %2, 4
  %shr = and i32 %and, 15
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 128
  %chip_id31 = getelementptr inbounds %struct.ad7124_chip_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %chip_id31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_id31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %6)
  %cmp32.not = icmp eq i32 %shr, %6
  br i1 %cmp32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %6, i32 noundef %shr) #9
  br label %cleanup

if.end40:                                         ; preds = %do.end12
  %and29 = and i32 %2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp41 = icmp eq i32 %and29, 0
  br i1 %cmp41, label %do.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end40.cleanup_crit_edge, %do.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end36 ], [ -19, %do.end45 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7124_setup(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 5
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.i.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %sub.i = add i32 %call, -76800
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #6
  %sub.i.1 = add i32 %call, -153600
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %2)
  %cmp3.i.1 = icmp ult i32 %3, %2
  %idx.1.i.1 = zext i1 %cmp3.i.1 to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %2) #6
  %sub.i.2 = add i32 %call, -614400
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp3.i.2 = icmp ult i32 %5, %4
  %idx.1.i.2 = select i1 %cmp3.i.2, i32 2, i32 %idx.1.i.1
  %arrayidx = getelementptr [3 x i32], ptr @ad7124_master_clk_freq_hz, i32 0, i32 %idx.1.i.2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp.not = icmp eq i32 %call, %7
  br i1 %cmp.not, label %for.body.i.preheader.do.end24_crit_edge, label %if.then2

for.body.i.preheader.do.end24_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.then2:                                         ; preds = %for.body.i.preheader
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.do.end24_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.do.end24_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %if.then2.do.end24_crit_edge, %for.body.i.preheader.do.end24_crit_edge
  %adc_control = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 6
  %10 = ptrtoint ptr %adc_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adc_control, align 8
  %and = and i32 %11, -193
  %shl = shl nuw nsw i32 %idx.1.i.2, 6
  %or = or i32 %and, %shl
  store i32 %or, ptr %adc_control, align 8
  %sd = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 2
  %call28 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 2, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end24.cleanup_crit_edge, label %do.body32

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %do.end24
  %cfgs_lock = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %cfgs_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @ad7124_setup.__key) #6
  %live_cfgs_fifo = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 10
  %12 = ptrtoint ptr %live_cfgs_fifo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %live_cfgs_fifo, align 4
  %out = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 10, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 10, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 10, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %esize, align 4
  %buf = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 10, i32 1
  %data = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 10, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %data, align 4
  %num_channels = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 7
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3683.not = icmp eq i32 %18, 0
  br i1 %cmp3683.not, label %do.body32.cleanup_crit_edge, label %for.body.lr.ph

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.body32
  %channels = getelementptr inbounds %struct.ad7124_state, ptr %st, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ad7124_set_channel_odr.exit.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ad7124_set_channel_odr.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channels, align 128
  %refsel1.i = getelementptr %struct.ad7124_channel, ptr %20, i32 %i.084, i32 1, i32 2
  %21 = ptrtoint ptr %refsel1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refsel1.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %ad7124_init_config_vref.exit.thread [
    i32 0, label %for.body.sw.bb.i_crit_edge
    i32 1, label %for.body.sw.bb.i_crit_edge93
    i32 3, label %for.body.sw.bb.i_crit_edge94
    i32 2, label %sw.bb10.i
  ]

for.body.sw.bb.i_crit_edge94:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge93:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge93, %for.body.sw.bb.i_crit_edge94
  %arrayidx.i76 = getelementptr %struct.ad7124_state, ptr %st, i32 0, i32 4, i32 %22
  %24 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i76, align 4
  %cmp.i.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %ad7124_init_config_vref.exit.thread79

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd, align 128
  %arrayidx2.i = getelementptr [4 x ptr], ptr @ad7124_ref_names, i32 0, i32 %22
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.30, ptr noundef %29) #9
  %30 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i76, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %ad7124_init_config_vref.exit

ad7124_init_config_vref.exit.thread79:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @regulator_get_voltage(ptr noundef %25) #6
  %vref_mv.i = getelementptr %struct.ad7124_channel, ptr %20, i32 %i.084, i32 1, i32 6
  %div.i = udiv i32 %call8.i, 1000
  %33 = ptrtoint ptr %vref_mv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div.i, ptr %vref_mv.i, align 4
  br label %if.end41

sw.bb10.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %vref_mv11.i = getelementptr %struct.ad7124_channel, ptr %20, i32 %i.084, i32 1, i32 6
  %34 = ptrtoint ptr %vref_mv11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2500, ptr %vref_mv11.i, align 4
  %35 = ptrtoint ptr %adc_control to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %adc_control, align 8
  %or.i = or i32 %36, 256
  store i32 %or.i, ptr %adc_control, align 8
  %call30.i = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 2, i32 noundef %or.i) #6
  br label %ad7124_init_config_vref.exit

ad7124_init_config_vref.exit.thread:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef %22) #9
  br label %cleanup

ad7124_init_config_vref.exit:                     ; preds = %sw.bb10.i, %do.end.i
  %retval.0.i = phi i32 [ %call30.i, %sw.bb10.i ], [ %32, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp39 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp39, label %ad7124_init_config_vref.exit.cleanup_crit_edge, label %ad7124_init_config_vref.exit.if.end41_crit_edge

ad7124_init_config_vref.exit.if.end41_crit_edge:  ; preds = %ad7124_init_config_vref.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

ad7124_init_config_vref.exit.cleanup_crit_edge:   ; preds = %ad7124_init_config_vref.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %ad7124_init_config_vref.exit.if.end41_crit_edge, %ad7124_init_config_vref.exit.thread79
  %retval.0.i82 = phi i32 [ 0, %ad7124_init_config_vref.exit.thread79 ], [ %retval.0.i, %ad7124_init_config_vref.exit.if.end41_crit_edge ]
  %39 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %40) #6
  %add.i = add i32 %call.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 320
  %div1.i = udiv i32 %add.i, 320
  %41 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 2047) #6
  %odr_sel_bits.0.i = select i1 %cmp.i, i32 1, i32 %41
  %42 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channels, align 128
  %odr_sel_bits5.i = getelementptr %struct.ad7124_channel, ptr %43, i32 %i.084, i32 1, i32 9
  %44 = ptrtoint ptr %odr_sel_bits5.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %odr_sel_bits5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %odr_sel_bits.0.i, i32 %45)
  %cmp6.not.i = icmp eq i32 %odr_sel_bits.0.i, %45
  br i1 %cmp6.not.i, label %if.end41.ad7124_set_channel_odr.exit_crit_edge, label %if.then7.i

if.end41.ad7124_set_channel_odr.exit_crit_edge:   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_set_channel_odr.exit

if.then7.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i = getelementptr %struct.ad7124_channel, ptr %43, i32 %i.084, i32 1
  %46 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %cfg.i, align 4
  br label %ad7124_set_channel_odr.exit

ad7124_set_channel_odr.exit:                      ; preds = %if.then7.i, %if.end41.ad7124_set_channel_odr.exit_crit_edge
  %mul14.i = shl nuw nsw i32 %odr_sel_bits.0.i, 5
  %div16.i = shl nuw nsw i32 %odr_sel_bits.0.i, 4
  %add17.i = add i32 %div16.i, %call.i
  %div18.i = udiv i32 %add17.i, %mul14.i
  %47 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channels, align 128
  %odr22.i = getelementptr %struct.ad7124_channel, ptr %48, i32 %i.084, i32 1, i32 8
  %49 = ptrtoint ptr %odr22.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div18.i, ptr %odr22.i, align 4
  %50 = load ptr, ptr %channels, align 128
  %odr_sel_bits26.i = getelementptr %struct.ad7124_channel, ptr %50, i32 %i.084, i32 1, i32 9
  %51 = ptrtoint ptr %odr_sel_bits26.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %odr_sel_bits.0.i, ptr %odr_sel_bits26.i, align 4
  %inc = add nuw i32 %i.084, 1
  %52 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_channels, align 4
  %cmp36 = icmp ult i32 %inc, %53
  br i1 %cmp36, label %ad7124_set_channel_odr.exit.for.body_crit_edge, label %ad7124_set_channel_odr.exit.cleanup_crit_edge

ad7124_set_channel_odr.exit.cleanup_crit_edge:    ; preds = %ad7124_set_channel_odr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ad7124_set_channel_odr.exit.for.body_crit_edge:   ; preds = %ad7124_set_channel_odr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %ad7124_set_channel_odr.exit.cleanup_crit_edge, %ad7124_init_config_vref.exit.cleanup_crit_edge, %ad7124_init_config_vref.exit.thread, %do.body32.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.then2.cleanup_crit_edge ], [ %call28, %do.end24.cleanup_crit_edge ], [ -22, %ad7124_init_config_vref.exit.thread ], [ %call28, %do.body32.cleanup_crit_edge ], [ %retval.0.i, %ad7124_init_config_vref.exit.cleanup_crit_edge ], [ %retval.0.i82, %ad7124_set_channel_odr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_ad_sd_setup_buffer_and_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7124_set_channel(ptr noundef %sd, i32 noundef %channel) #2 align 64 {
entry:
  %readval.i229.i.i.i = alloca i32, align 4
  %readval.i219.i.i.i = alloca i32, align 4
  %readval.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfgs_lock = getelementptr i8, ptr %sd, i32 288
  tail call void @mutex_lock_nested(ptr noundef %cfgs_lock, i32 noundef 0) #6
  %channels.i = getelementptr i8, ptr %sd, i32 256
  %0 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels.i, align 128
  %cfg1.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1
  %2 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg1.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  %num_channels.i.i = getelementptr i8, ptr %sd, i32 284
  %4 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i.i, label %if.then.i.if.then3.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then3.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.if.then3.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %cfg1.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %i.014.i.i, i32 1
  %6 = ptrtoint ptr %cfg1.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cfg1.i.i, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %ad7124_find_similar_live_cfg.exit.i

ad7124_find_similar_live_cfg.exit.i:              ; preds = %for.body.i.i
  %tobool2.not.i = icmp eq ptr %cfg1.i.i, null
  br i1 %tobool2.not.i, label %ad7124_find_similar_live_cfg.exit.i.if.then3.i_crit_edge, label %if.else.i

ad7124_find_similar_live_cfg.exit.i.if.then3.i_crit_edge: ; preds = %ad7124_find_similar_live_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %ad7124_find_similar_live_cfg.exit.i.if.then3.i_crit_edge, %for.cond.i.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  %cfg_slots_status.i.i.i = getelementptr i8, ptr %sd, i32 380
  %call.i.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %cfg_slots_status.i.i.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ne i32 %call.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp7.i.i = icmp sgt i32 %call.i.i.i, -1
  %cmp.i.i = and i1 %cmp.i.i.i, %cmp7.i.i
  %live_cfgs_fifo.i.i = getelementptr i8, ptr %sd, i32 384
  %8 = ptrtoint ptr %live_cfgs_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %live_cfgs_fifo.i.i, align 4
  %out.i.i = getelementptr i8, ptr %sd, i32 388
  %10 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else16.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  %sub.i.i = sub i32 %9, %11
  %mask.i.i = getelementptr i8, ptr %sd, i32 392
  %12 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %13)
  %cmp4.not.i.i = icmp ugt i32 %sub.i.i, %13
  br i1 %cmp4.not.i.i, label %if.then.i.i.if.end63.i.i_crit_edge, label %if.then7.i.i

if.then.i.i.if.end63.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %buf.i.i = getelementptr i8, ptr %sd, i32 404
  %and.i.i = and i32 %13, %9
  %arrayidx.i.i = getelementptr ptr, ptr %buf.i.i, i32 %and.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cfg1.i, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !116
  br label %if.end63.sink.split.i.i

if.else16.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i.i.i = icmp eq i32 %9, %11
  br i1 %cmp.not.i.i.i, label %if.else16.i.i.if.end6.i_crit_edge, label %if.end11.i.i.i

if.else16.i.i.if.end6.i_crit_edge:                ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end11.i.i.i:                                   ; preds = %if.else16.i.i
  %buf.i.i.i = getelementptr i8, ptr %sd, i32 404
  %mask.i.i.i = getelementptr i8, ptr %sd, i32 392
  %15 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask.i.i.i, align 4
  %and.i.i.i = and i32 %16, %11
  %arrayidx.i.i.i = getelementptr ptr, ptr %buf.i.i.i, i32 %and.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !117
  %19 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out.i.i, align 4
  %inc.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i, ptr %out.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %18, align 4
  %cfg_slot.i.i.i = getelementptr inbounds %struct.ad7124_channel_config, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %cfg_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfg_slot.i.i.i, align 4
  tail call void @_clear_bit(i32 noundef %23, ptr noundef %cfg_slots_status.i.i.i) #6
  %24 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1244.not.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp1244.not.i.i.i, label %if.end11.i.i.i.ad7124_pop_config.exit.i.i_crit_edge, label %if.end11.i.i.i.for.body.i.i.i_crit_edge

if.end11.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end11.i.i.i
  br label %for.body.i.i.i

if.end11.i.i.i.ad7124_pop_config.exit.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_pop_config.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end11.i.i.i.for.body.i.i.i_crit_edge
  %i.045.i.i.i = phi i32 [ %inc23.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end11.i.i.i.for.body.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channels.i, align 128
  %cfg_slot16.i.i.i = getelementptr %struct.ad7124_channel, ptr %27, i32 %i.045.i.i.i, i32 1, i32 1
  %28 = ptrtoint ptr %cfg_slot16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg_slot16.i.i.i, align 4
  %30 = ptrtoint ptr %cfg_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cfg_slot.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp18.i.i.i = icmp eq i32 %29, %31
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

if.then20.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cfg15.i.i.i = getelementptr %struct.ad7124_channel, ptr %27, i32 %i.045.i.i.i, i32 1
  %32 = ptrtoint ptr %cfg15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %cfg15.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then20.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc23.i.i.i = add nuw i32 %i.045.i.i.i, 1
  %33 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels.i.i, align 4
  %cmp12.i.i.i = icmp ult i32 %inc23.i.i.i, %34
  br i1 %cmp12.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.ad7124_pop_config.exit.i.i_crit_edge

for.inc.i.i.i.ad7124_pop_config.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_pop_config.exit.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

ad7124_pop_config.exit.i.i:                       ; preds = %for.inc.i.i.i.ad7124_pop_config.exit.i.i_crit_edge, %if.end11.i.i.i.ad7124_pop_config.exit.i.i_crit_edge
  %tobool18.not.i.i = icmp eq ptr %18, null
  br i1 %tobool18.not.i.i, label %ad7124_pop_config.exit.i.i.if.end6.i_crit_edge, label %if.end20.i.i

ad7124_pop_config.exit.i.i.if.end6.i_crit_edge:   ; preds = %ad7124_pop_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end20.i.i:                                     ; preds = %ad7124_pop_config.exit.i.i
  %35 = ptrtoint ptr %cfg_slot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cfg_slot.i.i.i, align 4
  %37 = ptrtoint ptr %live_cfgs_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %live_cfgs_fifo.i.i, align 4
  %39 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out.i.i, align 4
  %sub37.i.i = sub i32 %38, %40
  %41 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub37.i.i, i32 %42)
  %cmp39.not.i.i = icmp ugt i32 %sub37.i.i, %42
  br i1 %cmp39.not.i.i, label %if.end20.i.i.if.end63.i.i_crit_edge, label %if.then45.i.i

if.end20.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i.i

if.then45.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and50.i.i = and i32 %42, %38
  %arrayidx51.i.i = getelementptr ptr, ptr %buf.i.i.i, i32 %and50.i.i
  %43 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cfg1.i, ptr %arrayidx51.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !118
  br label %if.end63.sink.split.i.i

if.end63.sink.split.i.i:                          ; preds = %if.then45.i.i, %if.then7.i.i
  %free_cfg_slot.0.ph.i.i = phi i32 [ %36, %if.then45.i.i ], [ %call.i.i.i, %if.then7.i.i ]
  %44 = ptrtoint ptr %live_cfgs_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %live_cfgs_fifo.i.i, align 4
  %inc59.i.i = add i32 %45, 1
  store i32 %inc59.i.i, ptr %live_cfgs_fifo.i.i, align 4
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.end63.sink.split.i.i, %if.end20.i.i.if.end63.i.i_crit_edge, %if.then.i.i.if.end63.i.i_crit_edge
  %free_cfg_slot.0.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.if.end63.i.i_crit_edge ], [ %36, %if.end20.i.i.if.end63.i.i_crit_edge ], [ %free_cfg_slot.0.ph.i.i, %if.end63.sink.split.i.i ]
  tail call void @_set_bit(i32 noundef %free_cfg_slot.0.i.i, ptr noundef %cfg_slots_status.i.i.i) #6
  %cfg_slot1.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 1
  %46 = ptrtoint ptr %cfg_slot1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %free_cfg_slot.0.i.i, ptr %cfg_slot1.i.i.i, align 4
  %refsel.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 2
  %47 = ptrtoint ptr %refsel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %refsel.i.i.i, align 4
  %bipolar.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 3
  %49 = ptrtoint ptr %bipolar.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bipolar.i.i.i, align 4, !range !115
  %51 = zext i8 %50 to i32
  %shl25.i.i.i = shl nuw nsw i32 %51, 11
  %buf_positive.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 4
  %52 = ptrtoint ptr %buf_positive.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %buf_positive.i.i.i, align 1, !range !115
  %buf_negative.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 5
  %54 = ptrtoint ptr %buf_negative.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %buf_negative.i.i.i, align 2, !range !115
  %shl51.i.i.i = shl i32 %48, 3
  %and52.i.i.i = and i32 %shl51.i.i.i, 24
  %or.i.i.i = or i32 %shl25.i.i.i, %and52.i.i.i
  %56 = shl nuw nsw i8 %53, 6
  %57 = shl nuw nsw i8 %55, 5
  %58 = or i8 %57, %56
  %shl75.i.i.i = zext i8 %58 to i32
  %or77.i.i.i = or i32 %or.i.i.i, %shl75.i.i.i
  %add79.i.i.i = add i32 %free_cfg_slot.0.i.i, 25
  %call.i2.i.i = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef %add79.i.i.i, i32 noundef 2, i32 noundef %or77.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %cmp.i3.i.i = icmp slt i32 %call.i2.i.i, 0
  br i1 %cmp.i3.i.i, label %if.end63.i.i.if.end6.i_crit_edge, label %do.body89.i.i.i

if.end63.i.i.if.end6.i_crit_edge:                 ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

do.body89.i.i.i:                                  ; preds = %if.end63.i.i
  %filter_type.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 10
  %59 = ptrtoint ptr %filter_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %filter_type.i.i.i, align 4
  %61 = ptrtoint ptr %cfg_slot1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg_slot1.i.i.i, align 4
  %add110.i.i.i = add i32 %62, 33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval.i.i.i.i) #6
  %63 = ptrtoint ptr %readval.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %readval.i.i.i.i, align 4, !annotation !113
  %call.i.i.i.i = call i32 @ad_sd_read_reg(ptr noundef %sd, i32 noundef %add110.i.i.i, i32 noundef 3, ptr noundef nonnull %readval.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %ad7124_spi_write_mask.exit.thread.i.i.i, label %ad7124_spi_write_mask.exit.i.i.i

ad7124_spi_write_mask.exit.thread.i.i.i:          ; preds = %do.body89.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval.i.i.i.i) #6
  br label %if.end6.i

ad7124_spi_write_mask.exit.i.i.i:                 ; preds = %do.body89.i.i.i
  %shl107.i.i.i = shl i32 %60, 21
  %and108.i.i.i = and i32 %shl107.i.i.i, 14680064
  %64 = ptrtoint ptr %readval.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %readval.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %65, -14680065
  %or.i.i.i.i = or i32 %and.i.i.i.i, %and108.i.i.i
  store i32 %or.i.i.i.i, ptr %readval.i.i.i.i, align 4
  %call2.i.i.i.i = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef %add110.i.i.i, i32 noundef 3, i32 noundef %or.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp112.i.i.i = icmp slt i32 %call2.i.i.i.i, 0
  br i1 %cmp112.i.i.i, label %ad7124_spi_write_mask.exit.i.i.i.if.end6.i_crit_edge, label %if.end115.i.i.i

ad7124_spi_write_mask.exit.i.i.i.if.end6.i_crit_edge: ; preds = %ad7124_spi_write_mask.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end115.i.i.i:                                  ; preds = %ad7124_spi_write_mask.exit.i.i.i
  %66 = ptrtoint ptr %cfg_slot1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cfg_slot1.i.i.i, align 4
  %add117.i.i.i = add i32 %67, 33
  %odr_sel_bits.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 9
  %68 = ptrtoint ptr %odr_sel_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %odr_sel_bits.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval.i219.i.i.i) #6
  %70 = ptrtoint ptr %readval.i219.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %readval.i219.i.i.i, align 4, !annotation !113
  %call.i221.i.i.i = call i32 @ad_sd_read_reg(ptr noundef %sd, i32 noundef %add117.i.i.i, i32 noundef 3, ptr noundef nonnull %readval.i219.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221.i.i.i)
  %cmp.i222.i.i.i = icmp slt i32 %call.i221.i.i.i, 0
  br i1 %cmp.i222.i.i.i, label %ad7124_spi_write_mask.exit228.thread.i.i.i, label %ad7124_spi_write_mask.exit228.i.i.i

ad7124_spi_write_mask.exit228.thread.i.i.i:       ; preds = %if.end115.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval.i219.i.i.i) #6
  br label %if.end6.i

ad7124_spi_write_mask.exit228.i.i.i:              ; preds = %if.end115.i.i.i
  %and143.i.i.i = and i32 %69, 2047
  %71 = ptrtoint ptr %readval.i219.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %readval.i219.i.i.i, align 4
  %and.i223.i.i.i = and i32 %72, -2048
  %or.i224.i.i.i = or i32 %and.i223.i.i.i, %and143.i.i.i
  store i32 %or.i224.i.i.i, ptr %readval.i219.i.i.i, align 4
  %call2.i225.i.i.i = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef %add117.i.i.i, i32 noundef 3, i32 noundef %or.i224.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval.i219.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i225.i.i.i)
  %cmp145.i.i.i = icmp slt i32 %call2.i225.i.i.i, 0
  br i1 %cmp145.i.i.i, label %ad7124_spi_write_mask.exit228.i.i.i.if.end6.i_crit_edge, label %if.end148.i.i.i

ad7124_spi_write_mask.exit228.i.i.i.if.end6.i_crit_edge: ; preds = %ad7124_spi_write_mask.exit228.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end148.i.i.i:                                  ; preds = %ad7124_spi_write_mask.exit228.i.i.i
  %73 = ptrtoint ptr %cfg_slot1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cfg_slot1.i.i.i, align 4
  %add150.i.i.i = add i32 %74, 25
  %pga_bits.i.i.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 7
  %75 = ptrtoint ptr %pga_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pga_bits.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval.i229.i.i.i) #6
  %77 = ptrtoint ptr %readval.i229.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %readval.i229.i.i.i, align 4, !annotation !113
  %call.i231.i.i.i = call i32 @ad_sd_read_reg(ptr noundef %sd, i32 noundef %add150.i.i.i, i32 noundef 2, ptr noundef nonnull %readval.i229.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231.i.i.i)
  %cmp.i232.i.i.i = icmp slt i32 %call.i231.i.i.i, 0
  br i1 %cmp.i232.i.i.i, label %if.end148.i.i.i.ad7124_spi_write_mask.exit238.i.i.i_crit_edge, label %if.end.i236.i.i.i

if.end148.i.i.i.ad7124_spi_write_mask.exit238.i.i.i_crit_edge: ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_spi_write_mask.exit238.i.i.i

if.end.i236.i.i.i:                                ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and176.i.i.i = and i32 %76, 7
  %78 = ptrtoint ptr %readval.i229.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %readval.i229.i.i.i, align 4
  %and.i233.i.i.i = and i32 %79, -8
  %or.i234.i.i.i = or i32 %and.i233.i.i.i, %and176.i.i.i
  store i32 %or.i234.i.i.i, ptr %readval.i229.i.i.i, align 4
  %call2.i235.i.i.i = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef %add150.i.i.i, i32 noundef 2, i32 noundef %or.i234.i.i.i) #6
  br label %ad7124_spi_write_mask.exit238.i.i.i

ad7124_spi_write_mask.exit238.i.i.i:              ; preds = %if.end.i236.i.i.i, %if.end148.i.i.i.ad7124_spi_write_mask.exit238.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval.i229.i.i.i) #6
  br label %if.end6.i

if.else.i:                                        ; preds = %ad7124_find_similar_live_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %cfg_slot.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %i.014.i.i, i32 1, i32 1
  %80 = ptrtoint ptr %cfg_slot.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cfg_slot.i, align 4
  %cfg_slot5.i = getelementptr %struct.ad7124_channel, ptr %1, i32 %channel, i32 1, i32 1
  %82 = ptrtoint ptr %cfg_slot5.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %cfg_slot5.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %ad7124_spi_write_mask.exit238.i.i.i, %ad7124_spi_write_mask.exit228.i.i.i.if.end6.i_crit_edge, %ad7124_spi_write_mask.exit228.thread.i.i.i, %ad7124_spi_write_mask.exit.i.i.i.if.end6.i_crit_edge, %ad7124_spi_write_mask.exit.thread.i.i.i, %if.end63.i.i.if.end6.i_crit_edge, %ad7124_pop_config.exit.i.i.if.end6.i_crit_edge, %if.else16.i.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  %83 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %channels.i, align 128
  %cfg.i.i = getelementptr %struct.ad7124_channel, ptr %84, i32 %channel, i32 1
  %85 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %cfg.i.i, align 4
  %cfg_slot.i.i = getelementptr %struct.ad7124_channel, ptr %84, i32 %channel, i32 1, i32 1
  %86 = ptrtoint ptr %cfg_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cfg_slot.i.i, align 4
  %arrayidx8.i = getelementptr %struct.ad7124_channel, ptr %84, i32 %channel
  %ain.i.i = getelementptr %struct.ad7124_channel, ptr %84, i32 %channel, i32 2
  %88 = ptrtoint ptr %ain.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ain.i.i, align 4
  %90 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx8.i, align 4
  %add.i.i = add i32 %91, 9
  %shl.i.i = shl i32 %87, 12
  %and14.i.i = and i32 %shl.i.i, 28672
  %or.i.i = or i32 %and14.i.i, %89
  %or26.i.i = or i32 %or.i.i, 32768
  %call.i.i = call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef %add.i.i, i32 noundef 2, i32 noundef %or26.i.i) #6
  call void @mutex_unlock(ptr noundef %cfgs_lock) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7124_set_mode(ptr noundef %sd, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adc_control = getelementptr i8, ptr %sd, i32 280
  %0 = ptrtoint ptr %adc_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adc_control, align 8
  %and = and i32 %1, -61
  %shl = shl i32 %mode, 2
  %and15 = and i32 %shl, 60
  %or = or i32 %and, %and15
  store i32 %or, ptr %adc_control, align 8
  %call = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef 1, i32 noundef 2, i32 noundef %or) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_write_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_read_reg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7124_read_raw(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb39
    i32 12, label %sw.bb56
    i32 10, label %sw.bb63
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @ad_sigma_delta_single_conversion(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %sd = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 2
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %add = add i32 %4, 9
  %channels = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channels, align 128
  %ain = getelementptr %struct.ad7124_channel, ptr %6, i32 %4, i32 2
  %7 = ptrtoint ptr %ain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ain, align 4
  %call15 = tail call i32 @ad_sd_write_reg(ptr noundef %sd, i32 noundef %add, i32 noundef 2, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  %call15. = select i1 %cmp16, i32 %call15, i32 1
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cfgs_lock = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %cfgs_lock, i32 noundef 0) #6
  %channels20 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %channels20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels20, align 128
  %address21 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %11 = ptrtoint ptr %address21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address21, align 4
  %pga_bits = getelementptr %struct.ad7124_channel, ptr %10, i32 %12, i32 1, i32 7
  %13 = ptrtoint ptr %pga_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pga_bits, align 4
  %vref_mv = getelementptr %struct.ad7124_channel, ptr %10, i32 %12, i32 1, i32 6
  %15 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vref_mv, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  %18 = load ptr, ptr %channels20, align 128
  %19 = load i32, ptr %address21, align 4
  %bipolar = getelementptr %struct.ad7124_channel, ptr %18, i32 %19, i32 1, i32 3
  %20 = ptrtoint ptr %bipolar to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bipolar, align 4, !range !115
  %realbits34 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %realbits34 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %realbits34, align 1
  %conv35 = zext i8 %23 to i32
  %sext = sub nsw i8 0, %21
  %sub = sext i8 %sext to i32
  %.sink = add i32 %14, %sub
  %add36 = add i32 %.sink, %conv35
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add36, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %cfgs_lock) #6
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %cfgs_lock40 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %cfgs_lock40, i32 noundef 0) #6
  %channels41 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %channels41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channels41, align 128
  %address42 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %27 = ptrtoint ptr %address42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %address42, align 4
  %bipolar45 = getelementptr %struct.ad7124_channel, ptr %26, i32 %28, i32 1, i32 3
  %29 = ptrtoint ptr %bipolar45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bipolar45, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool46.not = icmp eq i8 %30, 0
  br i1 %tobool46.not, label %sw.bb39.if.end54_crit_edge, label %if.then47

sw.bb39.if.end54_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then47:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %realbits49 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %realbits49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %realbits49, align 1
  %conv50 = zext i8 %32 to i32
  %sub51 = add nsw i32 %conv50, -1
  %shl.neg = shl nsw i32 -1, %sub51
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %sw.bb39.if.end54_crit_edge
  %storemerge = phi i32 [ %shl.neg, %if.then47 ], [ 0, %sw.bb39.if.end54_crit_edge ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %cfgs_lock40) #6
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cfgs_lock57 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %cfgs_lock57, i32 noundef 0) #6
  %channels58 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %channels58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %channels58, align 128
  %address59 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %36 = ptrtoint ptr %address59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address59, align 4
  %odr = getelementptr %struct.ad7124_channel, ptr %35, i32 %37, i32 1, i32 8
  %38 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %odr, align 4
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %cfgs_lock57) #6
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %cfgs_lock64 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %cfgs_lock64, i32 noundef 0) #6
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %41 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_index, align 4
  %channels.i = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %channels.i, align 128
  %odr.i = getelementptr %struct.ad7124_channel, ptr %44, i32 %42, i32 1, i32 8
  %45 = ptrtoint ptr %odr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %odr.i, align 4
  %filter_type.i = getelementptr %struct.ad7124_channel, ptr %44, i32 %42, i32 1, i32 10
  %47 = ptrtoint ptr %filter_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %filter_type.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %48, label %sw.bb63.ad7124_get_3db_filter_freq.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb5.i
  ]

sw.bb63.ad7124_get_3db_filter_freq.exit_crit_edge: ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_get_3db_filter_freq.exit

sw.bb.i:                                          ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %46, 230
  %add.i = add i32 %mul.i, 500
  %div4.i = udiv i32 %add.i, 1000
  br label %ad7124_get_3db_filter_freq.exit

sw.bb5.i:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #8
  %mul7.i = mul i32 %46, 262
  %add11.i = add i32 %mul7.i, 500
  %div12.i = udiv i32 %add11.i, 1000
  br label %ad7124_get_3db_filter_freq.exit

ad7124_get_3db_filter_freq.exit:                  ; preds = %sw.bb5.i, %sw.bb.i, %sw.bb63.ad7124_get_3db_filter_freq.exit_crit_edge
  %retval.0.i = phi i32 [ %div12.i, %sw.bb5.i ], [ %div4.i, %sw.bb.i ], [ -22, %sw.bb63.ad7124_get_3db_filter_freq.exit_crit_edge ]
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %cfgs_lock64) #6
  br label %cleanup

cleanup:                                          ; preds = %ad7124_get_3db_filter_freq.exit, %sw.bb56, %if.end54, %sw.bb19, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ad7124_get_3db_filter_freq.exit ], [ 1, %sw.bb56 ], [ 1, %if.end54 ], [ 11, %sw.bb19 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call15., %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7124_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfgs_lock = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %cfgs_lock, i32 noundef 0) #6
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %info, label %entry.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb1
    i32 10, label %sw.bb43
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp.not = icmp eq i32 %val2, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %mclk.i = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %6) #6
  %mul.i = shl i32 %val, 5
  %div41.i = lshr exact i32 %mul.i, 1
  %add.i = add i32 %call.i, %div41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %add.i)
  %cmp.i = icmp ugt i32 %mul.i, %add.i
  br i1 %cmp.i, label %if.end.if.end4.i_crit_edge, label %if.else.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = udiv i32 %add.i, %mul.i
  %7 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 2047) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.if.end4.i_crit_edge
  %odr_sel_bits.0.i = phi i32 [ %7, %if.else.i ], [ 1, %if.end.if.end4.i_crit_edge ]
  %channels.i = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels.i, align 128
  %odr_sel_bits5.i = getelementptr %struct.ad7124_channel, ptr %9, i32 %4, i32 1, i32 9
  %10 = ptrtoint ptr %odr_sel_bits5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odr_sel_bits5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %odr_sel_bits.0.i, i32 %11)
  %cmp6.not.i = icmp eq i32 %odr_sel_bits.0.i, %11
  br i1 %cmp6.not.i, label %if.end4.i.ad7124_set_channel_odr.exit_crit_edge, label %if.then7.i

if.end4.i.ad7124_set_channel_odr.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_set_channel_odr.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i = getelementptr %struct.ad7124_channel, ptr %9, i32 %4, i32 1
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %cfg.i, align 4
  br label %ad7124_set_channel_odr.exit

ad7124_set_channel_odr.exit:                      ; preds = %if.then7.i, %if.end4.i.ad7124_set_channel_odr.exit_crit_edge
  %mul14.i = shl nuw nsw i32 %odr_sel_bits.0.i, 5
  %div16.i = shl nuw nsw i32 %odr_sel_bits.0.i, 4
  %add17.i = add i32 %div16.i, %call.i
  %div18.i = udiv i32 %add17.i, %mul14.i
  %13 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels.i, align 128
  %odr22.i = getelementptr %struct.ad7124_channel, ptr %14, i32 %4, i32 1, i32 8
  %15 = ptrtoint ptr %odr22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div18.i, ptr %odr22.i, align 4
  %16 = load ptr, ptr %channels.i, align 128
  %odr_sel_bits26.i = getelementptr %struct.ad7124_channel, ptr %16, i32 %4, i32 1, i32 9
  %17 = ptrtoint ptr %odr_sel_bits26.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %odr_sel_bits.0.i, ptr %odr_sel_bits26.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.not = icmp eq i32 %val, 0
  br i1 %cmp2.not, label %if.end4, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end4:                                          ; preds = %sw.bb1
  %channels = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channels, align 128
  %address5 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %20 = ptrtoint ptr %address5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %address5, align 4
  %bipolar = getelementptr %struct.ad7124_channel, ptr %19, i32 %21, i32 1, i32 3
  %22 = ptrtoint ptr %bipolar to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bipolar, align 4, !range !115
  %realbits8 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %realbits8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %realbits8, align 1
  %conv9 = zext i8 %25 to i32
  %sext = sub nsw i8 0, %23
  %sub = sext i8 %sext to i32
  %sub.pn = add nsw i32 %conv9, %sub
  %full_scale.0 = shl nuw i32 1, %sub.pn
  %vref_mv = getelementptr %struct.ad7124_channel, ptr %19, i32 %21, i32 1, i32 6
  %26 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vref_mv, align 4
  %mul = mul i32 %27, 1000000
  %div74 = lshr i32 %full_scale.0, 1
  %add = add i32 %mul, %div74
  %div1875 = lshr i32 %add, %sub.pn
  %div22 = sdiv i32 %val2, 2
  %add23 = add i32 %div1875, %div22
  %div24 = udiv i32 %add23, %val2
  %sub.i = add i32 %div24, -1
  %28 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #6
  %sub.i.1 = add i32 %div24, -2
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %28)
  %cmp3.i.1 = icmp ult i32 %29, %28
  %idx.1.i.1 = zext i1 %cmp3.i.1 to i32
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %28) #6
  %sub.i.2 = add i32 %div24, -4
  %31 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %30)
  %cmp3.i.2 = icmp ult i32 %31, %30
  %idx.1.i.2 = select i1 %cmp3.i.2, i32 2, i32 %idx.1.i.1
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %30) #6
  %sub.i.3 = add i32 %div24, -8
  %33 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %32)
  %cmp3.i.3 = icmp ult i32 %33, %32
  %idx.1.i.3 = select i1 %cmp3.i.3, i32 3, i32 %idx.1.i.2
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %32) #6
  %sub.i.4 = add i32 %div24, -16
  %35 = tail call i32 @llvm.abs.i32(i32 %sub.i.4, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %34)
  %cmp3.i.4 = icmp ult i32 %35, %34
  %idx.1.i.4 = select i1 %cmp3.i.4, i32 4, i32 %idx.1.i.3
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %34) #6
  %sub.i.5 = add i32 %div24, -32
  %37 = tail call i32 @llvm.abs.i32(i32 %sub.i.5, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %36)
  %cmp3.i.5 = icmp ult i32 %37, %36
  %idx.1.i.5 = select i1 %cmp3.i.5, i32 5, i32 %idx.1.i.4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %36) #6
  %sub.i.6 = add i32 %div24, -64
  %39 = tail call i32 @llvm.abs.i32(i32 %sub.i.6, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %38)
  %cmp3.i.6 = icmp ult i32 %39, %38
  %idx.1.i.6 = select i1 %cmp3.i.6, i32 6, i32 %idx.1.i.5
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %38) #6
  %sub.i.7 = add i32 %div24, -128
  %41 = tail call i32 @llvm.abs.i32(i32 %sub.i.7, i1 false) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %40)
  %cmp3.i.7 = icmp ult i32 %41, %40
  %idx.1.i.7 = select i1 %cmp3.i.7, i32 7, i32 %idx.1.i.6
  %pga_bits = getelementptr %struct.ad7124_channel, ptr %19, i32 %21, i32 1, i32 7
  %42 = ptrtoint ptr %pga_bits to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pga_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %idx.1.i.7)
  %cmp30.not = icmp eq i32 %43, %idx.1.i.7
  br i1 %cmp30.not, label %if.end4.if.end37_crit_edge, label %if.then32

if.end4.if.end37_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then32:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %cfg29 = getelementptr %struct.ad7124_channel, ptr %19, i32 %21, i32 1
  %44 = ptrtoint ptr %cfg29 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cfg29, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end4.if.end37_crit_edge
  %45 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %channels, align 128
  %47 = ptrtoint ptr %address5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %address5, align 4
  %pga_bits42 = getelementptr %struct.ad7124_channel, ptr %46, i32 %48, i32 1, i32 7
  %49 = ptrtoint ptr %pga_bits42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %idx.1.i.7, ptr %pga_bits42, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp44.not = icmp eq i32 %val2, 0
  br i1 %cmp44.not, label %if.end47, label %sw.bb43.sw.epilog_crit_edge

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end47:                                         ; preds = %sw.bb43
  %address48 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %50 = ptrtoint ptr %address48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %address48, align 4
  %mul.i76 = mul i32 %val, 1000
  %add.i77 = add i32 %mul.i76, 115
  %div1.i78 = udiv i32 %add.i77, 230
  %add7.i = add i32 %mul.i76, 131
  %div8.i = udiv i32 %add7.i, 262
  %52 = tail call i32 @llvm.umax.i32(i32 %div1.i78, i32 %div8.i) #6
  %channels.i79 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %channels.i79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channels.i79, align 128
  %odr.i = getelementptr %struct.ad7124_channel, ptr %54, i32 %51, i32 1, i32 8
  %55 = ptrtoint ptr %odr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %odr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %56)
  %cmp9.not.i = icmp eq i32 %52, %56
  br i1 %cmp9.not.i, label %if.end47.ad7124_set_3db_filter_freq.exit_crit_edge, label %if.then10.i

if.end47.ad7124_set_3db_filter_freq.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7124_set_3db_filter_freq.exit

if.then10.i:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i80 = getelementptr %struct.ad7124_channel, ptr %54, i32 %51, i32 1
  %57 = ptrtoint ptr %cfg.i80 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %cfg.i80, align 4
  br label %ad7124_set_3db_filter_freq.exit

ad7124_set_3db_filter_freq.exit:                  ; preds = %if.then10.i, %if.end47.ad7124_set_3db_filter_freq.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i78, i32 %div8.i)
  %cmp.i81 = icmp ugt i32 %div1.i78, %div8.i
  %..i = select i1 %cmp.i81, i32 2, i32 0
  %58 = ptrtoint ptr %channels.i79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels.i79, align 128
  %filter_type.i = getelementptr %struct.ad7124_channel, ptr %59, i32 %51, i32 1, i32 10
  %60 = ptrtoint ptr %filter_type.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %..i, ptr %filter_type.i, align 4
  %61 = load ptr, ptr %channels.i79, align 128
  %odr21.i = getelementptr %struct.ad7124_channel, ptr %61, i32 %51, i32 1, i32 8
  %62 = ptrtoint ptr %odr21.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %52, ptr %odr21.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %ad7124_set_3db_filter_freq.exit, %sw.bb43.sw.epilog_crit_edge, %if.end37, %sw.bb1.sw.epilog_crit_edge, %ad7124_set_channel_odr.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %ad7124_set_3db_filter_freq.exit ], [ 0, %if.end37 ], [ 0, %ad7124_set_channel_odr.exit ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %sw.bb1.sw.epilog_crit_edge ], [ -22, %sw.bb43.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cfgs_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sd_validate_trigger(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7124_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %reg)
  %cmp = icmp ugt i32 %reg, 56
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %sd3 = getelementptr inbounds %struct.ad7124_state, ptr %1, i32 0, i32 2
  %arrayidx4 = getelementptr [57 x i32], ptr @ad7124_reg_size, i32 0, i32 %reg
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @ad_sd_read_reg(ptr noundef %sd3, i32 noundef %reg, i32 noundef %3, ptr noundef nonnull %readval) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @ad_sd_write_reg(ptr noundef %sd3, i32 noundef %reg, i32 noundef %3, i32 noundef %writeval) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.then1 ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad_sigma_delta_single_conversion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @ad_sd_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_ad7124__370_968_ad71124_driver_init6, !1, !"__initcall__kmod_ad7124__370_968_ad71124_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7124.c", i32 968, i32 1}
!2 = !{ptr @__exitcall_ad71124_driver_exit, !1, !"__exitcall_ad71124_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author371, !4, !"__UNIQUE_ID_author371", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7124.c", i32 970, i32 1}
!5 = !{ptr @__UNIQUE_ID_description372, !6, !"__UNIQUE_ID_description372", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7124.c", i32 971, i32 1}
!7 = !{ptr @__UNIQUE_ID_file373, !8, !"__UNIQUE_ID_file373", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7124.c", i32 972, i32 1}
!9 = !{ptr @__UNIQUE_ID_license374, !8, !"__UNIQUE_ID_license374", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7124.c", i32 963, i32 11}
!12 = !{ptr @ad71124_driver, !13, !"ad71124_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7124.c", i32 961, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7124.c", i32 920, i32 37}
!16 = !{ptr @ad7124_sigma_delta_info, !17, !"ad7124_sigma_delta_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7124.c", i32 516, i32 41}
!18 = !{ptr @ad7124_info, !19, !"ad7124_info", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7124.c", i32 673, i32 30}
!20 = !{ptr @ad7124_attrs_group, !21, !"ad7124_attrs_group", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7124.c", i32 669, i32 37}
!22 = !{ptr @ad7124_attributes, !23, !"ad7124_attributes", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7124.c", i32 664, i32 26}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7124.c", i32 661, i32 8}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @iio_const_attr_in_voltage_scale_available, !25, !"iio_const_attr_in_voltage_scale_available", i1 false, i1 false}
!28 = distinct !{null, !29, !"ad7124_gain", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7124.c", i32 113, i32 27}
!30 = !{ptr @ad7124_reg_size, !31, !"ad7124_reg_size", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7124.c", i32 117, i32 27}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7124.c", i32 749, i32 3}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ad7124_of_parse_channel_config._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @ad7124_of_parse_channel_config._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ad7124.c", i32 770, i32 37}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ad7124.c", i32 775, i32 4}
!44 = !{ptr @ad7124_of_parse_channel_config._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ad7124_of_parse_channel_config._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ad7124.c", i32 781, i32 43}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ad7124.c", i32 790, i32 47}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ad7124.c", i32 792, i32 37}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ad7124.c", i32 798, i32 52}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ad7124.c", i32 799, i32 52}
!56 = !{ptr @ad7124_channel_template, !57, !"ad7124_channel_template", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ad7124.c", i32 178, i32 35}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/ad7124.c", i32 132, i32 20}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ad7124.c", i32 133, i32 20}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/ad7124.c", i32 134, i32 21}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/ad7124.c", i32 135, i32 22}
!66 = !{ptr @ad7124_ref_names, !67, !"ad7124_ref_names", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/ad7124.c", i32 131, i32 27}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/ad7124.c", i32 703, i32 2}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ad7124_soft_reset._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ad7124_soft_reset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ad7124.c", i32 721, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ad7124_check_chip_id._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ad7124_check_chip_id._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/ad7124.c", i32 728, i32 3}
!80 = !{ptr @ad7124_check_chip_id._entry.26, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ad7124_check_chip_id._entry_ptr.28, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @ad7124_setup.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/ad7124.c", i32 841, i32 2}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ad7124_master_clk_freq_hz, !86, !"ad7124_master_clk_freq_hz", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/ad7124.c", i32 125, i32 18}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/ad7124.c", i32 366, i32 4}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ad7124_init_config_vref._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ad7124_init_config_vref._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/ad7124.c", i32 382, i32 3}
!94 = !{ptr @ad7124_init_config_vref._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ad7124_init_config_vref._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ad7124_of_match, !97, !"ad7124_of_match", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/ad7124.c", i32 952, i32 34}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/ad7124.c", i32 198, i32 11}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/ad7124.c", i32 203, i32 11}
!102 = !{ptr @ad7124_chip_info_tbl, !103, !"ad7124_chip_info_tbl", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/ad7124.c", i32 196, i32 32}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i8 0, i8 2}
!116 = !{i64 2155590067}
!117 = !{i64 2155588464}
!118 = !{i64 2155591661}
