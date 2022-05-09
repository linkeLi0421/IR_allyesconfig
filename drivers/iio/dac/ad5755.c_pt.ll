; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5755.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5755.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad5755_chip_info = type { %struct.iio_chan_spec, i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.73, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ad5755_platform_data = type { i8, i32, i32, i32, [4 x %struct.anon.71] }
%struct.anon.71 = type { i32, i8, i8, %struct.anon.72 }
%struct.anon.72 = type { i8, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.ad5755_state = type { ptr, ptr, i32, [4 x i32], [4 x %struct.iio_chan_spec], %struct.mutex, [40 x i8], [2 x %union.anon.74], [120 x i8] }
%union.anon.74 = type { i32 }

@__initcall__kmod_ad5755__230_882_ad5755_driver_init6 = internal global ptr @ad5755_driver_init, section ".initcall6.init", align 4
@ad5755_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5755_id, ptr @ad5755_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5755_driver_exit = internal global ptr @ad5755_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [51 x i8] c"ad5755.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [59 x i8] c"ad5755.description=Analog Devices AD5755/55-1/57/35/37 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [35 x i8] c"ad5755.file=drivers/iio/dac/ad5755\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [22 x i8] c"ad5755.license=GPL v2\00", section ".modinfo", align 1
@ad5755_id = internal constant { [6 x %struct.spi_device_id], [40 x i8] } { [6 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5755\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5755-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5757\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5735\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5737\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5755\00", [25 x i8] zeroinitializer }, align 32
@ad5755_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5755_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5755.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5755_probe._entry_ptr = internal global ptr @ad5755_probe._entry, section ".printk_index", align 4
@ad5755_chip_info_tbl = internal constant { [4 x %struct.ad5755_chip_info], [96 x i8] } { [4 x %struct.ad5755_chip_info] [%struct.ad5755_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5755_ext_info, ptr null, ptr null, i8 96 }, i32 0, i8 1 }, %struct.ad5755_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5755_ext_info, ptr null, ptr null, i8 96 }, i32 0, i8 0 }, %struct.ad5755_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5755_ext_info, ptr null, ptr null, i8 96 }, i32 4, i8 1 }, %struct.ad5755_chip_info { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.73 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 0 }, i32 61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5755_ext_info, ptr null, ptr null, i8 96 }, i32 4, i8 0 }], [96 x i8] zeroinitializer }, align 32
@ad5755_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5755_read_raw, ptr null, ptr null, ptr @ad5755_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5755_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5755_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 840, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"no firmware provided parameters? using default\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad5755_probe._entry_ptr.10 = internal global ptr @ad5755_probe._entry.7, section ".printk_index", align 4
@ad5755_default_pdata = internal constant { %struct.ad5755_platform_data, [32 x i8] } { %struct.ad5755_platform_data { i8 0, i32 0, i32 1, i32 0, [4 x %struct.anon.71] [%struct.anon.71 { i32 4, i8 1, i8 0, %struct.anon.72 zeroinitializer }, %struct.anon.71 { i32 4, i8 1, i8 0, %struct.anon.72 zeroinitializer }, %struct.anon.71 { i32 4, i8 1, i8 0, %struct.anon.72 zeroinitializer }, %struct.anon.71 { i32 4, i8 1, i8 0, %struct.anon.72 zeroinitializer }] }, [32 x i8] zeroinitializer }, align 32
@ad5755_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.11, i32 0, ptr @ad5755_read_powerdown, ptr @ad5755_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ad5755_min_max_table = internal constant { [7 x [2 x i32]], [40 x i8] } { [7 x [2 x i32]] [[2 x i32] [i32 0, i32 5000], [2 x i32] [i32 0, i32 10000], [2 x i32] [i32 -5000, i32 5000], [2 x i32] [i32 -10000, i32 10000], [2 x i32] [i32 4, i32 20], [2 x i32] [i32 0, i32 20], [2 x i32] [i32 0, i32 24]], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"adi,ext-dc-dc-compenstation-resistor\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,dc-dc-phase\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,dc-dc-freq-hz\00", [46 x i8] zeroinitializer }, align 32
@ad5755_dcdc_freq_table = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 250000, i32 0], [2 x i32] [i32 410000, i32 1], [2 x i32] [i32 650000, i32 2]], [40 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"adi,dc-dc-freq out of range selecting 410kHz\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad5755_parse_fw\00", [16 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry_ptr = internal global ptr @ad5755_parse_fw._entry, section ".printk_index", align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,dc-dc-max-microvolt\00", [40 x i8] zeroinitializer }, align 32
@ad5755_dcdc_maxv_table = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 23000000, i32 0], [2 x i32] [i32 24500000, i32 1], [2 x i32] [i32 27000000, i32 2], [2 x i32] [i32 29500000, i32 3]], [32 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"adi,dc-dc-maxv out of range selecting 23V\0A\00", [53 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry_ptr.21 = internal global ptr @ad5755_parse_fw._entry.19, section ".printk_index", align 4
@ad5755_parse_fw._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"There are too many channels defined in DT\0A\00", [53 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry_ptr.24 = internal global ptr @ad5755_parse_fw._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adi,mode\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adi,ext-current-sense-resistor\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adi,enable-voltage-overrange\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adi,slew\00", [23 x i8] zeroinitializer }, align 32
@ad5755_slew_rate_table = internal constant { [16 x [2 x i32]], [32 x i8] } { [16 x [2 x i32]] [[2 x i32] [i32 64000, i32 0], [2 x i32] [i32 32000, i32 1], [2 x i32] [i32 16000, i32 2], [2 x i32] [i32 8000, i32 3], [2 x i32] [i32 4000, i32 4], [2 x i32] [i32 2000, i32 5], [2 x i32] [i32 1000, i32 6], [2 x i32] [i32 500, i32 7], [2 x i32] [i32 250, i32 8], [2 x i32] [i32 125, i32 9], [2 x i32] [i32 64, i32 10], [2 x i32] [i32 32, i32 11], [2 x i32] [i32 16, i32 12], [2 x i32] [i32 8, i32 13], [2 x i32] [i32 4, i32 14], [2 x i32] [i32 0, i32 15]], [32 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.3, i32 779, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"channel %d slew rate out of range selecting 64kHz\0A\00", [45 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry_ptr.31 = internal global ptr @ad5755_parse_fw._entry.29, section ".printk_index", align 4
@ad5755_slew_step_table = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 256, i32 8], [2 x i32] [i32 128, i32 7], [2 x i32] [i32 64, i32 6], [2 x i32] [i32 32, i32 5], [2 x i32] [i32 16, i32 4], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 0]], [32 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.17, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"channel %d slew step size out of range selecting 1 LSB\0A\00", [40 x i8] zeroinitializer }, align 32
@ad5755_parse_fw._entry_ptr.34 = internal global ptr @ad5755_parse_fw._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 250000, i64 410000, i64 650000]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 23000000, i64 24500000, i64 27000000, i64 29500000]
@__sancov_gen_cov_switch_values.36 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 4, i64 8, i64 16, i64 32, i64 64, i64 125, i64 250, i64 500, i64 1000, i64 2000, i64 4000, i64 8000, i64 16000, i64 32000, i64 64000]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.38 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ad5755_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 875, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"ad5755_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 855, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 877, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 819, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"ad5755_chip_info_tbl\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 545, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"ad5755_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 513, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 835, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 840, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"ad5755_default_pdata\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 687, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"ad5755_ext_info\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 518, i32 44 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 520, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 495, i32 25 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"ad5755_min_max_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 371, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 716, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 719, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 722, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"ad5755_dcdc_freq_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 209, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 731, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 736, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"ad5755_dcdc_maxv_table\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 215, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 744, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 751, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 757, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 760, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 763, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 765, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"ad5755_slew_rate_table\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 222, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 777, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"ad5755_slew_step_table\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 241, i32 18 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [28 x i8] c"../drivers/iio/dac/ad5755.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 790, i32 5 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ad5755_driver_exit, ptr @__initcall__kmod_ad5755__230_882_ad5755_driver_init6, ptr @ad5755_driver_exit, ptr @ad5755_parse_fw._entry, ptr @ad5755_parse_fw._entry.19, ptr @ad5755_parse_fw._entry.22, ptr @ad5755_parse_fw._entry.29, ptr @ad5755_parse_fw._entry.32, ptr @ad5755_parse_fw._entry_ptr, ptr @ad5755_parse_fw._entry_ptr.21, ptr @ad5755_parse_fw._entry_ptr.24, ptr @ad5755_parse_fw._entry_ptr.31, ptr @ad5755_parse_fw._entry_ptr.34, ptr @ad5755_probe._entry, ptr @ad5755_probe._entry.7, ptr @ad5755_probe._entry_ptr, ptr @ad5755_probe._entry_ptr.10, ptr @ad5755_driver, ptr @ad5755_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad5755_chip_info_tbl, ptr @ad5755_info, ptr @ad5755_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @ad5755_default_pdata, ptr @ad5755_ext_info, ptr @.str.11, ptr @.str.12, ptr @ad5755_min_max_table, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ad5755_dcdc_freq_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ad5755_dcdc_maxv_table, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ad5755_slew_rate_table, ptr @.str.30, ptr @ad5755_slew_step_table, ptr @.str.33], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_chip_info_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_default_pdata to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_min_max_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_dcdc_freq_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_parse_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_dcdc_maxv_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_parse_fw._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_parse_fw._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_slew_rate_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_parse_fw._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_slew_step_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5755_parse_fw._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5755_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5755_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5755_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5755_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5755_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i.i.i133.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i134.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i116.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i117.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i.i = alloca %struct.spi_transfer, align 4
  %tmp.i = alloca i32, align 4
  %tmparray.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #5
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
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
  %arrayidx = getelementptr [4 x %struct.ad5755_chip_info], ptr @ad5755_chip_info_tbl, i32 0, i32 %1
  %chip_info = getelementptr inbounds %struct.ad5755_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %chip_info, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %3, align 128
  %pwr_down = getelementptr inbounds %struct.ad5755_state, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %pwr_down, align 8
  %call5 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %8 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %name6, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ad5755_info, ptr %info, align 8
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call1, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %11 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %num_channels, align 4
  %lock = getelementptr inbounds %struct.ad5755_state, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ad5755_probe.__key) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tmp.i, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmparray.i) #5
  %13 = ptrtoint ptr %tmparray.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tmparray.i, align 4, !annotation !100
  %14 = getelementptr inbounds [3 x i32], ptr %tmparray.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !100
  %16 = getelementptr inbounds [3 x i32], ptr %tmparray.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !100
  %call.i = tail call ptr @dev_fwnode(ptr noundef %spi) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.ad5755_parse_fw.exit.thread_crit_edge, label %if.end.i

