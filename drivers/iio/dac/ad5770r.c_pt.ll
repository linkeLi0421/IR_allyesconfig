; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5770r.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5770r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.ad5770r_output_modes = type { i32, i8, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.ad5770r_state = type { ptr, ptr, ptr, ptr, [6 x %struct.ad5770r_out_range], i32, [6 x i8], i8, i8, [88 x i8], [2 x i8], [126 x i8] }
%struct.ad5770r_out_range = type { i8, i8 }

@__initcall__kmod_ad5770r__290_696_ad5770r_driver_init6 = internal global ptr @ad5770r_driver_init, section ".initcall6.init", align 4
@ad5770r_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5770r_id, ptr @ad5770r_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5770r_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5770r_driver_exit = internal global ptr @ad5770r_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"ad5770r.author=Mircea Caprioru <mircea.caprioru@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [48 x i8] c"ad5770r.description=Analog Devices AD5770R IDAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"ad5770r.file=drivers/iio/dac/ad5770r\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"ad5770r.license=GPL v2\00", section ".modinfo", align 1
@ad5770r_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5770r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ad5770r\00", [24 x i8] zeroinitializer }, align 32
@ad5770r_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5770r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad5770r_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad5770r_spi_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 128, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ad5770r:623:(&ad5770r_spi_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@ad5770r_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error initializing spi regmap: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad5770r_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/dac/ad5770r.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5770r_probe._entry_ptr = internal global ptr @ad5770r_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad5770r_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 636, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable vref regulators: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ad5770r_probe._entry_ptr.10 = internal global ptr @ad5770r_probe._entry.8, section ".printk_index", align 4
@ad5770r_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5770r_read_raw, ptr null, ptr @ad5770r_read_freq_avail, ptr @ad5770r_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad5770r_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5770r_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 39, i32 0, %struct.anon.84 zeroinitializer, i32 1037, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5770r_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 41, i32 0, %struct.anon.84 zeroinitializer, i32 1037, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5770r_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 43, i32 0, %struct.anon.84 zeroinitializer, i32 1037, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5770r_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 3, i32 0, i32 45, i32 0, %struct.anon.84 zeroinitializer, i32 1037, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5770r_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 4, i32 0, i32 47, i32 0, %struct.anon.84 zeroinitializer, i32 1037, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5770r_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 5, i32 0, i32 49, i32 0, %struct.anon.84 zeroinitializer, i32 1037, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5770r_ext_info, ptr null, ptr null, i8 96 }], [144 x i8] zeroinitializer }, align 32
@ad5770r_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AD5770R init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ad5770r_probe._entry_ptr.13 = internal global ptr @ad5770r_probe._entry.11, section ".printk_index", align 4
@ad5770r_rng_tbl = internal constant { [14 x %struct.ad5770r_output_modes], [32 x i8] } { [14 x %struct.ad5770r_output_modes] [%struct.ad5770r_output_modes { i32 0, i8 0, i32 0, i32 300 }, %struct.ad5770r_output_modes { i32 0, i8 1, i32 -60, i32 0 }, %struct.ad5770r_output_modes { i32 0, i8 2, i32 -60, i32 300 }, %struct.ad5770r_output_modes { i32 1, i8 1, i32 0, i32 140 }, %struct.ad5770r_output_modes { i32 1, i8 2, i32 0, i32 140 }, %struct.ad5770r_output_modes { i32 1, i8 3, i32 0, i32 250 }, %struct.ad5770r_output_modes { i32 2, i8 0, i32 0, i32 55 }, %struct.ad5770r_output_modes { i32 2, i8 1, i32 0, i32 150 }, %struct.ad5770r_output_modes { i32 3, i8 0, i32 0, i32 45 }, %struct.ad5770r_output_modes { i32 3, i8 1, i32 0, i32 100 }, %struct.ad5770r_output_modes { i32 4, i8 0, i32 0, i32 45 }, %struct.ad5770r_output_modes { i32 4, i8 1, i32 0, i32 100 }, %struct.ad5770r_output_modes { i32 5, i8 0, i32 0, i32 45 }, %struct.ad5770r_output_modes { i32 5, i8 1, i32 0, i32 100 }], [32 x i8] zeroinitializer }, align 32
@ad5770r_filter_reg_vals = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9, i32 8, i32 7, i32 6, i32 5, i32 0], [40 x i8] zeroinitializer }, align 32
@ad5770r_filter_freqs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 153, i32 357, i32 715, i32 1400, i32 2800, i32 262000], [40 x i8] zeroinitializer }, align 32
@ad5770r_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.14, i32 0, ptr @ad5770r_read_dac_powerdown, ptr @ad5770r_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,external-resistor\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,range-microamp\00", [45 x i8] zeroinitializer }, align 32
@switch.table.ad5770r_read_raw = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 5, i32 0, i32 0, i32 0, i32 0, i32 4, i32 3, i32 2, i32 1, i32 0], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1250, i64 2500]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ad5770r_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 687, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"ad5770r_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 681, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 689, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ad5770r_of_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 675, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"ad5770r_spi_regmap_config\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 146, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 623, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 625, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 631, i32 56 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 635, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ad5770r_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 403, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"ad5770r_channels\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 505, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 668, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"ad5770r_rng_tbl\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 159, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"ad5770r_filter_reg_vals\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 180, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"ad5770r_filter_freqs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 176, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"ad5770r_ext_info\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 480, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 482, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 436, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 557, i32 58 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 579, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 525, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [29 x i8] c"../drivers/iio/dac/ad5770r.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 534, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"switch.table.ad5770r_read_raw\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5770r_driver_exit, ptr @__initcall__kmod_ad5770r__290_696_ad5770r_driver_init6, ptr @ad5770r_driver_exit, ptr @ad5770r_probe._entry, ptr @ad5770r_probe._entry.11, ptr @ad5770r_probe._entry.8, ptr @ad5770r_probe._entry_ptr, ptr @ad5770r_probe._entry_ptr.10, ptr @ad5770r_probe._entry_ptr.13, ptr @ad5770r_driver, ptr @ad5770r_id, ptr @.str, ptr @ad5770r_of_id, ptr @ad5770r_probe._key, ptr @ad5770r_spi_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ad5770r_info, ptr @ad5770r_channels, ptr @.str.12, ptr @ad5770r_rng_tbl, ptr @ad5770r_filter_reg_vals, ptr @ad5770r_filter_freqs, ptr @ad5770r_ext_info, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.ad5770r_read_raw], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_spi_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_rng_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_filter_reg_vals to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_filter_freqs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5770r_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad5770r_read_raw to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5770r_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5770r_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5770r_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp.i.i = alloca [2 x i32], align 4
  %num.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #6
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
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %1, align 128
  %call3 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @ad5770r_spi_regmap_config, ptr noundef nonnull @ad5770r_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %regmap10 = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %regmap10, align 4
  %call12 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.7) #6
  %vref_reg = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %vref_reg, align 8
  %cmp.i102 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end9
  %call17 = tail call i32 @regulator_enable(ptr noundef %call12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef %call17) #9
  br label %cleanup

if.end24:                                         ; preds = %if.then15
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad5770r_disable_regulator, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end24.if.end28_crit_edge, label %devm_add_action_or_reset.exit

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

devm_add_action_or_reset.exit:                    ; preds = %if.end24
  %7 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vref_reg, align 8
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end28_crit_edge

devm_add_action_or_reset.exit.if.end28_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %devm_add_action_or_reset.exit.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %9 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vref_reg, align 8
  %call30 = tail call i32 @regulator_get_voltage(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %div110 = udiv i32 %call30, 1000
  %vref = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div110, ptr %vref, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end9
  %12 = ptrtoint ptr %call12 to i32
  %cmp36 = icmp eq ptr %call12, inttoptr (i32 -19 to ptr)
  br i1 %cmp36, label %if.then37, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %vref38 = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %vref38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1250, ptr %vref38, align 4
  %internal_ref = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %internal_ref to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %internal_ref, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.end33
  %call44 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %name45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call44, ptr %name45, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ad5770r_info, ptr %info, align 8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ad5770r_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %num_channels, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %call.i103 = tail call ptr @devm_gpiod_get_optional(ptr noundef %21, ptr noundef nonnull @.str.16, i32 noundef 7) #6
  %gpio_reset.i = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i103, ptr %gpio_reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i104, label %if.end.i

if.then.i104:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i103 to i32
  br label %ad5770r_init.exit

if.end.i:                                         ; preds = %if.end43
  %tobool.not.i.i = icmp eq ptr %call.i103, null
  br i1 %tobool.not.i.i, label %ad5770r_reset.exit.i, label %ad5770r_reset.exit.thread.i

ad5770r_reset.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call.i103, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %24 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %25, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  br label %if.end7.i

ad5770r_reset.exit.i:                             ; preds = %if.end.i
  %26 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap10, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i105 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i105, label %ad5770r_reset.exit.i.if.end7.i_crit_edge, label %ad5770r_reset.exit.i.ad5770r_init.exit_crit_edge

ad5770r_reset.exit.i.ad5770r_init.exit_crit_edge: ; preds = %ad5770r_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

ad5770r_reset.exit.i.if.end7.i_crit_edge:         ; preds = %ad5770r_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %ad5770r_reset.exit.i.if.end7.i_crit_edge, %ad5770r_reset.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #6
  %28 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !74
  %29 = getelementptr inbounds [2 x i32], ptr %tmp.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i.i) #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %call.i.i106 = tail call i32 @device_get_child_node_count(ptr noundef %32) #6
  %33 = ptrtoint ptr %num.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i.i106, ptr %num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i106)
  %cmp.not.i.i = icmp eq i32 %call.i.i106, 6
  br i1 %cmp.not.i.i, label %if.end.i71.i, label %if.end7.i.ad5770r_channel_config.exit.thread.i_crit_edge

if.end7.i.ad5770r_channel_config.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_channel_config.exit.thread.i

if.end.i71.i:                                     ; preds = %if.end7.i
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 128
  %call3.i.i = tail call ptr @device_get_next_child_node(ptr noundef %35, ptr noundef null) #6
  %tobool.not46.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not46.i.i, label %if.end.i71.i.ad5770r_channel_config.exit.i_crit_edge, label %if.end.i71.i.for.body.i.i_crit_edge

if.end.i71.i.for.body.i.i_crit_edge:              ; preds = %if.end.i71.i
  br label %for.body.i.i

if.end.i71.i.ad5770r_channel_config.exit.i_crit_edge: ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_channel_config.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i71.i.for.body.i.i_crit_edge
  %child.047.i.i = phi ptr [ %call23.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call3.i.i, %if.end.i71.i.for.body.i.i_crit_edge ]
  %call.i.i72.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.047.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %num.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i72.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %for.body.i.i.err_child_out.i.i_crit_edge

for.body.i.i.err_child_out.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_child_out.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  %36 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp8.i.i = icmp ugt i32 %37, 5
  br i1 %cmp8.i.i, label %if.end7.i.i.err_child_out.i.i_crit_edge, label %if.end10.i.i

if.end7.i.i.err_child_out.i.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_child_out.i.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %call11.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.047.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %tmp.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.err_child_out.i.i_crit_edge