if.end.ad5755_parse_fw.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_parse_fw.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 96, i32 noundef 3520) #5
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.ad5755_parse_fw.exit.thread_crit_edge, label %if.end4.i

if.end.i.ad5755_parse_fw.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_parse_fw.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i226.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.13) #5
  %frombool.i = zext i1 %call.i226.i to i8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool.i, ptr %call.i.i, align 4
  %dc_dc_phase.i = getelementptr inbounds %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dc_dc_phase.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dc_dc_phase.i, align 4
  %call.i227.i = tail call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef %dc_dc_phase.i, i32 noundef 1) #5
  %dc_dc_freq.i = getelementptr inbounds %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %dc_dc_freq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dc_dc_freq.i, align 4
  %call.i228.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.15, ptr noundef nonnull %tmp.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228.i)
  %tobool9.not.i = icmp eq i32 %call.i228.i, 0
  br i1 %tobool9.not.i, label %for.cond.preheader.i, label %if.end4.i.if.end21.i_crit_edge

if.end4.i.if.end21.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

for.cond.preheader.i:                             ; preds = %if.end4.i
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end.i [
    i32 250000, label %for.cond.preheader.i.for.end.thread.i_crit_edge
    i32 410000, label %for.end.thread.fold.split.i
    i32 650000, label %for.end.thread.fold.split253.i
  ]

for.cond.preheader.i.for.end.thread.i_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.fold.split.i:                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.fold.split253.i:                   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.thread.fold.split253.i, %for.end.thread.fold.split.i, %for.cond.preheader.i.for.end.thread.i_crit_edge
  %i.0241.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.thread.i_crit_edge ], [ 1, %for.end.thread.fold.split.i ], [ 2, %for.end.thread.fold.split253.i ]
  %arrayidx15.i = getelementptr [3 x [2 x i32]], ptr @ad5755_dcdc_freq_table, i32 0, i32 %i.0241.lcssa.i, i32 1
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15.i, align 4
  %26 = ptrtoint ptr %dc_dc_freq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dc_dc_freq.i, align 4
  br label %if.end21.i

do.end.i:                                         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %for.end.thread.i, %if.end4.i.if.end21.i_crit_edge
  %dc_dc_maxv.i = getelementptr inbounds %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dc_dc_maxv.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dc_dc_maxv.i, align 4
  %call.i229.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.18, ptr noundef nonnull %tmp.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229.i)
  %tobool23.not.i = icmp eq i32 %call.i229.i, 0
  br i1 %tobool23.not.i, label %for.cond25.preheader.i, label %if.end21.i.if.end45.i_crit_edge

if.end21.i.if.end45.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

for.cond25.preheader.i:                           ; preds = %if.end21.i
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %29, label %do.end43.i [
    i32 23000000, label %for.cond25.preheader.i.for.end38.thread.i_crit_edge
    i32 24500000, label %for.end38.thread.fold.split.i
    i32 27000000, label %for.end38.thread.fold.split254.i
    i32 29500000, label %for.end38.thread.fold.split255.i
  ]

for.cond25.preheader.i.for.end38.thread.i_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38.thread.i

for.end38.thread.fold.split.i:                    ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38.thread.i

for.end38.thread.fold.split254.i:                 ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38.thread.i

for.end38.thread.fold.split255.i:                 ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38.thread.i

for.end38.thread.i:                               ; preds = %for.end38.thread.fold.split255.i, %for.end38.thread.fold.split254.i, %for.end38.thread.fold.split.i, %for.cond25.preheader.i.for.end38.thread.i_crit_edge
  %i.1242.lcssa.i = phi i32 [ 0, %for.cond25.preheader.i.for.end38.thread.i_crit_edge ], [ 1, %for.end38.thread.fold.split.i ], [ 2, %for.end38.thread.fold.split254.i ], [ 3, %for.end38.thread.fold.split255.i ]
  %arrayidx33.i = getelementptr [4 x [2 x i32]], ptr @ad5755_dcdc_maxv_table, i32 0, i32 %i.1242.lcssa.i, i32 1
  %31 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33.i, align 4
  %33 = ptrtoint ptr %dc_dc_maxv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dc_dc_maxv.i, align 4
  br label %if.end45.i

do.end43.i:                                       ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20) #8
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end43.i, %for.end38.thread.i, %if.end21.i.if.end45.i_crit_edge
  %call46.i = call ptr @device_get_next_child_node(ptr noundef %spi, ptr noundef null) #5
  %tobool48.not245.i = icmp eq ptr %call46.i, null
  br i1 %tobool48.not245.i, label %ad5755_parse_fw.exit.thread74, label %if.end45.i.for.body49.i_crit_edge

if.end45.i.for.body49.i_crit_edge:                ; preds = %if.end45.i
  br label %for.body49.i

ad5755_parse_fw.exit.thread74:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmparray.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %land.lhs.true.i

for.body49.i:                                     ; preds = %if.end143.i.for.body49.i_crit_edge, %if.end45.i.for.body49.i_crit_edge
  %devnr.0247.i = phi i32 [ %inc144.i, %if.end143.i.for.body49.i_crit_edge ], [ 0, %if.end45.i.for.body49.i_crit_edge ]
  %pp.0246.i = phi ptr [ %call146.i, %if.end143.i.for.body49.i_crit_edge ], [ %call46.i, %if.end45.i.for.body49.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %devnr.0247.i)
  %exitcond.i = icmp eq i32 %devnr.0247.i, 4
  br i1 %exitcond.i, label %do.end54.i, label %if.end55.i

do.end54.i:                                       ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.23) #8
  call void @devm_kfree(ptr noundef %spi, ptr noundef nonnull %call.i.i) #5
  br label %ad5755_parse_fw.exit.thread

if.end55.i:                                       ; preds = %for.body49.i
  %arrayidx56.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i
  %34 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %arrayidx56.i, align 4
  %call.i230.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %pp.0246.i, ptr noundef nonnull @.str.25, ptr noundef %arrayidx56.i, i32 noundef 1) #5
  %call.i231.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %pp.0246.i, ptr noundef nonnull @.str.26) #5
  %ext_current_sense_resistor.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 1
  %frombool64.i = zext i1 %call.i231.i to i8
  %35 = ptrtoint ptr %ext_current_sense_resistor.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool64.i, ptr %ext_current_sense_resistor.i, align 4
  %call.i232.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %pp.0246.i, ptr noundef nonnull @.str.27) #5
  %enable_voltage_overrange.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 2
  %frombool68.i = zext i1 %call.i232.i to i8
  %36 = ptrtoint ptr %enable_voltage_overrange.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool68.i, ptr %enable_voltage_overrange.i, align 1
  %call69.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %pp.0246.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %tmparray.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.else.i

if.then71.i:                                      ; preds = %if.end55.i
  %37 = ptrtoint ptr %tmparray.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmparray.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool73.i = icmp ne i32 %38, 0
  %slew.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 3
  %frombool76.i = zext i1 %tobool73.i to i8
  %39 = ptrtoint ptr %slew.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool76.i, ptr %slew.i, align 4
  %rate.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 3, i32 1
  %40 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %rate.i, align 4
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %14, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %42, label %do.end102.i [
    i32 64000, label %if.then71.i.for.end97.thread.i_crit_edge
    i32 32000, label %for.end97.thread.fold.split.i
    i32 16000, label %for.end97.thread.fold.split256.i
    i32 8000, label %for.end97.thread.fold.split257.i
    i32 4000, label %for.end97.thread.fold.split258.i
    i32 2000, label %for.end97.thread.fold.split259.i
    i32 1000, label %for.end97.thread.fold.split260.i
    i32 500, label %for.end97.thread.fold.split261.i
    i32 250, label %for.end97.thread.fold.split262.i
    i32 125, label %for.end97.thread.fold.split263.i
    i32 64, label %for.end97.thread.fold.split264.i
    i32 32, label %for.end97.thread.fold.split265.i
    i32 16, label %for.end97.thread.fold.split266.i
    i32 8, label %for.end97.thread.fold.split267.i
    i32 4, label %for.end97.thread.fold.split268.i
    i32 0, label %for.end97.thread.fold.split269.i
  ]

if.then71.i.for.end97.thread.i_crit_edge:         ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split.i:                    ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split256.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split257.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split258.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split259.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split260.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split261.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split262.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split263.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split264.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split265.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split266.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split267.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split268.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.fold.split269.i:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end97.thread.i

for.end97.thread.i:                               ; preds = %for.end97.thread.fold.split269.i, %for.end97.thread.fold.split268.i, %for.end97.thread.fold.split267.i, %for.end97.thread.fold.split266.i, %for.end97.thread.fold.split265.i, %for.end97.thread.fold.split264.i, %for.end97.thread.fold.split263.i, %for.end97.thread.fold.split262.i, %for.end97.thread.fold.split261.i, %for.end97.thread.fold.split260.i, %for.end97.thread.fold.split259.i, %for.end97.thread.fold.split258.i, %for.end97.thread.fold.split257.i, %for.end97.thread.fold.split256.i, %for.end97.thread.fold.split.i, %if.then71.i.for.end97.thread.i_crit_edge
  %i.2243.lcssa.i = phi i32 [ 0, %if.then71.i.for.end97.thread.i_crit_edge ], [ 1, %for.end97.thread.fold.split.i ], [ 2, %for.end97.thread.fold.split256.i ], [ 3, %for.end97.thread.fold.split257.i ], [ 4, %for.end97.thread.fold.split258.i ], [ 5, %for.end97.thread.fold.split259.i ], [ 6, %for.end97.thread.fold.split260.i ], [ 7, %for.end97.thread.fold.split261.i ], [ 8, %for.end97.thread.fold.split262.i ], [ 9, %for.end97.thread.fold.split263.i ], [ 10, %for.end97.thread.fold.split264.i ], [ 11, %for.end97.thread.fold.split265.i ], [ 12, %for.end97.thread.fold.split266.i ], [ 13, %for.end97.thread.fold.split267.i ], [ 14, %for.end97.thread.fold.split268.i ], [ 15, %for.end97.thread.fold.split269.i ]
  %arrayidx89.i = getelementptr [16 x [2 x i32]], ptr @ad5755_slew_rate_table, i32 0, i32 %i.2243.lcssa.i, i32 1
  %44 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx89.i, align 4
  %46 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %rate.i, align 4
  br label %if.end103.i

do.end102.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %devnr.0247.i) #8
  br label %if.end103.i

if.end103.i:                                      ; preds = %do.end102.i, %for.end97.thread.i
  %step_size.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 3, i32 2
  %47 = ptrtoint ptr %step_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %step_size.i, align 4
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %16, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %49, label %do.end129.i [
    i32 256, label %if.end103.i.for.end124.thread.i_crit_edge
    i32 128, label %for.end124.thread.fold.split.i
    i32 64, label %for.end124.thread.fold.split270.i
    i32 32, label %for.end124.thread.fold.split271.i
    i32 16, label %for.end124.thread.fold.split272.i
    i32 4, label %for.end124.thread.fold.split273.i
    i32 2, label %for.end124.thread.fold.split274.i
    i32 1, label %for.end124.thread.fold.split275.i
  ]

if.end103.i.for.end124.thread.i_crit_edge:        ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split.i:                   ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split270.i:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split271.i:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split272.i:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split273.i:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split274.i:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.fold.split275.i:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124.thread.i

for.end124.thread.i:                              ; preds = %for.end124.thread.fold.split275.i, %for.end124.thread.fold.split274.i, %for.end124.thread.fold.split273.i, %for.end124.thread.fold.split272.i, %for.end124.thread.fold.split271.i, %for.end124.thread.fold.split270.i, %for.end124.thread.fold.split.i, %if.end103.i.for.end124.thread.i_crit_edge
  %i.3244.lcssa.i = phi i32 [ 0, %if.end103.i.for.end124.thread.i_crit_edge ], [ 1, %for.end124.thread.fold.split.i ], [ 2, %for.end124.thread.fold.split270.i ], [ 3, %for.end124.thread.fold.split271.i ], [ 4, %for.end124.thread.fold.split272.i ], [ 5, %for.end124.thread.fold.split273.i ], [ 6, %for.end124.thread.fold.split274.i ], [ 7, %for.end124.thread.fold.split275.i ]
  %arrayidx116.i = getelementptr [8 x [2 x i32]], ptr @ad5755_slew_step_table, i32 0, i32 %i.3244.lcssa.i, i32 1
  %51 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx116.i, align 4
  %53 = ptrtoint ptr %step_size.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %step_size.i, align 4
  br label %if.end143.i

do.end129.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33, i32 noundef %devnr.0247.i) #8
  br label %if.end143.i

if.else.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  %slew133.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 3
  %54 = ptrtoint ptr %slew133.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %slew133.i, align 4
  %rate138.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 3, i32 1
  %55 = ptrtoint ptr %rate138.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %rate138.i, align 4
  %step_size142.i = getelementptr %struct.ad5755_platform_data, ptr %call.i.i, i32 0, i32 4, i32 %devnr.0247.i, i32 3, i32 2
  %56 = ptrtoint ptr %step_size142.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %step_size142.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else.i, %do.end129.i, %for.end124.thread.i
  %inc144.i = add nuw nsw i32 %devnr.0247.i, 1
  %call146.i = call ptr @device_get_next_child_node(ptr noundef %spi, ptr noundef nonnull %pp.0246.i) #5
  %tobool48.not.i = icmp eq ptr %call146.i, null
  br i1 %tobool48.not.i, label %ad5755_parse_fw.exit, label %if.end143.i.for.body49.i_crit_edge

if.end143.i.for.body49.i_crit_edge:               ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body49.i

ad5755_parse_fw.exit.thread:                      ; preds = %do.end54.i, %if.end.i.ad5755_parse_fw.exit.thread_crit_edge, %if.end.ad5755_parse_fw.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmparray.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.8) #8
  br label %land.lhs.true.i