if.end10.i.i.err_child_out.i.i_crit_edge:         ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_child_out.i.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %38 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tmp.i.i, align 4
  %div.i.i = sdiv i32 %39, 1000
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %29, align 4
  %div16.i.i = sdiv i32 %41, 1000
  %42 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end14.i.i
  %i.019.i.i.i = phi i32 [ 0, %if.end14.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.019.i.i.i
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp1.not.i.i.i = icmp eq i32 %45, %43
  br i1 %cmp1.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %min3.i.i.i = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.019.i.i.i, i32 2
  %46 = ptrtoint ptr %min3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %min3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %div.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %47, %div.i.i
  br i1 %cmp4.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.i.for.inc.i.i.i_crit_edge

if.end.i.i.i.for.inc.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %max6.i.i.i = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.019.i.i.i, i32 3
  %48 = ptrtoint ptr %max6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %div16.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %49, %div16.i.i
  br i1 %cmp7.not.i.i.i, label %for.inc.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.019.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 14
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.err_child_out.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.err_child_out.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_child_out.i.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i.i
  %mode.i.i.i = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.019.i.i.i, i32 1
  %50 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mode.i.i.i, align 4
  %out_range_mode.i.i.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 %43, i32 1
  %52 = ptrtoint ptr %out_range_mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %out_range_mode.i.i.i, align 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 128
  %call23.i.i = call ptr @device_get_next_child_node(ptr noundef %54, ptr noundef nonnull %child.047.i.i) #6
  %tobool.not.i73.i = icmp eq ptr %call23.i.i, null
  br i1 %tobool.not.i73.i, label %for.inc.i.i.ad5770r_channel_config.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.ad5770r_channel_config.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_channel_config.exit.i

err_child_out.i.i:                                ; preds = %for.inc.i.i.i.err_child_out.i.i_crit_edge, %if.end10.i.i.err_child_out.i.i_crit_edge, %if.end7.i.i.err_child_out.i.i_crit_edge, %for.body.i.i.err_child_out.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -22, %for.inc.i.i.i.err_child_out.i.i_crit_edge ], [ -22, %if.end7.i.i.err_child_out.i.i_crit_edge ], [ %call11.i.i, %if.end10.i.i.err_child_out.i.i_crit_edge ], [ %call.i.i72.i, %for.body.i.i.err_child_out.i.i_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.047.i.i) #6
  br label %ad5770r_channel_config.exit.thread.i