ad5755_parse_fw.exit:                             ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmparray.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %ad5755_parse_fw.exit, %ad5755_parse_fw.exit.thread, %ad5755_parse_fw.exit.thread74
  %pdata.0 = phi ptr [ %call.i.i, %ad5755_parse_fw.exit ], [ @ad5755_default_pdata, %ad5755_parse_fw.exit.thread ], [ %call.i.i, %ad5755_parse_fw.exit.thread74 ]
  %57 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i, align 8
  %channels1.i = getelementptr inbounds %struct.ad5755_state, ptr %58, i32 0, i32 4
  %chip_info.i = getelementptr inbounds %struct.ad5755_state, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip_info.i, align 4
  %61 = call ptr @memcpy(ptr %channels1.i, ptr %60, i32 88)
  %channel.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 0, i32 1
  %62 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %channel.i, align 4
  %address.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 0, i32 3
  %63 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %address.i, align 4
  %arrayidx4.i = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 0
  %64 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %switch.i.i = icmp ugt i32 %65, 3
  %spec.select = zext i1 %switch.i.i to i32
  %66 = ptrtoint ptr %channels1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select, ptr %channels1.i, align 4
  %arrayidx.1.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 1
  %67 = call ptr @memcpy(ptr %arrayidx.1.i, ptr %60, i32 88)
  %channel.1.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 1, i32 1
  %68 = ptrtoint ptr %channel.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %channel.1.i, align 4
  %address.1.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 1, i32 3
  %69 = ptrtoint ptr %address.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %address.1.i, align 4
  %arrayidx4.1.i = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx4.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %switch.i.1.i = icmp ugt i32 %71, 3
  %storemerge.1.i = zext i1 %switch.i.1.i to i32
  %72 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %storemerge.1.i, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 2
  %73 = call ptr @memcpy(ptr %arrayidx.2.i, ptr %60, i32 88)
  %channel.2.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 2, i32 1
  %74 = ptrtoint ptr %channel.2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %channel.2.i, align 4
  %address.2.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 2, i32 3
  %75 = ptrtoint ptr %address.2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %address.2.i, align 4
  %arrayidx4.2.i = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx4.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %switch.i.2.i = icmp ugt i32 %77, 3
  %storemerge.2.i = zext i1 %switch.i.2.i to i32
  %78 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %storemerge.2.i, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 3
  %79 = call ptr @memcpy(ptr %arrayidx.3.i, ptr %60, i32 88)
  %channel.3.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 3, i32 1
  %80 = ptrtoint ptr %channel.3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %channel.3.i, align 4
  %address.3.i = getelementptr %struct.ad5755_state, ptr %58, i32 0, i32 4, i32 3, i32 3
  %81 = ptrtoint ptr %address.3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %address.3.i, align 4
  %arrayidx4.3.i = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 3
  %82 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx4.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %switch.i.3.i = icmp ugt i32 %83, 3
  %storemerge.3.i = zext i1 %switch.i.3.i to i32
  %84 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %storemerge.3.i, ptr %arrayidx.3.i, align 4
  %channels9.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %85 = ptrtoint ptr %channels9.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %channels1.i, ptr %channels9.i, align 8
  %86 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv.i, align 8
  %dc_dc_phase.i60 = getelementptr inbounds %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 1
  %88 = ptrtoint ptr %dc_dc_phase.i60 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dc_dc_phase.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp.i = icmp ugt i32 %89, 3
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %dc_dc_freq.i61 = getelementptr inbounds %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 2
  %90 = ptrtoint ptr %dc_dc_freq.i61 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dc_dc_freq.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp1.i = icmp ugt i32 %91, 2
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %dc_dc_maxv.i62 = getelementptr inbounds %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 3
  %92 = ptrtoint ptr %dc_dc_maxv.i62 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dc_dc_maxv.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp3.i = icmp ugt i32 %93, 3
  br i1 %cmp3.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end.i64

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i64:                                       ; preds = %lor.lhs.false2.i
  %shl6.i = shl nuw nsw i32 %91, 2
  %shl8.i = shl nuw nsw i32 %89, 4
  %or.i = or i32 %shl6.i, %shl8.i
  %or9.i = or i32 %or.i, %93
  %94 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pdata.0, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i63 = icmp eq i8 %95, 0
  %or11.i = or i32 %or9.i, 64
  %spec.select.i = select i1 %tobool.not.i63, i32 %or9.i, i32 %or11.i
  %lock.i.i = getelementptr inbounds %struct.ad5755_state, ptr %87, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #5
  %96 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv.i, align 8
  %or.i.i.i.i = or i32 %spec.select.i, 1859584
  %data.i.i.i.i = getelementptr inbounds %struct.ad5755_state, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or.i.i.i.i, ptr %data.i.i.i.i, align 128
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %97, align 128
  %arrayidx3.i.i.i.i = getelementptr [4 x i8], ptr %data.i.i.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #5
  %101 = getelementptr inbounds i8, ptr %t.i.i.i.i.i, i32 4
  %102 = call ptr @memset(ptr %101, i32 0, i32 92)
  %103 = ptrtoint ptr %t.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx3.i.i.i.i, ptr %t.i.i.i.i.i, align 4
  %len1.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %len1.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #5
  %105 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i.i, i32 8
  %106 = call ptr @memset(ptr %105, i32 0, i32 40)
  %107 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %msg.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %msg.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10
  %109 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %resources.i.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10, i32 1
  %110 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %resources.i.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i.i, label %if.end.i64.ad5755_write_ctrl.exit.i_crit_edge

if.end.i64.ad5755_write_ctrl.exit.i_crit_edge:    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_write_ctrl.exit.i

if.end.i.i.i.i.i.i.i.i.i.i:                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %112 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %msg.i.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18, i32 1
  %113 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %msg.i.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i.i, align 4
  %114 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  br label %ad5755_write_ctrl.exit.i

ad5755_write_ctrl.exit.i:                         ; preds = %if.end.i.i.i.i.i.i.i.i.i.i, %if.end.i64.ad5755_write_ctrl.exit.i_crit_edge
  %call.i.i.i.i.i.i = call i32 @spi_sync(ptr noundef %100, ptr noundef nonnull %msg.i.i.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #5
  call void @mutex_unlock(ptr noundef %lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp14.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  br i1 %cmp14.i, label %ad5755_write_ctrl.exit.i.cleanup_crit_edge, label %for.cond.preheader.i65

ad5755_write_ctrl.exit.i.cleanup_crit_edge:       ; preds = %ad5755_write_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i65:                           ; preds = %ad5755_write_ctrl.exit.i
  %115 = getelementptr inbounds i8, ptr %t.i.i.i.i117.i, i32 4
  %len1.i.i.i.i123.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i117.i, i32 0, i32 2
  %116 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i116.i, i32 8
  %prev.i.i.i.i.i.i.i.i.i124.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i116.i, i32 0, i32 1
  %resources.i.i.i.i.i.i.i.i125.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i116.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i.i126.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i116.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i.i127.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i117.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i.i129.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i117.i, i32 0, i32 18, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %ad5755_write_ctrl.exit132.i
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.cond35.preheader.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond35.preheader.i:                           ; preds = %for.cond.i
  %chip_info.i.i = getelementptr inbounds %struct.ad5755_state, ptr %87, i32 0, i32 1
  %117 = getelementptr inbounds i8, ptr %t.i.i.i.i134.i, i32 4
  %len1.i.i.i.i141.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i134.i, i32 0, i32 2
  %118 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i133.i, i32 8
  %prev.i.i.i.i.i.i.i.i.i142.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i133.i, i32 0, i32 1
  %resources.i.i.i.i.i.i.i.i143.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i133.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i.i.i144.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i133.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i.i.i145.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i134.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i.i.i147.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i134.i, i32 0, i32 18, i32 1
  br label %for.body37.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i65
  %i.0154.i = phi i32 [ 0, %for.cond.preheader.i65 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %slew.i66 = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 %i.0154.i, i32 3
  %step_size.i67 = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 %i.0154.i, i32 3, i32 2
  %119 = ptrtoint ptr %step_size.i67 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %step_size.i67, align 4
  %rate.i68 = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 %i.0154.i, i32 3, i32 1
  %121 = ptrtoint ptr %rate.i68 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rate.i68, align 4
  %shl22.i = shl i32 %122, 3
  %or23.i = or i32 %shl22.i, %120
  %123 = ptrtoint ptr %slew.i66 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %slew.i66, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool27.not.i = icmp eq i8 %124, 0
  %or29.i = or i32 %or23.i, 4096
  %spec.select114.i = select i1 %tobool27.not.i, i32 %or23.i, i32 %or29.i
  %125 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv.i, align 8
  %lock.i119.i = getelementptr inbounds %struct.ad5755_state, ptr %126, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i119.i, i32 noundef 0) #5
  %127 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %priv.i, align 8
  %or.i.i.i = shl nuw nsw i32 %i.0154.i, 16
  %or1.i.i.i = or i32 %or.i.i.i, %spec.select114.i
  %or.i.i.i120.i = or i32 %or1.i.i.i, 1835008
  %data.i.i.i121.i = getelementptr inbounds %struct.ad5755_state, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %data.i.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or.i.i.i120.i, ptr %data.i.i.i121.i, align 128
  %130 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %128, align 128
  %arrayidx3.i.i.i122.i = getelementptr [4 x i8], ptr %data.i.i.i121.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i117.i) #5
  %132 = call ptr @memset(ptr %115, i32 0, i32 92)
  %133 = ptrtoint ptr %t.i.i.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx3.i.i.i122.i, ptr %t.i.i.i.i117.i, align 4
  %134 = ptrtoint ptr %len1.i.i.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 3, ptr %len1.i.i.i.i123.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i116.i) #5
  %135 = call ptr @memset(ptr %116, i32 0, i32 40)
  %136 = ptrtoint ptr %msg.i.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %msg.i.i.i.i.i116.i, ptr %msg.i.i.i.i.i116.i, align 4
  %137 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %msg.i.i.i.i.i116.i, ptr %prev.i.i.i.i.i.i.i.i.i124.i, align 4
  %138 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %resources.i.i.i.i.i.i.i.i125.i, ptr %resources.i.i.i.i.i.i.i.i125.i, align 4
  %139 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %resources.i.i.i.i.i.i.i.i125.i, ptr %prev.i2.i.i.i.i.i.i.i.i126.i, align 4
  %call.i.i.i.i.i.i.i.i.i128.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i127.i, ptr noundef nonnull %msg.i.i.i.i.i116.i, ptr noundef nonnull %msg.i.i.i.i.i116.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i128.i, label %if.end.i.i.i.i.i.i.i.i.i130.i, label %for.body.i.ad5755_write_ctrl.exit132.i_crit_edge

for.body.i.ad5755_write_ctrl.exit132.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_write_ctrl.exit132.i

if.end.i.i.i.i.i.i.i.i.i130.i:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %140 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %transfer_list.i.i.i.i.i.i.i127.i, ptr %prev.i.i.i.i.i.i.i.i.i124.i, align 4
  %141 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %msg.i.i.i.i.i116.i, ptr %transfer_list.i.i.i.i.i.i.i127.i, align 4
  %142 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %msg.i.i.i.i.i116.i, ptr %prev3.i.i.i.i.i.i.i.i.i129.i, align 4
  %143 = ptrtoint ptr %msg.i.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i127.i, ptr %msg.i.i.i.i.i116.i, align 4
  br label %ad5755_write_ctrl.exit132.i

ad5755_write_ctrl.exit132.i:                      ; preds = %if.end.i.i.i.i.i.i.i.i.i130.i, %for.body.i.ad5755_write_ctrl.exit132.i_crit_edge
  %call.i.i.i.i.i131.i = call i32 @spi_sync(ptr noundef %131, ptr noundef nonnull %msg.i.i.i.i.i116.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i116.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i117.i) #5
  call void @mutex_unlock(ptr noundef %lock.i119.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i131.i)
  %cmp32.i = icmp slt i32 %call.i.i.i.i.i131.i, 0
  br i1 %cmp32.i, label %ad5755_write_ctrl.exit132.i.cleanup_crit_edge, label %for.cond.i

ad5755_write_ctrl.exit132.i.cleanup_crit_edge:    ; preds = %ad5755_write_ctrl.exit132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond35.i:                                     ; preds = %ad5755_update_dac_ctrl.exit.i
  %inc64.i = add nuw nsw i32 %i.1155.i, 1
  %exitcond158.not.i = icmp eq i32 %inc64.i, 4
  br i1 %exitcond158.not.i, label %if.end25, label %for.cond35.i.for.body37.i_crit_edge

for.cond35.i.for.body37.i_crit_edge:              ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.cond35.i.for.body37.i_crit_edge, %for.cond35.preheader.i
  %i.1155.i = phi i32 [ 0, %for.cond35.preheader.i ], [ %inc64.i, %for.cond35.i.for.body37.i_crit_edge ]
  %arrayidx39.i = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 %i.1155.i
  %144 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx39.i, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %145, label %for.body37.i.cleanup_crit_edge [
    i32 0, label %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge
    i32 1, label %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge90
    i32 2, label %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge91
    i32 3, label %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge92
    i32 4, label %for.body37.i.if.end42.i_crit_edge
    i32 5, label %for.body37.i.if.end42.i_crit_edge93
    i32 6, label %for.body37.i.if.end42.i_crit_edge94
  ]

for.body37.i.if.end42.i_crit_edge94:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

for.body37.i.if.end42.i_crit_edge93:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

for.body37.i.if.end42.i_crit_edge:                ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge92: ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_is_valid_mode.exit.i

for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge91: ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_is_valid_mode.exit.i

for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge90: ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_is_valid_mode.exit.i

for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge: ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_is_valid_mode.exit.i

for.body37.i.cleanup_crit_edge:                   ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad5755_is_valid_mode.exit.i:                      ; preds = %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge, %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge90, %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge91, %for.body37.i.ad5755_is_valid_mode.exit.i_crit_edge92
  %147 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %chip_info.i.i, align 4
  %has_voltage_out.i.i = getelementptr inbounds %struct.ad5755_chip_info, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %has_voltage_out.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %has_voltage_out.i.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.i.not.i = icmp eq i8 %150, 0
  br i1 %tobool.i.not.i, label %ad5755_is_valid_mode.exit.i.cleanup_crit_edge, label %ad5755_is_valid_mode.exit.i.if.end42.i_crit_edge

ad5755_is_valid_mode.exit.i.if.end42.i_crit_edge: ; preds = %ad5755_is_valid_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

ad5755_is_valid_mode.exit.i.cleanup_crit_edge:    ; preds = %ad5755_is_valid_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42.i:                                       ; preds = %ad5755_is_valid_mode.exit.i.if.end42.i_crit_edge, %for.body37.i.if.end42.i_crit_edge, %for.body37.i.if.end42.i_crit_edge93, %for.body37.i.if.end42.i_crit_edge94
  %ext_current_sense_resistor.i69 = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 %i.1155.i, i32 1
  %151 = ptrtoint ptr %ext_current_sense_resistor.i69 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %ext_current_sense_resistor.i69, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool45.not.i = icmp eq i8 %152, 0
  %spec.select115.i = select i1 %tobool45.not.i, i32 32, i32 0
  %enable_voltage_overrange.i70 = getelementptr %struct.ad5755_platform_data, ptr %pdata.0, i32 0, i32 4, i32 %i.1155.i, i32 2
  %153 = ptrtoint ptr %enable_voltage_overrange.i70 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %enable_voltage_overrange.i70, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool51.not.i = icmp eq i8 %154, 0
  %or53.i = or i32 %spec.select115.i, 8
  %val.3.i = select i1 %tobool51.not.i, i32 %spec.select115.i, i32 %or53.i
  %155 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %priv.i, align 8
  %arrayidx.i.i = getelementptr %struct.ad5755_state, ptr %156, i32 0, i32 3, i32 %i.1155.i
  %157 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i.i, align 4
  %or58.i = or i32 %158, %145
  %or.i.i = or i32 %or58.i, %val.3.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %159 = load ptr, ptr %priv.i, align 8
  %or.i.i136.i = shl nuw nsw i32 %i.1155.i, 16
  %or1.i.i137.i = or i32 %or.i.i136.i, %or.i.i
  %or.i.i.i138.i = or i32 %or1.i.i137.i, 1851392
  %data.i.i.i139.i = getelementptr inbounds %struct.ad5755_state, ptr %159, i32 0, i32 7
  %160 = ptrtoint ptr %data.i.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i.i.i138.i, ptr %data.i.i.i139.i, align 128
  %161 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %159, align 128
  %arrayidx3.i.i.i140.i = getelementptr [4 x i8], ptr %data.i.i.i139.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i134.i) #5
  %163 = call ptr @memset(ptr %117, i32 0, i32 92)
  %164 = ptrtoint ptr %t.i.i.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %arrayidx3.i.i.i140.i, ptr %t.i.i.i.i134.i, align 4
  %165 = ptrtoint ptr %len1.i.i.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 3, ptr %len1.i.i.i.i141.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i133.i) #5
  %166 = call ptr @memset(ptr %118, i32 0, i32 40)
  %167 = ptrtoint ptr %msg.i.i.i.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %msg.i.i.i.i.i133.i, ptr %msg.i.i.i.i.i133.i, align 4
  %168 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %msg.i.i.i.i.i133.i, ptr %prev.i.i.i.i.i.i.i.i.i142.i, align 4
  %169 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i143.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %resources.i.i.i.i.i.i.i.i143.i, ptr %resources.i.i.i.i.i.i.i.i143.i, align 4
  %170 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i144.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %resources.i.i.i.i.i.i.i.i143.i, ptr %prev.i2.i.i.i.i.i.i.i.i144.i, align 4
  %call.i.i.i.i.i.i.i.i.i146.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i145.i, ptr noundef nonnull %msg.i.i.i.i.i133.i, ptr noundef nonnull %msg.i.i.i.i.i133.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i146.i, label %if.end.i.i.i.i.i.i.i.i.i148.i, label %if.end42.i.ad5755_update_dac_ctrl.exit.i_crit_edge