ad5770r_channel_config.exit.thread.i:             ; preds = %err_child_out.i.i, %if.end7.i.ad5770r_channel_config.exit.thread.i_crit_edge
  %retval.0.i74.ph.i = phi i32 [ -22, %if.end7.i.ad5770r_channel_config.exit.thread.i_crit_edge ], [ %ret.0.i.i, %err_child_out.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #6
  br label %ad5770r_init.exit

ad5770r_channel_config.exit.i:                    ; preds = %for.inc.i.i.ad5770r_channel_config.exit.i_crit_edge, %if.end.i71.i.ad5770r_channel_config.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #6
  %arrayidx.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 0
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 1
  %57 = shl i8 %56, 2
  %out_range_mode.i.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 0, i32 1
  %58 = ptrtoint ptr %out_range_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %out_range_mode.i.i, align 1
  %60 = and i8 %59, 3
  %or4.i.i = or i8 %60, %57
  %or.i.i = zext i8 %or4.i.i to i32
  %61 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap10, align 4
  %call.i75.i = call i32 @regmap_write(ptr noundef %62, i32 noundef 21, i32 noundef %or.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool13.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool13.not.i, label %for.cond.i, label %ad5770r_channel_config.exit.i.ad5770r_init.exit_crit_edge

ad5770r_channel_config.exit.i.ad5770r_init.exit_crit_edge: ; preds = %ad5770r_channel_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

for.cond.i:                                       ; preds = %ad5770r_channel_config.exit.i
  %arrayidx.1.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.1.i, align 1
  %65 = shl i8 %64, 2
  %out_range_mode.i.1.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 1, i32 1
  %66 = ptrtoint ptr %out_range_mode.i.1.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %out_range_mode.i.1.i, align 1
  %68 = and i8 %67, 3
  %or4.i.1.i = or i8 %68, %65
  %or.i.1.i = zext i8 %or4.i.1.i to i32
  %69 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap10, align 4
  %call.i75.1.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 22, i32 noundef %or.i.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.1.i)
  %tobool13.not.1.i = icmp eq i32 %call.i75.1.i, 0
  br i1 %tobool13.not.1.i, label %for.cond.1.i, label %for.cond.i.ad5770r_init.exit_crit_edge

for.cond.i.ad5770r_init.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.2.i, align 1
  %73 = shl i8 %72, 2
  %out_range_mode.i.2.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 2, i32 1
  %74 = ptrtoint ptr %out_range_mode.i.2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %out_range_mode.i.2.i, align 1
  %76 = and i8 %75, 3
  %or4.i.2.i = or i8 %76, %73
  %or.i.2.i = zext i8 %or4.i.2.i to i32
  %77 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap10, align 4
  %call.i75.2.i = call i32 @regmap_write(ptr noundef %78, i32 noundef 23, i32 noundef %or.i.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.2.i)
  %tobool13.not.2.i = icmp eq i32 %call.i75.2.i, 0
  br i1 %tobool13.not.2.i, label %for.cond.2.i, label %for.cond.1.i.ad5770r_init.exit_crit_edge

for.cond.1.i.ad5770r_init.exit_crit_edge:         ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 3
  %79 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.3.i, align 1
  %81 = shl i8 %80, 2
  %out_range_mode.i.3.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 3, i32 1
  %82 = ptrtoint ptr %out_range_mode.i.3.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %out_range_mode.i.3.i, align 1
  %84 = and i8 %83, 3
  %or4.i.3.i = or i8 %84, %81
  %or.i.3.i = zext i8 %or4.i.3.i to i32
  %85 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap10, align 4
  %call.i75.3.i = call i32 @regmap_write(ptr noundef %86, i32 noundef 24, i32 noundef %or.i.3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.3.i)
  %tobool13.not.3.i = icmp eq i32 %call.i75.3.i, 0
  br i1 %tobool13.not.3.i, label %for.cond.3.i, label %for.cond.2.i.ad5770r_init.exit_crit_edge

for.cond.2.i.ad5770r_init.exit_crit_edge:         ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 4
  %87 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.4.i, align 1
  %89 = shl i8 %88, 2
  %out_range_mode.i.4.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 4, i32 1
  %90 = ptrtoint ptr %out_range_mode.i.4.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %out_range_mode.i.4.i, align 1
  %92 = and i8 %91, 3
  %or4.i.4.i = or i8 %92, %89
  %or.i.4.i = zext i8 %or4.i.4.i to i32
  %93 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap10, align 4
  %call.i75.4.i = call i32 @regmap_write(ptr noundef %94, i32 noundef 25, i32 noundef %or.i.4.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.4.i)
  %tobool13.not.4.i = icmp eq i32 %call.i75.4.i, 0
  br i1 %tobool13.not.4.i, label %for.cond.4.i, label %for.cond.3.i.ad5770r_init.exit_crit_edge

for.cond.3.i.ad5770r_init.exit_crit_edge:         ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 5
  %95 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.5.i, align 1
  %97 = shl i8 %96, 2
  %out_range_mode.i.5.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 5, i32 1
  %98 = ptrtoint ptr %out_range_mode.i.5.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %out_range_mode.i.5.i, align 1
  %100 = and i8 %99, 3
  %or4.i.5.i = or i8 %100, %97
  %or.i.5.i = zext i8 %or4.i.5.i to i32
  %101 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap10, align 4
  %call.i75.5.i = call i32 @regmap_write(ptr noundef %102, i32 noundef 26, i32 noundef %or.i.5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.5.i)
  %tobool13.not.5.i = icmp eq i32 %call.i75.5.i, 0
  br i1 %tobool13.not.5.i, label %for.cond.5.i, label %for.cond.4.i.ad5770r_init.exit_crit_edge

for.cond.4.i.ad5770r_init.exit_crit_edge:         ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 128
  %fwnode.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 28
  %105 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fwnode.i, align 4
  %call.i76.i = call zeroext i1 @fwnode_property_present(ptr noundef %106, ptr noundef nonnull @.str.17) #6
  %external_res.i = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 8
  %frombool.i = zext i1 %call.i76.i to i8
  %107 = ptrtoint ptr %external_res.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %frombool.i, ptr %external_res.i, align 1
  %shl.i.i = select i1 %call.i76.i, i32 4, i32 0
  %internal_ref.i.i = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 7
  %108 = ptrtoint ptr %internal_ref.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %internal_ref.i.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool1.not.i.i = icmp eq i8 %109, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then.i78.i

if.then.i78.i:                                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i77.i = or i32 %shl.i.i, 3
  br label %ad5770r_set_reference.exit.i

if.else.i.i:                                      ; preds = %for.cond.5.i
  %vref.i.i = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 5
  %110 = ptrtoint ptr %vref.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vref.i.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i32 %111, label %sw.default.i.i [
    i32 1250, label %sw.bb.i.i
    i32 2500, label %if.else.i.i.ad5770r_set_reference.exit.i_crit_edge
  ]

if.else.i.i.ad5770r_set_reference.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_set_reference.exit.i

sw.bb.i.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %or2.i.i = or i32 %shl.i.i, 2
  br label %ad5770r_set_reference.exit.i

sw.default.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_set_reference.exit.i

ad5770r_set_reference.exit.i:                     ; preds = %sw.default.i.i, %sw.bb.i.i, %if.else.i.i.ad5770r_set_reference.exit.i_crit_edge, %if.then.i78.i
  %regval.0.i.i = phi i32 [ %or.i77.i, %if.then.i78.i ], [ 3, %sw.default.i.i ], [ %or2.i.i, %sw.bb.i.i ], [ %shl.i.i, %if.else.i.i.ad5770r_set_reference.exit.i_crit_edge ]
  %113 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap10, align 4
  %call.i80.i = call i32 @regmap_write(ptr noundef %114, i32 noundef 27, i32 noundef %regval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool20.not.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %ad5770r_set_reference.exit.i.ad5770r_init.exit_crit_edge

ad5770r_set_reference.exit.i.ad5770r_init.exit_crit_edge: ; preds = %ad5770r_set_reference.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

if.end22.i:                                       ; preds = %ad5770r_set_reference.exit.i
  %115 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap10, align 4
  %call23.i = call i32 @regmap_write(ptr noundef %116, i32 noundef 20, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.ad5770r_init.exit_crit_edge

if.end22.i.ad5770r_init.exit_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

if.end26.i:                                       ; preds = %if.end22.i
  %117 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap10, align 4
  %call28.i = call i32 @regmap_write(ptr noundef %118, i32 noundef 68, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %ad5770r_init.exit.thread, label %if.end26.i.ad5770r_init.exit_crit_edge

if.end26.i.ad5770r_init.exit_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_init.exit

ad5770r_init.exit.thread:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep.i = getelementptr i8, ptr %1, i32 32
  %119 = call ptr @memset(ptr %uglygep.i, i32 1, i32 6)
  br label %if.end53

ad5770r_init.exit:                                ; preds = %if.end26.i.ad5770r_init.exit_crit_edge, %if.end22.i.ad5770r_init.exit_crit_edge, %ad5770r_set_reference.exit.i.ad5770r_init.exit_crit_edge, %for.cond.4.i.ad5770r_init.exit_crit_edge, %for.cond.3.i.ad5770r_init.exit_crit_edge, %for.cond.2.i.ad5770r_init.exit_crit_edge, %for.cond.1.i.ad5770r_init.exit_crit_edge, %for.cond.i.ad5770r_init.exit_crit_edge, %ad5770r_channel_config.exit.i.ad5770r_init.exit_crit_edge, %ad5770r_channel_config.exit.thread.i, %ad5770r_reset.exit.i.ad5770r_init.exit_crit_edge, %if.then.i104
  %retval.0.i = phi i32 [ %23, %if.then.i104 ], [ %call.i.i.i, %ad5770r_reset.exit.i.ad5770r_init.exit_crit_edge ], [ %call.i80.i, %ad5770r_set_reference.exit.i.ad5770r_init.exit_crit_edge ], [ %call23.i, %if.end22.i.ad5770r_init.exit_crit_edge ], [ %call28.i, %if.end26.i.ad5770r_init.exit_crit_edge ], [ %retval.0.i74.ph.i, %ad5770r_channel_config.exit.thread.i ], [ %call.i75.i, %ad5770r_channel_config.exit.i.ad5770r_init.exit_crit_edge ], [ %call.i75.1.i, %for.cond.i.ad5770r_init.exit_crit_edge ], [ %call.i75.2.i, %for.cond.1.i.ad5770r_init.exit_crit_edge ], [ %call.i75.3.i, %for.cond.2.i.ad5770r_init.exit_crit_edge ], [ %call.i75.4.i, %for.cond.3.i.ad5770r_init.exit_crit_edge ], [ %call.i75.5.i, %for.cond.4.i.ad5770r_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp47 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp47, label %do.end51, label %ad5770r_init.exit.if.end53_crit_edge

ad5770r_init.exit.if.end53_crit_edge:             ; preds = %ad5770r_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end51:                                         ; preds = %ad5770r_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end53:                                         ; preds = %ad5770r_init.exit.if.end53_crit_edge, %ad5770r_init.exit.thread
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 128
  %call56 = call i32 @__devm_iio_device_register(ptr noundef %121, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end51, %if.else.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %devm_add_action_or_reset.exit.cleanup_crit_edge, %do.end22, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %retval.0.i, %do.end51 ], [ %call56, %if.end53 ], [ %call17, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ %12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad5770r_disable_regulator(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vref_reg = getelementptr inbounds %struct.ad5770r_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref_reg, align 8
  %call = tail call i32 @regulator_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 10, label %sw.bb13
    i32 3, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %transf_buf = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %6, ptr noundef %transf_buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %transf_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %transf_buf, align 128
  %conv = zext i8 %8 to i32
  %arrayidx4 = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %add = or i32 %shl, %conv
  %11 = lshr i32 %add, 2
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %out_range_mode.i = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 %14, i32 1
  %15 = ptrtoint ptr %out_range_mode.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %out_range_mode.i, align 1
  %17 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %14, label %sw.bb8.cleanup_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true.3.i
    i32 2, label %land.lhs.true.6.i
    i32 3, label %land.lhs.true.8.i
    i32 4, label %land.lhs.true.10.i
    i32 5, label %land.lhs.true.12.i
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %18 = icmp ult i8 %16, 3
  br i1 %18, label %switch.lookup, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.fold.split62.i:                           ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.fold.split63.i:                           ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.fold.split64.i:                           ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.fold.split65.i:                           ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.3.i:                                ; preds = %sw.bb8
  %switch.tableidx = add i8 %16, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %19 = icmp ult i8 %switch.tableidx, 3
  br i1 %19, label %switch.lookup72, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.6.i:                                ; preds = %sw.bb8
  %20 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %16, label %land.lhs.true.6.i.cleanup_crit_edge [
    i8 0, label %land.lhs.true.6.i.if.end12_crit_edge
    i8 1, label %if.then.fold.split62.i
  ]

land.lhs.true.6.i.if.end12_crit_edge:             ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.6.i.cleanup_crit_edge:              ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.8.i:                                ; preds = %sw.bb8
  %21 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %16, label %land.lhs.true.8.i.cleanup_crit_edge [
    i8 0, label %land.lhs.true.8.i.if.end12_crit_edge
    i8 1, label %if.then.fold.split63.i
  ]

land.lhs.true.8.i.if.end12_crit_edge:             ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.8.i.cleanup_crit_edge:              ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.10.i:                               ; preds = %sw.bb8
  %22 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %16, label %land.lhs.true.10.i.cleanup_crit_edge [
    i8 0, label %land.lhs.true.10.i.if.end12_crit_edge
    i8 1, label %if.then.fold.split64.i
  ]

land.lhs.true.10.i.if.end12_crit_edge:            ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.10.i.cleanup_crit_edge:             ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.12.i:                               ; preds = %sw.bb8
  %23 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %16, label %land.lhs.true.12.i.cleanup_crit_edge [
    i8 0, label %land.lhs.true.12.i.if.end12_crit_edge
    i8 1, label %if.then.fold.split65.i
  ]

land.lhs.true.12.i.if.end12_crit_edge:            ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.12.i.cleanup_crit_edge:             ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = zext i8 %16 to i32
  br label %if.end12

switch.lookup72:                                  ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast73 = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast73, 3
  br label %if.end12

if.end12:                                         ; preds = %switch.lookup72, %switch.lookup, %land.lhs.true.12.i.if.end12_crit_edge, %land.lhs.true.10.i.if.end12_crit_edge, %land.lhs.true.8.i.if.end12_crit_edge, %land.lhs.true.6.i.if.end12_crit_edge, %if.then.fold.split65.i, %if.then.fold.split64.i, %if.then.fold.split63.i, %if.then.fold.split62.i
  %i.025.lcssa.i = phi i32 [ 6, %land.lhs.true.6.i.if.end12_crit_edge ], [ 8, %land.lhs.true.8.i.if.end12_crit_edge ], [ 10, %land.lhs.true.10.i.if.end12_crit_edge ], [ 12, %land.lhs.true.12.i.if.end12_crit_edge ], [ 7, %if.then.fold.split62.i ], [ 9, %if.then.fold.split63.i ], [ 11, %if.then.fold.split64.i ], [ 13, %if.then.fold.split65.i ], [ %switch.idx.cast, %switch.lookup ], [ %switch.offset, %switch.lookup72 ]
  %min12.i = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.025.lcssa.i, i32 2
  %24 = ptrtoint ptr %min12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min12.i, align 4
  %max14.i = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.025.lcssa.i, i32 3
  %26 = ptrtoint ptr %max14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max14.i, align 4
  %sub = sub i32 %27, %25
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 14, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %30 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %regval.i, align 4, !annotation !74
  %regmap.i = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %33 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel.i, align 4
  %add.i = add i32 %34, 29
  %call1.i = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i, ptr noundef nonnull %regval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb13.ad5770r_get_filter_freq.exit_crit_edge, label %for.cond.preheader.i

sw.bb13.ad5770r_get_filter_freq.exit_crit_edge:   ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_get_filter_freq.exit

for.cond.preheader.i:                             ; preds = %sw.bb13
  %35 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %36)
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %switch.hole_check, label %for.cond.preheader.i.ad5770r_get_filter_freq.exit_crit_edge

for.cond.preheader.i.ad5770r_get_filter_freq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_get_filter_freq.exit

switch.hole_check:                                ; preds = %for.cond.preheader.i
  %switch.maskindex = trunc i32 %36 to i16
  %switch.shifted = lshr i16 993, %switch.maskindex
  %38 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %switch.lobit.not = icmp eq i16 %38, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ad5770r_get_filter_freq.exit_crit_edge, label %switch.lookup75

switch.hole_check.ad5770r_get_filter_freq.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5770r_get_filter_freq.exit

switch.lookup75:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.ad5770r_read_raw, i32 0, i32 %36
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx9.i = getelementptr [6 x i32], ptr @ad5770r_filter_freqs, i32 0, i32 %switch.load
  %40 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  br label %ad5770r_get_filter_freq.exit

ad5770r_get_filter_freq.exit:                     ; preds = %switch.lookup75, %switch.hole_check.ad5770r_get_filter_freq.exit_crit_edge, %for.cond.preheader.i.ad5770r_get_filter_freq.exit_crit_edge, %sw.bb13.ad5770r_get_filter_freq.exit_crit_edge
  %retval.0.i42 = phi i32 [ 1, %switch.lookup75 ], [ %call1.i, %sw.bb13.ad5770r_get_filter_freq.exit_crit_edge ], [ -22, %for.cond.preheader.i.ad5770r_get_filter_freq.exit_crit_edge ], [ -22, %switch.hole_check.ad5770r_get_filter_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %channel16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %43 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channel16, align 4
  %out_range_mode.i43 = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 %44, i32 1
  %45 = ptrtoint ptr %out_range_mode.i43 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %out_range_mode.i43, align 1
  %47 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %44, label %sw.bb15.cleanup_crit_edge [
    i32 0, label %land.lhs.true.i44
    i32 1, label %land.lhs.true.3.i57
    i32 2, label %land.lhs.true.6.i58
    i32 3, label %land.lhs.true.8.i59
    i32 4, label %land.lhs.true.10.i60
    i32 5, label %land.lhs.true.12.i61
  ]

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i44:                                ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %48 = icmp ult i8 %46, 3
  br i1 %48, label %switch.lookup76, label %land.lhs.true.i44.cleanup_crit_edge

land.lhs.true.i44.cleanup_crit_edge:              ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.fold.split62.i49:                         ; preds = %land.lhs.true.6.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then.fold.split63.i50:                         ; preds = %land.lhs.true.8.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then.fold.split64.i51:                         ; preds = %land.lhs.true.10.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then.fold.split65.i52:                         ; preds = %land.lhs.true.12.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.3.i57:                              ; preds = %sw.bb15
  %switch.tableidx79 = add i8 %46, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx79)
  %49 = icmp ult i8 %switch.tableidx79, 3
  br i1 %49, label %switch.lookup78, label %land.lhs.true.3.i57.cleanup_crit_edge

land.lhs.true.3.i57.cleanup_crit_edge:            ; preds = %land.lhs.true.3.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.6.i58:                              ; preds = %sw.bb15
  %50 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %46, label %land.lhs.true.6.i58.cleanup_crit_edge [
    i8 0, label %land.lhs.true.6.i58.if.end21_crit_edge
    i8 1, label %if.then.fold.split62.i49
  ]

land.lhs.true.6.i58.if.end21_crit_edge:           ; preds = %land.lhs.true.6.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.6.i58.cleanup_crit_edge:            ; preds = %land.lhs.true.6.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.8.i59:                              ; preds = %sw.bb15
  %51 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %46, label %land.lhs.true.8.i59.cleanup_crit_edge [
    i8 0, label %land.lhs.true.8.i59.if.end21_crit_edge
    i8 1, label %if.then.fold.split63.i50
  ]

land.lhs.true.8.i59.if.end21_crit_edge:           ; preds = %land.lhs.true.8.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.8.i59.cleanup_crit_edge:            ; preds = %land.lhs.true.8.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.10.i60:                             ; preds = %sw.bb15
  %52 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %46, label %land.lhs.true.10.i60.cleanup_crit_edge [
    i8 0, label %land.lhs.true.10.i60.if.end21_crit_edge
    i8 1, label %if.then.fold.split64.i51
  ]

land.lhs.true.10.i60.if.end21_crit_edge:          ; preds = %land.lhs.true.10.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.10.i60.cleanup_crit_edge:           ; preds = %land.lhs.true.10.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.12.i61:                             ; preds = %sw.bb15
  %53 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %46, label %land.lhs.true.12.i61.cleanup_crit_edge [
    i8 0, label %land.lhs.true.12.i61.if.end21_crit_edge
    i8 1, label %if.then.fold.split65.i52
  ]

land.lhs.true.12.i61.if.end21_crit_edge:          ; preds = %land.lhs.true.12.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true.12.i61.cleanup_crit_edge:           ; preds = %land.lhs.true.12.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup76:                                  ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast77 = zext i8 %46 to i32
  br label %if.end21

switch.lookup78:                                  ; preds = %land.lhs.true.3.i57
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast80 = zext i8 %switch.tableidx79 to i32
  %switch.offset81 = add nuw nsw i32 %switch.idx.cast80, 3
  br label %if.end21

if.end21:                                         ; preds = %switch.lookup78, %switch.lookup76, %land.lhs.true.12.i61.if.end21_crit_edge, %land.lhs.true.10.i60.if.end21_crit_edge, %land.lhs.true.8.i59.if.end21_crit_edge, %land.lhs.true.6.i58.if.end21_crit_edge, %if.then.fold.split65.i52, %if.then.fold.split64.i51, %if.then.fold.split63.i50, %if.then.fold.split62.i49
  %i.025.lcssa.i53 = phi i32 [ 6, %land.lhs.true.6.i58.if.end21_crit_edge ], [ 8, %land.lhs.true.8.i59.if.end21_crit_edge ], [ 10, %land.lhs.true.10.i60.if.end21_crit_edge ], [ 12, %land.lhs.true.12.i61.if.end21_crit_edge ], [ 7, %if.then.fold.split62.i49 ], [ 9, %if.then.fold.split63.i50 ], [ 11, %if.then.fold.split64.i51 ], [ 13, %if.then.fold.split65.i52 ], [ %switch.idx.cast77, %switch.lookup76 ], [ %switch.offset81, %switch.lookup78 ]
  %min12.i54 = getelementptr [14 x %struct.ad5770r_output_modes], ptr @ad5770r_rng_tbl, i32 0, i32 %i.025.lcssa.i53, i32 2
  %54 = ptrtoint ptr %min12.i54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %min12.i54, align 4
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %land.lhs.true.12.i61.cleanup_crit_edge, %land.lhs.true.10.i60.cleanup_crit_edge, %land.lhs.true.8.i59.cleanup_crit_edge, %land.lhs.true.6.i58.cleanup_crit_edge, %land.lhs.true.3.i57.cleanup_crit_edge, %land.lhs.true.i44.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %ad5770r_get_filter_freq.exit, %if.end12, %land.lhs.true.12.i.cleanup_crit_edge, %land.lhs.true.10.i.cleanup_crit_edge, %land.lhs.true.8.i.cleanup_crit_edge, %land.lhs.true.6.i.cleanup_crit_edge, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end21 ], [ %retval.0.i42, %ad5770r_get_filter_freq.exit ], [ 11, %if.end12 ], [ 1, %if.end ], [ 0, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup_crit_edge ], [ -22, %land.lhs.true.8.i.cleanup_crit_edge ], [ -22, %land.lhs.true.10.i.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %land.lhs.true.12.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i44.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i57.cleanup_crit_edge ], [ -22, %land.lhs.true.6.i58.cleanup_crit_edge ], [ -22, %land.lhs.true.8.i59.cleanup_crit_edge ], [ -22, %land.lhs.true.10.i60.cleanup_crit_edge ], [ -22, %sw.bb15.cleanup_crit_edge ], [ -22, %land.lhs.true.12.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ad5770r_read_freq_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %mask)
  %cond = icmp eq i32 %mask, 10
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 4
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ad5770r_filter_freqs, ptr %vals, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %length, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 10, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = lshr i32 %val, 6
  %conv2 = trunc i32 %conv1 to i8
  %transf_buf = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %transf_buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %transf_buf, align 128
  %val.tr = trunc i32 %val to i8
  %conv3 = shl i8 %val.tr, 2
  %arrayidx5 = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %arrayidx5, align 1
  %regmap = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  %call7 = tail call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef %8, ptr noundef %transf_buf, i32 noundef 2) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 153, i32 %val)
  %cmp1.not.i = icmp ugt i32 %val, 153
  br i1 %cmp1.not.i, label %for.inc.i, label %sw.bb8.if.end4.i_crit_edge

sw.bb8.if.end4.i_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 357, i32 %val)
  %cmp1.not.1.i = icmp ugt i32 %val, 357
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end4.i_crit_edge

for.inc.i.if.end4.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 715, i32 %val)
  %cmp1.not.2.i = icmp ugt i32 %val, 715
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end4.i_crit_edge

for.inc.1.i.if.end4.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400, i32 %val)
  %cmp1.not.3.i = icmp ugt i32 %val, 1400
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end4.i_crit_edge