if.end42.i.ad5755_update_dac_ctrl.exit.i_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_update_dac_ctrl.exit.i

if.end.i.i.i.i.i.i.i.i.i148.i:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %transfer_list.i.i.i.i.i.i.i145.i, ptr %prev.i.i.i.i.i.i.i.i.i142.i, align 4
  %172 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %msg.i.i.i.i.i133.i, ptr %transfer_list.i.i.i.i.i.i.i145.i, align 4
  %173 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i147.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %msg.i.i.i.i.i133.i, ptr %prev3.i.i.i.i.i.i.i.i.i147.i, align 4
  %174 = ptrtoint ptr %msg.i.i.i.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i145.i, ptr %msg.i.i.i.i.i133.i, align 4
  br label %ad5755_update_dac_ctrl.exit.i

ad5755_update_dac_ctrl.exit.i:                    ; preds = %if.end.i.i.i.i.i.i.i.i.i148.i, %if.end42.i.ad5755_update_dac_ctrl.exit.i_crit_edge
  %call.i.i.i.i.i149.i = call i32 @spi_sync(ptr noundef %162, ptr noundef nonnull %msg.i.i.i.i.i133.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i133.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i134.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i149.i)
  %cmp60.i = icmp slt i32 %call.i.i.i.i.i149.i, 0
  br i1 %cmp60.i, label %ad5755_update_dac_ctrl.exit.i.cleanup_crit_edge, label %for.cond35.i

ad5755_update_dac_ctrl.exit.i.cleanup_crit_edge:  ; preds = %ad5755_update_dac_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %ad5755_update_dac_ctrl.exit.i.cleanup_crit_edge, %ad5755_is_valid_mode.exit.i.cleanup_crit_edge, %for.body37.i.cleanup_crit_edge, %ad5755_write_ctrl.exit132.i.cleanup_crit_edge, %ad5755_write_ctrl.exit.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call27, %if.end25 ], [ %call.i.i.i.i.i.i, %ad5755_write_ctrl.exit.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %for.body37.i.cleanup_crit_edge ], [ %call.i.i.i.i.i149.i, %ad5755_update_dac_ctrl.exit.i.cleanup_crit_edge ], [ -22, %ad5755_is_valid_mode.exit.i.cleanup_crit_edge ], [ %call.i.i.i.i.i131.i, %ad5755_write_ctrl.exit132.i.cleanup_crit_edge ]
  ret i32 %retval.0
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5755_read_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_down, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = lshr i32 %3, %5
  %7 = and i32 %6, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %7) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5755_write_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i.i.i21.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i22.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i1.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i2.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i.i = alloca %struct.spi_transfer, align 4
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #5
  %0 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pwr_down, align 1, !annotation !100
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 4
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1 = icmp ne i8 %4, 0
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i, align 8
  %shl.i = shl nuw i32 1, %2
  %lock.i = getelementptr inbounds %struct.ad5755_state, ptr %6, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %pwr_down1.i = getelementptr inbounds %struct.ad5755_state, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %pwr_down1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwr_down1.i, align 8
  %9 = and i32 %8, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %cmp.i = xor i1 %tobool1, %10
  br i1 %cmp.i, label %if.end.ad5755_set_channel_pwr_down.exit_crit_edge, label %if.end.i

if.end.ad5755_set_channel_pwr_down.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_set_channel_pwr_down.exit

if.end.i:                                         ; preds = %if.end
  br i1 %tobool1, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %neg.i = xor i32 %shl.i, -1
  %and8.i = and i32 %8, %neg.i
  %11 = ptrtoint ptr %pwr_down1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and8.i, ptr %pwr_down1.i, align 8
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.ad5755_state, ptr %13, i32 0, i32 3, i32 %2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %15, 272
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %16 = load ptr, ptr %priv.i.i, align 8
  %or.i.i.i = shl i32 %2, 16
  %or1.i.i.i = or i32 %or.i.i.i, %or.i.i
  %or.i.i.i.i = or i32 %or1.i.i.i, 1851392
  %data.i.i.i.i = getelementptr inbounds %struct.ad5755_state, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i.i.i.i, ptr %data.i.i.i.i, align 128
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %16, align 128
  %arrayidx3.i.i.i.i = getelementptr [4 x i8], ptr %data.i.i.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #5
  %20 = getelementptr inbounds i8, ptr %t.i.i.i.i.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = ptrtoint ptr %t.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx3.i.i.i.i, ptr %t.i.i.i.i.i, align 4
  %len1.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %len1.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #5
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i.i, label %if.then6.i.ad5755_update_dac_ctrl.exit.i_crit_edge

if.then6.i.ad5755_update_dac_ctrl.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_update_dac_ctrl.exit.i

if.end.i.i.i.i.i.i.i.i.i.i:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  br label %ad5755_update_dac_ctrl.exit.i

ad5755_update_dac_ctrl.exit.i:                    ; preds = %if.end.i.i.i.i.i.i.i.i.i.i, %if.then6.i.ad5755_update_dac_ctrl.exit.i_crit_edge
  %call.i.i.i.i.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 42949600) #5
  %35 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i.i, align 8
  %arrayidx.i4.i = getelementptr %struct.ad5755_state, ptr %36, i32 0, i32 3, i32 %2
  %37 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i4.i, align 4
  %or.i5.i = or i32 %38, 64
  store i32 %or.i5.i, ptr %arrayidx.i4.i, align 4
  %39 = load ptr, ptr %priv.i.i, align 8
  %or1.i.i7.i = or i32 %or.i.i.i, %or.i5.i
  %or.i.i.i8.i = or i32 %or1.i.i7.i, 1851392
  %data.i.i.i9.i = getelementptr inbounds %struct.ad5755_state, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %data.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i.i.i8.i, ptr %data.i.i.i9.i, align 128
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %39, align 128
  %arrayidx3.i.i.i10.i = getelementptr [4 x i8], ptr %data.i.i.i9.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i2.i) #5
  %43 = getelementptr inbounds i8, ptr %t.i.i.i.i2.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i.i.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx3.i.i.i10.i, ptr %t.i.i.i.i2.i, align 4
  %len1.i.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i2.i, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %len1.i.i.i.i11.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i1.i) #5
  %47 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i1.i, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i.i.i.i1.i, ptr %msg.i.i.i.i.i1.i, align 4
  %prev.i.i.i.i.i.i.i.i.i12.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i1.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i.i.i1.i, ptr %prev.i.i.i.i.i.i.i.i.i12.i, align 4
  %resources.i.i.i.i.i.i.i.i13.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i1.i, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i.i.i.i13.i, ptr %resources.i.i.i.i.i.i.i.i13.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i14.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i1.i, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i.i.i.i13.i, ptr %prev.i2.i.i.i.i.i.i.i.i14.i, align 4
  %transfer_list.i.i.i.i.i.i.i15.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i2.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i16.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i15.i, ptr noundef nonnull %msg.i.i.i.i.i1.i, ptr noundef nonnull %msg.i.i.i.i.i1.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i16.i, label %if.end.i.i.i.i.i.i.i.i.i18.i, label %ad5755_update_dac_ctrl.exit.i.ad5755_update_dac_ctrl.exit20.i_crit_edge

ad5755_update_dac_ctrl.exit.i.ad5755_update_dac_ctrl.exit20.i_crit_edge: ; preds = %ad5755_update_dac_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_update_dac_ctrl.exit20.i

if.end.i.i.i.i.i.i.i.i.i18.i:                     ; preds = %ad5755_update_dac_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i.i.i.i15.i, ptr %prev.i.i.i.i.i.i.i.i.i12.i, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i.i.i1.i, ptr %transfer_list.i.i.i.i.i.i.i15.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i17.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i2.i, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i.i.i1.i, ptr %prev3.i.i.i.i.i.i.i.i.i17.i, align 4
  %56 = ptrtoint ptr %msg.i.i.i.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i15.i, ptr %msg.i.i.i.i.i1.i, align 4
  br label %ad5755_update_dac_ctrl.exit20.i

ad5755_update_dac_ctrl.exit20.i:                  ; preds = %if.end.i.i.i.i.i.i.i.i.i18.i, %ad5755_update_dac_ctrl.exit.i.ad5755_update_dac_ctrl.exit20.i_crit_edge
  %call.i.i.i.i.i19.i = call i32 @spi_sync(ptr noundef %42, ptr noundef nonnull %msg.i.i.i.i.i1.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i1.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i2.i) #5
  br label %ad5755_set_channel_pwr_down.exit

if.else.i:                                        ; preds = %if.end.i
  %or.i = or i32 %8, %shl.i
  %57 = ptrtoint ptr %pwr_down1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i, ptr %pwr_down1.i, align 8
  %58 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv.i.i, align 8
  %arrayidx.i24.i = getelementptr %struct.ad5755_state, ptr %59, i32 0, i32 3, i32 %2
  %60 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i24.i, align 4
  %and.i.i = and i32 %61, -337
  store i32 %and.i.i, ptr %arrayidx.i24.i, align 4
  %62 = load ptr, ptr %priv.i.i, align 8
  %or.i.i25.i = shl i32 %2, 16
  %or1.i.i26.i = or i32 %or.i.i25.i, %and.i.i
  %or.i.i.i27.i = or i32 %or1.i.i26.i, 1851392
  %data.i.i.i28.i = getelementptr inbounds %struct.ad5755_state, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %data.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or.i.i.i27.i, ptr %data.i.i.i28.i, align 128
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %62, align 128
  %arrayidx3.i.i.i29.i = getelementptr [4 x i8], ptr %data.i.i.i28.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i22.i) #5
  %66 = getelementptr inbounds i8, ptr %t.i.i.i.i22.i, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 92)
  %68 = ptrtoint ptr %t.i.i.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx3.i.i.i29.i, ptr %t.i.i.i.i22.i, align 4
  %len1.i.i.i.i30.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i22.i, i32 0, i32 2
  %69 = ptrtoint ptr %len1.i.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %len1.i.i.i.i30.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i21.i) #5
  %70 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i21.i, i32 8
  %71 = call ptr @memset(ptr %70, i32 0, i32 40)
  %72 = ptrtoint ptr %msg.i.i.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %msg.i.i.i.i.i21.i, ptr %msg.i.i.i.i.i21.i, align 4
  %prev.i.i.i.i.i.i.i.i.i31.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i21.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i.i.i21.i, ptr %prev.i.i.i.i.i.i.i.i.i31.i, align 4
  %resources.i.i.i.i.i.i.i.i32.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i21.i, i32 0, i32 10
  %74 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %resources.i.i.i.i.i.i.i.i32.i, ptr %resources.i.i.i.i.i.i.i.i32.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i33.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i21.i, i32 0, i32 10, i32 1
  %75 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %resources.i.i.i.i.i.i.i.i32.i, ptr %prev.i2.i.i.i.i.i.i.i.i33.i, align 4
  %transfer_list.i.i.i.i.i.i.i34.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i22.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i35.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i34.i, ptr noundef nonnull %msg.i.i.i.i.i21.i, ptr noundef nonnull %msg.i.i.i.i.i21.i) #5
  br i1 %call.i.i.i.i.i.i.i.i.i35.i, label %if.end.i.i.i.i.i.i.i.i.i37.i, label %if.else.i.ad5755_update_dac_ctrl.exit39.i_crit_edge

if.else.i.ad5755_update_dac_ctrl.exit39.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_update_dac_ctrl.exit39.i

if.end.i.i.i.i.i.i.i.i.i37.i:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %transfer_list.i.i.i.i.i.i.i34.i, ptr %prev.i.i.i.i.i.i.i.i.i31.i, align 4
  %77 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i.i.i.i21.i, ptr %transfer_list.i.i.i.i.i.i.i34.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i36.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i22.i, i32 0, i32 18, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %msg.i.i.i.i.i21.i, ptr %prev3.i.i.i.i.i.i.i.i.i36.i, align 4
  %79 = ptrtoint ptr %msg.i.i.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i34.i, ptr %msg.i.i.i.i.i21.i, align 4
  br label %ad5755_update_dac_ctrl.exit39.i

ad5755_update_dac_ctrl.exit39.i:                  ; preds = %if.end.i.i.i.i.i.i.i.i.i37.i, %if.else.i.ad5755_update_dac_ctrl.exit39.i_crit_edge
  %call.i.i.i.i.i38.i = call i32 @spi_sync(ptr noundef %65, ptr noundef nonnull %msg.i.i.i.i.i21.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i21.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i22.i) #5
  br label %ad5755_set_channel_pwr_down.exit

ad5755_set_channel_pwr_down.exit:                 ; preds = %ad5755_update_dac_ctrl.exit39.i, %ad5755_update_dac_ctrl.exit20.i, %if.end.ad5755_set_channel_pwr_down.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ad5755_set_channel_pwr_down.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %ad5755_set_channel_pwr_down.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
define internal i32 @ad5755_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 0, label %if.end.i
    i32 5, label %sw.bb3.i
    i32 4, label %if.end19.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel.i, align 4
  %arrayidx.i = getelementptr %struct.ad5755_state, ptr %1, i32 0, i32 3, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %6, 7
  %arrayidx1.i = getelementptr [7 x [2 x i32]], ptr @ad5755_min_max_table, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx4.i = getelementptr [7 x [2 x i32]], ptr @ad5755_min_max_table, i32 0, i32 %and.i, i32 1
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 4
  %sub = sub i32 %10, %8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %realbits, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %15 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ad5755_state, ptr %1, i32 0, i32 3, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %18, 7
  %arrayidx1.i.i = getelementptr [7 x [2 x i32]], ptr @ad5755_min_max_table, i32 0, i32 %and.i.i
  %19 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx1.i.i, align 4
  %arrayidx4.i.i = getelementptr [7 x [2 x i32]], ptr @ad5755_min_max_table, i32 0, i32 %and.i.i, i32 1
  %21 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i.i, align 4
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %realbits.i, align 1
  %conv.i = zext i8 %24 to i32
  %mul.i = shl i32 %20, %conv.i
  %sub.i = sub i32 %22, %20
  %div.i = sdiv i32 %mul.i, %sub.i
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %val, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %storemerge41.in.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %26 = ptrtoint ptr %storemerge41.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %storemerge41.i = load i32, ptr %storemerge41.in.i, align 4
  %shift2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %shift2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %shift2.i, align 1
  %conv.i28 = zext i8 %28 to i32
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %address6.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %29 = ptrtoint ptr %address6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %address6.i, align 4
  %or9.i = or i32 %30, 12
  %chip_info.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip_info.i, align 4
  %calib_shift.i = getelementptr inbounds %struct.ad5755_chip_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %calib_shift.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %calib_shift.i, align 4
  br label %if.end