for.inc.2.i.if.end4.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2800, i32 %val)
  %cmp1.not.4.i = icmp ugt i32 %val, 2800
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.end4.i_crit_edge

for.inc.3.i.if.end4.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 262000, i32 %val)
  %cmp1.not.5.i = icmp ugt i32 %val, 262000
  br i1 %cmp1.not.5.i, label %for.inc.4.i.cleanup_crit_edge, label %for.inc.4.i.if.end4.i_crit_edge

for.inc.4.i.if.end4.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %for.inc.4.i.if.end4.i_crit_edge, %for.inc.3.i.if.end4.i_crit_edge, %for.inc.2.i.if.end4.i_crit_edge, %for.inc.1.i.if.end4.i_crit_edge, %for.inc.i.if.end4.i_crit_edge, %sw.bb8.if.end4.i_crit_edge
  %i.016.lcssa.i = phi i32 [ 0, %sw.bb8.if.end4.i_crit_edge ], [ 1, %for.inc.i.if.end4.i_crit_edge ], [ 2, %for.inc.1.i.if.end4.i_crit_edge ], [ 3, %for.inc.2.i.if.end4.i_crit_edge ], [ 4, %for.inc.3.i.if.end4.i_crit_edge ], [ 5, %for.inc.4.i.if.end4.i_crit_edge ]
  %arrayidx5.i = getelementptr [6 x i32], ptr @ad5770r_filter_reg_vals, i32 0, i32 %i.016.lcssa.i
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5.i, align 4
  %regmap.i = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i, align 4
  %add.i = add i32 %14, 29
  %call6.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %add.i, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %for.inc.4.i.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ %call6.i, %if.end4.i ], [ -22, %for.inc.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %regmap2 = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %readval) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %writeval) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !75
  %6 = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %6) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5770r_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %readin = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %readin) #6
  %2 = ptrtoint ptr %readin to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %readin, align 1, !annotation !74
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %readin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %readin, align 1, !range !75
  %5 = xor i8 %4, 1
  store i8 %5, ptr %readin, align 1
  %and = zext i8 %5 to i32
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %shl = shl i32 %and, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %out_range_mode = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %out_range_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %out_range_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp7.not = icmp eq i8 %9, 0
  br i1 %cmp7.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %shl13 = shl nuw nsw i32 %and, 7
  %or = or i32 %shl, %shl13
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %shl17 = shl nuw i32 1, %7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9
  %regval.0 = phi i32 [ %or, %if.then9 ], [ %shl, %if.else ]
  %mask.0 = phi i32 [ 129, %if.then9 ], [ %shl17, %if.else ]
  %regmap = getelementptr inbounds %struct.ad5770r_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 20, i32 noundef %mask.0, i32 noundef %regval.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %12 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %readin, align 1, !range !75
  %14 = zext i8 %13 to i32
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel, align 4
  %shl27 = shl nuw i32 %14, %16
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %shl30 = shl nuw i32 1, %16
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 68, i32 noundef %shl30, i32 noundef %shl27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool32.not = icmp eq i32 %call.i60, 0
  br i1 %tobool32.not, label %if.end34, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %readin to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %readin, align 1, !range !75
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel, align 4
  %arrayidx38 = getelementptr %struct.ad5770r_state, ptr %1, i32 0, i32 6, i32 %22
  %23 = xor i8 %20, 1
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx38, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end34 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end18.cleanup_crit_edge ], [ %call.i60, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %readin) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_ad5770r__290_696_ad5770r_driver_init6, !1, !"__initcall__kmod_ad5770r__290_696_ad5770r_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5770r.c", i32 696, i32 1}
!2 = !{ptr @__exitcall_ad5770r_driver_exit, !1, !"__exitcall_ad5770r_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5770r.c", i32 698, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5770r.c", i32 699, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5770r.c", i32 700, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5770r.c", i32 689, i32 11}
!12 = !{ptr @ad5770r_driver, !13, !"ad5770r_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5770r.c", i32 687, i32 26}
!14 = !{ptr @ad5770r_id, !15, !"ad5770r_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5770r.c", i32 681, i32 35}
!16 = !{ptr @ad5770r_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5770r.c", i32 623, i32 11}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad5770r.c", i32 625, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ad5770r_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ad5770r_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5770r.c", i32 631, i32 56}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad5770r.c", i32 635, i32 4}
!31 = !{ptr @ad5770r_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ad5770r_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ad5770r.c", i32 668, i32 3}
!35 = !{ptr @ad5770r_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ad5770r_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ad5770r_spi_regmap_config, !38, !"ad5770r_spi_regmap_config", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/ad5770r.c", i32 146, i32 35}
!39 = !{ptr @ad5770r_info, !40, !"ad5770r_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/ad5770r.c", i32 403, i32 30}
!41 = !{ptr @ad5770r_rng_tbl, !42, !"ad5770r_rng_tbl", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/ad5770r.c", i32 159, i32 36}
!43 = !{ptr @ad5770r_filter_reg_vals, !44, !"ad5770r_filter_reg_vals", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/ad5770r.c", i32 180, i32 27}
!45 = !{ptr @ad5770r_filter_freqs, !46, !"ad5770r_filter_freqs", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/ad5770r.c", i32 176, i32 27}
!47 = !{ptr @ad5770r_channels, !48, !"ad5770r_channels", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ad5770r.c", i32 505, i32 35}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/ad5770r.c", i32 482, i32 11}
!51 = !{ptr @ad5770r_ext_info, !52, !"ad5770r_ext_info", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/ad5770r.c", i32 480, i32 44}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/ad5770r.c", i32 436, i32 25}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/ad5770r.c", i32 557, i32 58}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/ad5770r.c", i32 579, i32 12}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/dac/ad5770r.c", i32 525, i32 41}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/ad5770r.c", i32 534, i32 12}
!63 = !{ptr @ad5770r_of_id, !64, !"ad5770r_of_id", i1 false, i1 false}
!64 = !{!"../drivers/iio/dac/ad5770r.c", i32 675, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