if.end19.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %storemerge.in.in.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %35 = ptrtoint ptr %storemerge.in.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %storemerge.in.i = load i32, ptr %storemerge.in.in.i, align 4
  %storemerge.i = or i32 %storemerge.in.i, 8
  %chip_info20.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %chip_info20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip_info20.i, align 4
  %calib_shift21.i = getelementptr inbounds %struct.ad5755_chip_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %calib_shift21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %calib_shift21.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end19.i, %sw.bb3.i, %if.end.i
  %reg.1.ph = phi i32 [ %storemerge41.i, %if.end.i ], [ %or9.i, %sw.bb3.i ], [ %storemerge.i, %if.end19.i ]
  %shift.0.ph = phi i32 [ %conv.i28, %if.end.i ], [ %34, %sw.bb3.i ], [ %39, %if.end19.i ]
  %offset.0.ph.neg = phi i32 [ 0, %if.end.i ], [ -32768, %sw.bb3.i ], [ 0, %if.end19.i ]
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #5
  %40 = getelementptr inbounds i8, ptr %t.i, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 188)
  %data.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 7
  %arrayidx1.i29 = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  %42 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx1.i29, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %len.i, align 4
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 7
  %44 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 64, ptr %cs_change.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1
  %arrayidx4.i30 = getelementptr %struct.ad5755_state, ptr %1, i32 0, i32 7, i32 1
  %arrayidx5.i = getelementptr [4 x i8], ptr %arrayidx4.i30, i32 0, i32 1
  %45 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx5.i, ptr %arrayinit.element.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 1
  %46 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx5.i, ptr %rx_buf.i, align 4
  %len9.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 2
  %47 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %len9.i, align 4
  %lock.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %shl.i = shl i32 %reg.1.ph, 16
  %or.i = or i32 %shl.i, 8388608
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i, ptr %data.i, align 128
  %49 = ptrtoint ptr %arrayidx4.i30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1892352, ptr %arrayidx4.i30, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %52 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 18
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %63, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge

spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.1.i

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 18, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.i.i.1.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %63, align 4
  br label %spi_message_add_tail.exit.i.i.1.i

spi_message_add_tail.exit.i.i.1.i:                ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %51, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i, label %ad5755_read.exit, label %ad5755_read.exit.thread

ad5755_read.exit.thread:                          ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %lock.i) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #5
  br label %cleanup

ad5755_read.exit:                                 ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %arrayidx4.i30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx4.i30, align 4
  %and.i31 = and i32 %69, 65535
  call void @mutex_unlock(ptr noundef %lock.i) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #5
  %sub8 = add nsw i32 %and.i31, %offset.0.ph.neg
  %shr = lshr i32 %sub8, %shift.0.ph
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shr, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %ad5755_read.exit, %ad5755_read.exit.thread, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ad5755_read.exit ], [ 1, %sw.bb1 ], [ 11, %sw.bb ], [ %call.i.i, %ad5755_read.exit.thread ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5755_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %if.end.i
    i32 5, label %sw.bb3.i
    i32 4, label %if.end19.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %storemerge41.in.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %storemerge41.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %storemerge41.i = load i32, ptr %storemerge41.in.i, align 4
  %shift2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %shift2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift2.i, align 1
  %conv.i = zext i8 %5 to i32
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %address6.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address6.i, align 4
  %or9.i = or i32 %7, 16
  %chip_info.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip_info.i, align 4
  %calib_shift.i = getelementptr inbounds %struct.ad5755_chip_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %calib_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %calib_shift.i, align 4
  br label %if.end

if.end19.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %storemerge.in.in.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %storemerge.in.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge.in.i = load i32, ptr %storemerge.in.in.i, align 4
  %storemerge.i = or i32 %storemerge.in.i, 8
  %chip_info20.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %chip_info20.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info20.i, align 4
  %calib_shift21.i = getelementptr inbounds %struct.ad5755_chip_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %calib_shift21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %calib_shift21.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end19.i, %sw.bb3.i, %if.end.i
  %shift.0.ph = phi i32 [ %16, %if.end19.i ], [ %11, %sw.bb3.i ], [ %conv.i, %if.end.i ]
  %reg.1.ph = phi i32 [ %storemerge.i, %if.end19.i ], [ %or9.i, %sw.bb3.i ], [ %storemerge41.i, %if.end.i ]
  %offset.0.ph = phi i32 [ 0, %if.end19.i ], [ 32768, %sw.bb3.i ], [ 0, %if.end.i ]
  %shl = shl i32 %val, %shift.0.ph
  %add = add i32 %offset.0.ph, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %17 = icmp ugt i32 %add, 65535
  br i1 %17, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.ad5755_state, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %shl.i.i = shl i32 %reg.1.ph, 16
  %or.i.i = or i32 %add, %shl.i.i
  %data.i.i = getelementptr inbounds %struct.ad5755_state, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i, ptr %data.i.i, align 128
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 128
  %arrayidx3.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %23 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 92)
  %25 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx3.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %27 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end4.ad5755_write.exit_crit_edge

if.end4.ad5755_write.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5755_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5755_write.exit

ad5755_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end4.ad5755_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ad5755_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i.i, %ad5755_write.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_ad5755__230_882_ad5755_driver_init6, !1, !"__initcall__kmod_ad5755__230_882_ad5755_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5755.c", i32 882, i32 1}
!2 = !{ptr @__exitcall_ad5755_driver_exit, !1, !"__exitcall_ad5755_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5755.c", i32 884, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5755.c", i32 885, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5755.c", i32 886, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5755.c", i32 877, i32 11}
!12 = !{ptr @ad5755_driver, !13, !"ad5755_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5755.c", i32 875, i32 26}
!14 = !{ptr @ad5755_id, !15, !"ad5755_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5755.c", i32 855, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5755.c", i32 819, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad5755_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad5755_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ad5755_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/dac/ad5755.c", i32 835, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5755.c", i32 840, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ad5755_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ad5755_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ad5755_chip_info_tbl, !33, !"ad5755_chip_info_tbl", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ad5755.c", i32 545, i32 38}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/ad5755.c", i32 520, i32 11}
!36 = !{ptr @ad5755_ext_info, !37, !"ad5755_ext_info", i1 false, i1 false}
!37 = !{!"../drivers/iio/dac/ad5755.c", i32 518, i32 44}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/ad5755.c", i32 495, i32 25}
!40 = !{ptr @ad5755_info, !41, !"ad5755_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5755.c", i32 513, i32 30}
!42 = !{ptr @ad5755_min_max_table, !43, !"ad5755_min_max_table", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/ad5755.c", i32 371, i32 18}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5755.c", i32 716, i32 37}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/dac/ad5755.c", i32 719, i32 32}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ad5755.c", i32 722, i32 37}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5755.c", i32 731, i32 4}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ad5755_parse_fw._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ad5755_parse_fw._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/ad5755.c", i32 736, i32 37}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/ad5755.c", i32 744, i32 5}
!59 = !{ptr @ad5755_parse_fw._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ad5755_parse_fw._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/ad5755.c", i32 751, i32 4}
!63 = !{ptr @ad5755_parse_fw._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ad5755_parse_fw._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/ad5755.c", i32 757, i32 32}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/dac/ad5755.c", i32 760, i32 37}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/dac/ad5755.c", i32 763, i32 37}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/dac/ad5755.c", i32 765, i32 43}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/dac/ad5755.c", i32 777, i32 5}
!75 = !{ptr @ad5755_parse_fw._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ad5755_parse_fw._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/dac/ad5755.c", i32 790, i32 5}
!79 = !{ptr @ad5755_parse_fw._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ad5755_parse_fw._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ad5755_dcdc_freq_table, !82, !"ad5755_dcdc_freq_table", i1 false, i1 false}
!82 = !{!"../drivers/iio/dac/ad5755.c", i32 209, i32 18}
!83 = !{ptr @ad5755_dcdc_maxv_table, !84, !"ad5755_dcdc_maxv_table", i1 false, i1 false}
!84 = !{!"../drivers/iio/dac/ad5755.c", i32 215, i32 18}
!85 = !{ptr @ad5755_slew_rate_table, !86, !"ad5755_slew_rate_table", i1 false, i1 false}
!86 = !{!"../drivers/iio/dac/ad5755.c", i32 222, i32 18}
!87 = !{ptr @ad5755_slew_step_table, !88, !"ad5755_slew_step_table", i1 false, i1 false}
!88 = !{!"../drivers/iio/dac/ad5755.c", i32 241, i32 18}
!89 = !{ptr @ad5755_default_pdata, !90, !"ad5755_default_pdata", i1 false, i1 false}
!90 = !{!"../drivers/iio/dac/ad5755.c", i32 687, i32 42}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = !{i8 0, i8 2}
