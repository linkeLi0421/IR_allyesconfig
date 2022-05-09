; ModuleID = '/llk/IR_all_yes/drivers/iio/addac/ad74413r.c_pt.bc'
source_filename = "../drivers/iio/addac/ad74413r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad74413r_channels = type { ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.85, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.85 = type { i8, i8, i8, i8, i8, i32 }
%struct.ad74413r_chip_info = type { ptr, i8 }
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
%struct.ad74413r_state = type { [4 x %struct.ad74413r_channel_config], [4 x i32], [4 x i32], %struct.gpio_chip, %struct.gpio_chip, %struct.completion, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spi_message, [5 x %struct.spi_transfer], [52 x i8], %struct.anon.86, [16 x i8], [4 x i8], [4 x i8], [80 x i8] }
%struct.ad74413r_channel_config = type { i32, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.anon.86 = type { [16 x i8], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@__initcall__kmod_ad74413r__310_1470_ad74413r_driver_init6 = internal global ptr @ad74413r_driver_init, section ".initcall6.init", align 4
@ad74413r_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad74413r_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad74413r_dt_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad74413r_driver_exit = internal global ptr @ad74413r_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author311 = internal constant [61 x i8] c"ad74413r.author=Cosmin Tanislav <cosmin.tanislav@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [51 x i8] c"ad74413r.description=Analog Devices AD74413R ADDAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [41 x i8] c"ad74413r.file=drivers/iio/addac/ad74413r\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [24 x i8] c"ad74413r.license=GPL v2\00", section ".modinfo", align 1
@ad74413r_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ad74413r\00", [23 x i8] zeroinitializer }, align 32
@ad74413r_dt_id = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad74412r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ad74412r_chip_info_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad74413r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ad74413r_chip_info_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ad74413r_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad74413r_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad74413r_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @ad74413r_reg_read, ptr @ad74413r_reg_write, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ad74413r:1312:(&ad74413r_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"refin\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get refin regulator\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@ad74413r_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr null, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@ad74413r_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad74413r_read_raw, ptr null, ptr @ad74413r_read_avail, ptr @ad74413r_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad74413r_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad74413r_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad74413r_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad74413r_probe.lock_key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ad74413r_probe.request_key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@ad74413r_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @ad74413r_buffer_postenable, ptr @ad74413r_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ad74413r_crc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 183, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad CRC %02x for %02x%02x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ad74413r_crc_check\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/addac/ad74413r.c\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad74413r_crc_check._entry_ptr = internal global ptr @ad74413r_crc_check._entry, section ".printk_index", align 4
@ad74413r_range_to_voltage_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.13, i32 556, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC range invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ad74413r_range_to_voltage_range\00", [32 x i8] zeroinitializer }, align 32
@ad74413r_range_to_voltage_range._entry_ptr = internal global ptr @ad74413r_range_to_voltage_range._entry, section ".printk_index", align 4
@ad74413r_range_to_voltage_offset_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.13, i32 594, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ad74413r_range_to_voltage_offset_raw\00", [59 x i8] zeroinitializer }, align 32
@ad74413r_range_to_voltage_offset_raw._entry_ptr = internal global ptr @ad74413r_range_to_voltage_offset_raw._entry, section ".printk_index", align 4
@ad74413r_range_to_voltage_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.19, ptr @.str.13, i32 574, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ad74413r_range_to_voltage_offset\00", [63 x i8] zeroinitializer }, align 32
@ad74413r_range_to_voltage_offset._entry_ptr = internal global ptr @ad74413r_range_to_voltage_offset._entry, section ".printk_index", align 4
@ad74413r_rejection_to_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.13, i32 514, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ADC rejection invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ad74413r_rejection_to_rate\00", [37 x i8] zeroinitializer }, align 32
@ad74413r_rejection_to_rate._entry_ptr = internal global ptr @ad74413r_rejection_to_rate._entry, section ".printk_index", align 4
@ad74413r_adc_sampling_rates_hart = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 20, i32 1200, i32 4800], [16 x i8] zeroinitializer }, align 32
@ad74413r_adc_sampling_rates = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 20, i32 4800], [24 x i8] zeroinitializer }, align 32
@ad74413r_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.13, i32 1002, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid DAC code\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ad74413r_write_raw\00", [45 x i8] zeroinitializer }, align 32
@ad74413r_write_raw._entry_ptr = internal global ptr @ad74413r_write_raw._entry, section ".printk_index", align 4
@ad74413r_rate_to_rejection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.13, i32 536, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC rate invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ad74413r_rate_to_rejection\00", [37 x i8] zeroinitializer }, align 32
@ad74413r_rate_to_rejection._entry_ptr = internal global ptr @ad74413r_rate_to_rejection._entry, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.13, i32 1148, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read channel reg: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ad74413r_parse_channel_config\00", [34 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry_ptr = internal global ptr @ad74413r_parse_channel_config._entry, section ".printk_index", align 4
@ad74413r_parse_channel_config._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.13, i32 1153, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Channel index %u is too large\0A\00", [33 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry_ptr.31 = internal global ptr @ad74413r_parse_channel_config._entry.29, section ".printk_index", align 4
@ad74413r_parse_channel_config._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.13, i32 1159, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Channel %u already initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry_ptr.34 = internal global ptr @ad74413r_parse_channel_config._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi,ch-func\00", [20 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.13, i32 1167, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid channel function %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry_ptr.38 = internal global ptr @ad74413r_parse_channel_config._entry.36, section ".printk_index", align 4
@ad74413r_parse_channel_config._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.13, i32 1174, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported HART function %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ad74413r_parse_channel_config._entry_ptr.41 = internal global ptr @ad74413r_parse_channel_config._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,gpo-comparator\00", [45 x i8] zeroinitializer }, align 32
@ad74413r_channels_map = internal constant { [11 x %struct.ad74413r_channels], [40 x i8] } { [11 x %struct.ad74413r_channels] [%struct.ad74413r_channels { ptr @ad74413r_voltage_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_voltage_output_channels, i32 2 }, %struct.ad74413r_channels { ptr @ad74413r_current_output_channels, i32 2 }, %struct.ad74413r_channels { ptr @ad74413r_voltage_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_current_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_current_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_resistance_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_digital_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_digital_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_current_input_channels, i32 1 }, %struct.ad74413r_channels { ptr @ad74413r_current_input_channels, i32 1 }], [40 x i8] zeroinitializer }, align 32
@ad74413r_voltage_input_channels = internal global { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 16, i8 32, i8 8, i8 0, i32 1 }, i32 4109, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad74413r_voltage_output_channels = internal global { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 16, i8 32, i8 8, i8 0, i32 1 }, i32 4109, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@ad74413r_current_output_channels = internal global { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 16, i8 32, i8 8, i8 0, i32 1 }, i32 4109, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@ad74413r_current_input_channels = internal global { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 16, i8 32, i8 8, i8 0, i32 1 }, i32 4109, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad74413r_resistance_input_channels = internal global { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 25, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 16, i8 32, i8 8, i8 0, i32 1 }, i32 4099, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad74413r_digital_input_channels = internal global { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.85 { i8 117, i8 16, i8 32, i8 8, i8 0, i32 1 }, i32 4109, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad74413r_debounce_map = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 13, i32 18, i32 24, i32 32, i32 42, i32 56, i32 75, i32 100, i32 130, i32 180, i32 240, i32 320, i32 420, i32 560, i32 750, i32 1000, i32 1300, i32 1800, i32 2400, i32 3200, i32 4200, i32 5600, i32 7500, i32 10000, i32 13000, i32 18000, i32 24000, i32 32000, i32 42000, i32 56000, i32 75000], [32 x i8] zeroinitializer }, align 32
@ad74412r_chip_info_data = internal constant { %struct.ad74413r_chip_info, [24 x i8] } { %struct.ad74413r_chip_info { ptr @.str.43, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ad74413r_chip_info_data = internal constant { %struct.ad74413r_chip_info, [24 x i8] } { %struct.ad74413r_chip_info { ptr @.str, i8 1 }, [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ad74412r\00", [23 x i8] zeroinitializer }, align 32
@switch.table.ad74413r_read_raw = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10000, i32 2500, i32 2500, i32 5000], [16 x i8] zeroinitializer }, align 32
@switch.table.ad74413r_read_raw.44 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10000, i32 2500, i32 2500, i32 5000], [16 x i8] zeroinitializer }, align 32
@switch.table.ad74413r_read_raw.45 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 20, i32 4800, i32 10, i32 1200], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 20, i64 1200, i64 4800]
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"ad74413r_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1460, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"ad74413r_crc8_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 29, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1462, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"ad74413r_dt_id\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1447, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1308, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"ad74413r_regmap_config\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 223, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1311, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1316, i32 46 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1319, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1331, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1335, i32 45 }
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"ad74413r_trigger_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1042, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"ad74413r_info\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1046, i32 30 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1381, i32 9 }
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1399, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1411, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"ad74413r_buffer_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1037, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 87, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 182, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 556, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 594, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 574, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 514, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [33 x i8] c"ad74413r_adc_sampling_rates_hart\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 152, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"ad74413r_adc_sampling_rates\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 148, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1002, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 536, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1146, i32 47 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1148, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1153, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1159, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1164, i32 41 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1167, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1174, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1183, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"ad74413r_channels_map\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1124, i32 39 }
@___asan_gen_.239 = private unnamed_addr constant [32 x i8] c"ad74413r_voltage_input_channels\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1099, i32 29 }
@___asan_gen_.242 = private unnamed_addr constant [33 x i8] c"ad74413r_voltage_output_channels\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1089, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant [33 x i8] c"ad74413r_current_output_channels\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1094, i32 29 }
@___asan_gen_.248 = private unnamed_addr constant [32 x i8] c"ad74413r_current_input_channels\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1103, i32 29 }
@___asan_gen_.251 = private unnamed_addr constant [35 x i8] c"ad74413r_resistance_input_channels\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1107, i32 29 }
@___asan_gen_.254 = private unnamed_addr constant [32 x i8] c"ad74413r_digital_input_channels\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1111, i32 29 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"ad74413r_debounce_map\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 237, i32 27 }
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"ad74412r_chip_info_data\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1437, i32 40 }
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"ad74413r_chip_info_data\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1442, i32 40 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [32 x i8] c"../drivers/iio/addac/ad74413r.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1439, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"switch.table.ad74413r_read_raw\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [34 x i8] c"switch.table.ad74413r_read_raw.44\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [34 x i8] c"switch.table.ad74413r_read_raw.45\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_ad74413r_driver_exit, ptr @__initcall__kmod_ad74413r__310_1470_ad74413r_driver_init6, ptr @ad74413r_crc_check._entry, ptr @ad74413r_crc_check._entry_ptr, ptr @ad74413r_driver_exit, ptr @ad74413r_parse_channel_config._entry, ptr @ad74413r_parse_channel_config._entry.29, ptr @ad74413r_parse_channel_config._entry.32, ptr @ad74413r_parse_channel_config._entry.36, ptr @ad74413r_parse_channel_config._entry.39, ptr @ad74413r_parse_channel_config._entry_ptr, ptr @ad74413r_parse_channel_config._entry_ptr.31, ptr @ad74413r_parse_channel_config._entry_ptr.34, ptr @ad74413r_parse_channel_config._entry_ptr.38, ptr @ad74413r_parse_channel_config._entry_ptr.41, ptr @ad74413r_range_to_voltage_offset._entry, ptr @ad74413r_range_to_voltage_offset._entry_ptr, ptr @ad74413r_range_to_voltage_offset_raw._entry, ptr @ad74413r_range_to_voltage_offset_raw._entry_ptr, ptr @ad74413r_range_to_voltage_range._entry, ptr @ad74413r_range_to_voltage_range._entry_ptr, ptr @ad74413r_rate_to_rejection._entry, ptr @ad74413r_rate_to_rejection._entry_ptr, ptr @ad74413r_rejection_to_rate._entry, ptr @ad74413r_rejection_to_rate._entry_ptr, ptr @ad74413r_write_raw._entry, ptr @ad74413r_write_raw._entry_ptr, ptr @ad74413r_driver, ptr @ad74413r_crc8_table, ptr @.str, ptr @ad74413r_dt_id, ptr @ad74413r_probe.__key, ptr @.str.1, ptr @ad74413r_probe._key, ptr @ad74413r_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad74413r_trigger_ops, ptr @ad74413r_info, ptr @ad74413r_probe.lock_key, ptr @ad74413r_probe.request_key, ptr @ad74413r_probe.lock_key.7, ptr @ad74413r_probe.request_key.8, ptr @.str.9, ptr @ad74413r_buffer_ops, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ad74413r_adc_sampling_rates_hart, ptr @ad74413r_adc_sampling_rates, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @ad74413r_channels_map, ptr @ad74413r_voltage_input_channels, ptr @ad74413r_voltage_output_channels, ptr @ad74413r_current_output_channels, ptr @ad74413r_current_input_channels, ptr @ad74413r_resistance_input_channels, ptr @ad74413r_digital_input_channels, ptr @ad74413r_debounce_map, ptr @ad74412r_chip_info_data, ptr @ad74413r_chip_info_data, ptr @.str.43, ptr @switch.table.ad74413r_read_raw, ptr @switch.table.ad74413r_read_raw.44, ptr @switch.table.ad74413r_read_raw.45], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_dt_id to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_probe.lock_key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_probe.request_key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_crc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_range_to_voltage_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_range_to_voltage_offset_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_range_to_voltage_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_rejection_to_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_adc_sampling_rates_hart to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_adc_sampling_rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_rate_to_rejection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_parse_channel_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_parse_channel_config._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_parse_channel_config._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_parse_channel_config._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_parse_channel_config._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_channels_map to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_voltage_input_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_voltage_output_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_current_output_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_current_input_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_resistance_input_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_digital_input_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_debounce_map to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74412r_chip_info_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad74413r_chip_info_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad74413r_read_raw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad74413r_read_raw.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad74413r_read_raw.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ad74413r_register_driver() #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad74413r_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad74413r_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_register_driver() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @crc8_populate_msb(ptr noundef nonnull @ad74413r_crc8_table, i8 noundef zeroext 7) #8
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad74413r_driver) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 1664) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spi2 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spi2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %spi2, align 4
  %dev4 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %dev4, align 8
  %call6 = tail call ptr @device_get_match_data(ptr noundef %spi) #8
  %chip_info = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %chip_info, align 8
  %lock = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad74413r_probe.__key) #8
  %adc_data_completion = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %adc_data_completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %adc_data_completion, align 4
  %wait.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #8
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %call8 = tail call ptr @__devm_regmap_init(ptr noundef %7, ptr noundef null, ptr noundef %1, ptr noundef nonnull @ad74413r_regmap_config, ptr noundef nonnull @ad74413r_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 8
  %call16 = tail call ptr @devm_regulator_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %refin_reg = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %refin_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %refin_reg, align 32
  %cmp.i267 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 8
  %15 = ptrtoint ptr %call16 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call26 = tail call i32 @regulator_enable(ptr noundef %call16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 8
  %18 = ptrtoint ptr %refin_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %refin_reg, align 32
  %call.i = tail call i32 @devm_add_action(ptr noundef %17, ptr noundef nonnull @ad74413r_regulator_disable, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end35, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %19) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %sense_resistor_ohms = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %sense_resistor_ohms to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 100000000, ptr %sense_resistor_ohms, align 8
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 8
  %call.i268 = tail call i32 @device_property_read_u32_array(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef %sense_resistor_ohms, i32 noundef 1) #8
  %23 = ptrtoint ptr %sense_resistor_ohms to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sense_resistor_ohms, align 8
  %div = udiv i32 %24, 1000000
  store i32 %div, ptr %sense_resistor_ohms, align 8
  %25 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev4, align 8
  %27 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip_info, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call42 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #8
  %call43 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef %30, i32 noundef %call42) #8
  %trig = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call43, ptr %trig, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %if.end35.cleanup_crit_edge, label %if.end47

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  %32 = ptrtoint ptr %call43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ad74413r_trigger_ops, ptr %call43, align 8
  %33 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %34, i32 0, i32 4, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %driver_data.i.i, align 4
  %36 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev4, align 8
  %38 = load ptr, ptr %trig, align 4
  %call52 = tail call i32 @__devm_iio_trigger_register(ptr noundef %37, ptr noundef %38, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %39 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %name58 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %43 = ptrtoint ptr %name58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %name58, align 8
  %44 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %45 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ad74413r_info, ptr %info, align 8
  %46 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %47, i32 0, i32 4
  %call.i269 = tail call ptr @get_device(ptr noundef %dev.i) #8
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %49) #8
  %trig61 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %50 = ptrtoint ptr %trig61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %trig61, align 4
  %call62 = tail call fastcc i32 @ad74413r_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %call66 = tail call fastcc i32 @ad74413r_parse_channel_configs(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %call70 = tail call fastcc i32 @ad74413r_setup_channels(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %call74 = tail call fastcc i32 @ad74413r_setup_gpios(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  %num_gpo_gpios = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %num_gpo_gpios to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_gpo_gpios, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool78.not = icmp eq i32 %52, 0
  br i1 %tobool78.not, label %if.end77.if.end100_crit_edge, label %if.then79

if.end77.if.end100_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then79:                                        ; preds = %if.end77
  %gpo_gpiochip = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3
  %owner = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 4
  %53 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %owner, align 16
  %54 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip_info, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %gpo_gpiochip to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %gpo_gpiochip, align 64
  %base = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 19
  %59 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %base, align 4
  %conv = trunc i32 %52 to i16
  %ngpio = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 20
  %60 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv, ptr %ngpio, align 16
  %61 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev4, align 8
  %parent = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 2
  %63 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %parent, align 8
  %can_sleep = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 23
  %64 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %can_sleep, align 8
  %set = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 12
  %65 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ad74413r_gpio_set, ptr %set, align 16
  %set_multiple = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 13
  %66 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ad74413r_gpio_set_multiple, ptr %set_multiple, align 4
  %set_config = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 14
  %67 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ad74413r_gpio_set_gpo_config, ptr %set_config, align 8
  %get_direction = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 3, i32 7
  %68 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @ad74413r_gpio_get_gpo_direction, ptr %get_direction, align 4
  %call96 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %62, ptr noundef %gpo_gpiochip, ptr noundef %1, ptr noundef nonnull @ad74413r_probe.lock_key, ptr noundef nonnull @ad74413r_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then79.if.end100_crit_edge, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79.if.end100_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end100:                                        ; preds = %if.then79.if.end100_crit_edge, %if.end77.if.end100_crit_edge
  %num_comparator_gpios = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 7
  %69 = ptrtoint ptr %num_comparator_gpios to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_comparator_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool101.not = icmp eq i32 %70, 0
  br i1 %tobool101.not, label %if.end100.if.end132_crit_edge, label %if.then102

if.end100.if.end132_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then102:                                       ; preds = %if.end100
  %comp_gpiochip = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4
  %owner103 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %owner103 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %owner103, align 4
  %72 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip_info, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %comp_gpiochip to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %comp_gpiochip, align 4
  %base109 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 19
  %77 = ptrtoint ptr %base109 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %base109, align 4
  %conv111 = trunc i32 %70 to i16
  %ngpio113 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 20
  %78 = ptrtoint ptr %ngpio113 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv111, ptr %ngpio113, align 4
  %79 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev4, align 8
  %parent116 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 2
  %81 = ptrtoint ptr %parent116 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %parent116, align 4
  %can_sleep118 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 23
  %82 = ptrtoint ptr %can_sleep118 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %can_sleep118, align 4
  %get = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 10
  %83 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @ad74413r_gpio_get, ptr %get, align 4
  %get_multiple = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 11
  %84 = ptrtoint ptr %get_multiple to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @ad74413r_gpio_get_multiple, ptr %get_multiple, align 4
  %set_config122 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 14
  %85 = ptrtoint ptr %set_config122 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ad74413r_gpio_set_comp_config, ptr %set_config122, align 4
  %get_direction124 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 4, i32 7
  %86 = ptrtoint ptr %get_direction124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ad74413r_gpio_get_comp_direction, ptr %get_direction124, align 4
  %call128 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %80, ptr noundef %comp_gpiochip, ptr noundef %1, ptr noundef nonnull @ad74413r_probe.lock_key.7, ptr noundef nonnull @ad74413r_probe.request_key.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then102.if.end132_crit_edge, label %if.then102.cleanup_crit_edge

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then102.if.end132_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.end132:                                        ; preds = %if.then102.if.end132_crit_edge, %if.end100.if.end132_crit_edge
  %call133 = tail call fastcc i32 @ad74413r_set_adc_conv_seq(ptr noundef %1, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end136:                                        ; preds = %if.end132
  %87 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev4, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %91 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chip_info, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %call.i270 = tail call i32 @devm_request_threaded_irq(ptr noundef %88, i32 noundef %90, ptr noundef nonnull @ad74413r_adc_data_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %94, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool141.not = icmp eq i32 %call.i270, 0
  %95 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev4, align 8
  br i1 %tobool141.not, label %if.end145, label %if.then142

if.then142:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %96, i32 noundef %call.i270, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end145:                                        ; preds = %if.end136
  %call147 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %96, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @ad74413r_trigger_handler, i32 noundef 0, ptr noundef nonnull @ad74413r_buffer_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end145.cleanup_crit_edge

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end150:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev4, align 8
  %call152 = tail call i32 @__devm_iio_device_register(ptr noundef %98, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %if.end145.cleanup_crit_edge, %if.then142, %if.end132.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end24.cleanup_crit_edge, %if.then19, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then11 ], [ %call23, %if.then19 ], [ %call144, %if.then142 ], [ %call152, %if.end150 ], [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ -12, %if.end35.cleanup_crit_edge ], [ %call52, %if.end47.cleanup_crit_edge ], [ %call62, %if.end55.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ], [ %call74, %if.end73.cleanup_crit_edge ], [ %call96, %if.then79.cleanup_crit_edge ], [ %call128, %if.then102.cleanup_crit_edge ], [ %call133, %if.end132.cleanup_crit_edge ], [ %call147, %if.end145.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad74413r_regulator_disable(ptr noundef %regulator) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %regulator) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_reset(ptr nocapture noundef readonly %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ad74413r_state, ptr %st, i32 0, i32 13
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 68, i32 noundef 5626) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 68, i32 noundef 44881) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_parse_channel_configs(ptr nocapture noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @dev_fwnode(ptr noundef %3) #8
  %call2 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %call1, ptr noundef null) #8
  %tobool.not39 = icmp eq ptr %call2, null
  br i1 %tobool.not39, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %num_channels56.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %channel_node.040 = phi ptr [ %call2, %for.body.lr.ph ], [ %call7, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #8
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %index.i, align 4, !annotation !149
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %channel_node.040, ptr noundef nonnull @.str.26, ptr noundef nonnull %index.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 14
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef %call.i.i) #12
  br label %put_channel_node

if.end.i:                                         ; preds = %for.body
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp ugt i32 %10, 3
  br i1 %cmp.i, label %do.end5.i, label %if.end7.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev6.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30, i32 noundef %10) #12
  br label %put_channel_node

if.end7.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr [4 x %struct.ad74413r_channel_config], ptr %5, i32 0, i32 %10
  %initialized.i = getelementptr [4 x %struct.ad74413r_channel_config], ptr %5, i32 0, i32 %10, i32 2
  %13 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %initialized.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 14
  %15 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.33, i32 noundef %10) #12
  br label %put_channel_node

if.end14.i:                                       ; preds = %if.end7.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.i, align 4
  %call.i92.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %channel_node.040, ptr noundef nonnull @.str.35, ptr noundef %arrayidx.i, i32 noundef 1) #8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %cmp20.i = icmp ugt i32 %19, 10
  br i1 %cmp20.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev25.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 14
  %20 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev25.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %19) #12
  br label %put_channel_node

if.end27.i:                                       ; preds = %if.end14.i
  %chip_info.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 10
  %22 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info.i, align 8
  %hart_support.i = getelementptr inbounds %struct.ad74413r_chip_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %hart_support.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hart_support.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool28.not.i = icmp eq i8 %25, 0
  %.off.i = add nsw i32 %19, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i = select i1 %tobool28.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %do.end37.i, label %if.end40.i

do.end37.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev38.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 14
  %26 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev38.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.40, i32 noundef %19) #12
  br label %put_channel_node

if.end40.i:                                       ; preds = %if.end27.i
  %.off90.i = add nsw i32 %19, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off90.i)
  %switch91.i = icmp ult i32 %.off90.i, 2
  br i1 %switch91.i, label %if.then46.i, label %if.end40.i.if.end47.i_crit_edge

if.end40.i.if.end47.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then46.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_comparator_gpios.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %num_comparator_gpios.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_comparator_gpios.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %num_comparator_gpios.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %if.end40.i.if.end47.i_crit_edge
  %call.i93.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %channel_node.040, ptr noundef nonnull @.str.42) #8
  %gpo_comparator.i = getelementptr [4 x %struct.ad74413r_channel_config], ptr %5, i32 0, i32 %10, i32 1
  %frombool.i = zext i1 %call.i93.i to i8
  %30 = ptrtoint ptr %gpo_comparator.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i, ptr %gpo_comparator.i, align 4
  br i1 %call.i93.i, label %if.end47.i.for.inc_crit_edge, label %if.then51.i

if.end47.i.for.inc_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_gpo_gpios.i = getelementptr inbounds %struct.ad74413r_state, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %num_gpo_gpios.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_gpo_gpios.i, align 16
  %inc52.i = add i32 %32, 1
  store i32 %inc52.i, ptr %num_gpo_gpios.i, align 16
  br label %for.inc

for.inc:                                          ; preds = %if.then51.i, %if.end47.i.for.inc_crit_edge
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %num_channels.i = getelementptr [11 x %struct.ad74413r_channels], ptr @ad74413r_channels_map, i32 0, i32 %34, i32 1
  %35 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_channels.i, align 4
  %37 = ptrtoint ptr %num_channels56.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_channels56.i, align 4
  %add.i = add i32 %38, %36
  store i32 %add.i, ptr %num_channels56.i, align 4
  %39 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %initialized.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %call6 = call ptr @dev_fwnode(ptr noundef %41) #8
  %call7 = call ptr @fwnode_get_next_available_child_node(ptr noundef %call6, ptr noundef nonnull %channel_node.040) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

put_channel_node:                                 ; preds = %do.end37.i, %do.end24.i, %do.end12.i, %do.end5.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end37.i ], [ -22, %do.end24.i ], [ -22, %do.end12.i ], [ -22, %do.end5.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %channel_node.040) #8
  br label %cleanup

cleanup:                                          ; preds = %put_channel_node, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %put_channel_node ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_setup_channels(ptr nocapture noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 88) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !151

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %dev = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %8, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %channels2 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %9 = ptrtoint ptr %channels2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %channels2, align 8
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  br label %for.body10.preheader

for.body10.preheader:                             ; preds = %if.end20.for.body10.preheader_crit_edge, %if.end
  %i.061 = phi i32 [ 0, %if.end ], [ %add.i, %if.end20.for.body10.preheader_crit_edge ]
  %channels.059 = phi ptr [ %call5.i.i, %if.end ], [ %add.ptr, %if.end20.for.body10.preheader_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ad74413r_channel_config], ptr %1, i32 0, i32 %i.061
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [11 x %struct.ad74413r_channels], ptr @ad74413r_channels_map, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %num_channels7 = getelementptr [11 x %struct.ad74413r_channels], ptr @ad74413r_channels_map, i32 0, i32 %11, i32 1
  %14 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels7, align 4
  %mul = mul i32 %15, 88
  %16 = call ptr @memcpy(ptr %channels.059, ptr %13, i32 %mul)
  %umax = call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.preheader
  %chan_i.057 = phi i32 [ %inc, %for.body10.for.body10_crit_edge ], [ 0, %for.body10.preheader ]
  %channel = getelementptr %struct.iio_chan_spec, ptr %channels.059, i32 %chan_i.057, i32 1
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.061, ptr %channel, align 4
  %output = getelementptr %struct.iio_chan_spec, ptr %channels.059, i32 %chan_i.057, i32 19
  %18 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %output, align 4
  %19 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool12.not, i32 %i.061, i32 -1
  %20 = getelementptr %struct.iio_chan_spec, ptr %channels.059, i32 %chan_i.057, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %inc = add nuw i32 %chan_i.057, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.end:                                          ; preds = %for.body10
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %add.i = add nuw nsw i32 %i.061, 1
  %conv.i = and i32 %23, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %add.i, i32 noundef 15, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %if.end20, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %add.ptr = getelementptr %struct.iio_chan_spec, ptr %channels.059, i32 %15
  %exitcond62.not = icmp eq i32 %add.i, 4
  br i1 %exitcond62.not, label %if.end20.cleanup_crit_edge, label %if.end20.for.body10.preheader_crit_edge

if.end20.for.body10.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.preheader

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %for.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call.i.i, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_setup_gpios(ptr nocapture noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %st, i32 0, i32 13
  %gpo_comparator = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %gpo_comparator to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpo_comparator, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond:                                         ; preds = %if.end8
  %arrayidx.1 = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 1
  %gpo_comparator.1 = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %gpo_comparator.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpo_comparator.1, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.1 = icmp eq i8 %3, 0
  br i1 %tobool.not.1, label %if.else.1, label %for.cond.if.end.1_crit_edge

for.cond.if.end.1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.else.1:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %inc.1 = add nuw nsw i32 %gpo_gpio_i.1, 1
  %arrayidx1.1 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 1, i32 %gpo_gpio_i.1
  %4 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %arrayidx1.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.else.1, %for.cond.if.end.1_crit_edge
  %gpo_gpio_i.1.1 = phi i32 [ %inc.1, %if.else.1 ], [ %gpo_gpio_i.1, %for.cond.if.end.1_crit_edge ]
  %gpo_config.0.1 = phi i32 [ 1, %if.else.1 ], [ 3, %for.cond.if.end.1_crit_edge ]
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %.off.1 = add i32 %6, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.1)
  %switch.1 = icmp ult i32 %.off.1, 2
  br i1 %switch.1, label %if.then5.1, label %if.end.1.if.end8.1_crit_edge

if.end.1.if.end8.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.1

if.then5.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc6.1 = add nuw nsw i32 %comp_gpio_i.1, 1
  %arrayidx7.1 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 2, i32 %comp_gpio_i.1
  %7 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx7.1, align 4
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then5.1, %if.end.1.if.end8.1_crit_edge
  %comp_gpio_i.1.1 = phi i32 [ %inc6.1, %if.then5.1 ], [ %comp_gpio_i.1, %if.end.1.if.end8.1_crit_edge ]
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 15, i32 noundef 7, i32 noundef %gpo_config.0.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool9.not.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool9.not.1, label %for.cond.1, label %if.end8.1.cleanup_crit_edge

if.end8.1.cleanup_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %if.end8.1
  %arrayidx.2 = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 2
  %gpo_comparator.2 = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %gpo_comparator.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpo_comparator.2, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2 = icmp eq i8 %11, 0
  br i1 %tobool.not.2, label %if.else.2, label %for.cond.1.if.end.2_crit_edge

for.cond.1.if.end.2_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.else.2:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc.2 = add nuw nsw i32 %gpo_gpio_i.1.1, 1
  %arrayidx1.2 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 1, i32 %gpo_gpio_i.1.1
  %12 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %arrayidx1.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.else.2, %for.cond.1.if.end.2_crit_edge
  %gpo_gpio_i.1.2 = phi i32 [ %inc.2, %if.else.2 ], [ %gpo_gpio_i.1.1, %for.cond.1.if.end.2_crit_edge ]
  %gpo_config.0.2 = phi i32 [ 1, %if.else.2 ], [ 3, %for.cond.1.if.end.2_crit_edge ]
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2, align 4
  %.off.2 = add i32 %14, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.2)
  %switch.2 = icmp ult i32 %.off.2, 2
  br i1 %switch.2, label %if.then5.2, label %if.end.2.if.end8.2_crit_edge

if.end.2.if.end8.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.2

if.then5.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %inc6.2 = add nuw nsw i32 %comp_gpio_i.1.1, 1
  %arrayidx7.2 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 2, i32 %comp_gpio_i.1.1
  %15 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx7.2, align 4
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.then5.2, %if.end.2.if.end8.2_crit_edge
  %comp_gpio_i.1.2 = phi i32 [ %inc6.2, %if.then5.2 ], [ %comp_gpio_i.1.1, %if.end.2.if.end8.2_crit_edge ]
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 16, i32 noundef 7, i32 noundef %gpo_config.0.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool9.not.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool9.not.2, label %for.cond.2, label %if.end8.2.cleanup_crit_edge

if.end8.2.cleanup_crit_edge:                      ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %if.end8.2
  %arrayidx.3 = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 3
  %gpo_comparator.3 = getelementptr [4 x %struct.ad74413r_channel_config], ptr %st, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %gpo_comparator.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gpo_comparator.3, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.3 = icmp eq i8 %19, 0
  br i1 %tobool.not.3, label %if.else.3, label %for.cond.2.if.end.3_crit_edge

for.cond.2.if.end.3_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.else.3:                                        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1.3 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 1, i32 %gpo_gpio_i.1.2
  %20 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %arrayidx1.3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else.3, %for.cond.2.if.end.3_crit_edge
  %gpo_config.0.3 = phi i32 [ 1, %if.else.3 ], [ 3, %for.cond.2.if.end.3_crit_edge ]
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  %.off.3 = add i32 %22, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.3)
  %switch.3 = icmp ult i32 %.off.3, 2
  br i1 %switch.3, label %if.then5.3, label %if.end.3.if.end8.3_crit_edge

if.end.3.if.end8.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.3

if.then5.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.3 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 2, i32 %comp_gpio_i.1.2
  %23 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %arrayidx7.3, align 4
  br label %if.end8.3

if.end8.3:                                        ; preds = %if.then5.3, %if.end.3.if.end8.3_crit_edge
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 17, i32 noundef 7, i32 noundef %gpo_config.0.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %gpo_gpio_i.1 = phi i32 [ 1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %gpo_config.0 = phi i32 [ 1, %if.else ], [ 3, %entry.if.end_crit_edge ]
  %27 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %st, align 4
  %.off = add i32 %28, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr %struct.ad74413r_state, ptr %st, i32 0, i32 2, i32 0
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %comp_gpio_i.1 = phi i32 [ 1, %if.then5 ], [ 0, %if.end.if.end8_crit_edge ]
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 14, i32 noundef 7, i32 noundef %gpo_config.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %for.cond, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %if.end8.3, %if.end8.2.cleanup_crit_edge, %if.end8.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end8.cleanup_crit_edge ], [ %call.i.i.1, %if.end8.1.cleanup_crit_edge ], [ %call.i.i.2, %if.end8.2.cleanup_crit_edge ], [ %call.i.i.3, %if.end8.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad74413r_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %call, i32 0, i32 1, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %1, 14
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool2.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool2.not, i32 0, i32 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 8, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad74413r_gpio_set_multiple(ptr noundef %chip, ptr noundef %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #8
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv342 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %conv342)
  %cmp43 = icmp ult i32 %call1, %conv342
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.046 = phi i32 [ %call1, %for.body.lr.ph ], [ %call13, %for.inc.for.body_crit_edge ]
  %real_bits.045 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %real_mask.044 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %call, i32 0, i32 1, i32 %offset.046
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %5, 14
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup15_crit_edge

for.body.cleanup15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

for.inc:                                          ; preds = %for.body
  %shl = shl nuw i32 1, %5
  %or = or i32 %shl, %real_mask.044
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits, align 4
  %and = and i32 %9, %offset.046
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or9 = select i1 %tobool6.not, i32 0, i32 %shl
  %spec.select = or i32 %or9, %real_bits.045
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ngpio, align 4
  %conv12 = zext i16 %11 to i32
  %add = add nuw i32 %offset.046, 1
  %call13 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv12, i32 noundef %add) #8
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ngpio, align 4
  %conv3 = zext i16 %13 to i32
  %cmp = icmp ult i32 %call13, %conv3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %real_mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.inc.for.end_crit_edge ]
  %real_bits.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 13, i32 noundef %real_mask.0.lcssa, i32 noundef %real_bits.0.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %for.body.cleanup15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_gpio_set_gpo_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %call, i32 0, i32 1, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %config to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 3, label %entry.cleanup.sink.split_crit_edge
    i8 2, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink12 = phi i32 [ 4, %sw.bb3 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap.i9 = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %regmap.i9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i9, align 4
  %add.i10 = add i32 %1, 14
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add.i10, i32 noundef 7, i32 noundef %.sink12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call.i.i11, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad74413r_gpio_get_gpo_direction(ptr nocapture noundef readnone %chip, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %call, i32 0, i32 2, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !149
  %regmap = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 37, ptr noundef nonnull %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = lshr i32 %6, %1
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_gpio_get_multiple(ptr noundef %chip, ptr noundef %mask, ptr nocapture noundef %bits) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !149
  %regmap = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 37, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %3 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %4 to i32
  %call2 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #8
  %5 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ngpio, align 4
  %conv424 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv424)
  %cmp25 = icmp ult i32 %call2, %conv424
  br i1 %cmp25, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %__assign_bit.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %offset.026 = phi i32 [ %call9, %__assign_bit.exit.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %call, i32 0, i32 2, i32 %offset.026
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %rem.i.i = and i32 %offset.026, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %offset.026, 5
  %add.ptr.i.i = getelementptr i32, ptr %bits, i32 %div2.i.i
  br i1 %tobool6.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %12, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i.i = xor i32 %shl.i.i, -1
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %14, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  %16 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ngpio, align 4
  %conv8 = zext i16 %17 to i32
  %add = add nuw i32 %offset.026, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv8, i32 noundef %add) #8
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio, align 4
  %conv4 = zext i16 %19 to i32
  %cmp = icmp ult i32 %call9, %conv4
  br i1 %cmp, label %__assign_bit.exit.for.body_crit_edge, label %__assign_bit.exit.cleanup_crit_edge

__assign_bit.exit.cleanup_crit_edge:              ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__assign_bit.exit.for.body_crit_edge:             ; preds = %__assign_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %__assign_bit.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_gpio_set_comp_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %call, i32 0, i32 2, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cond = icmp eq i32 %and.i, 11
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %shr.i = lshr i32 %config, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb
  %i.05.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i32], ptr @ad74413r_debounce_map, i32 0, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shr.i)
  %cmp1.not.i = icmp uge i32 %3, %shr.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  %or.cond.i = select i1 %cmp1.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %ad74413r_set_comp_debounce.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ad74413r_set_comp_debounce.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %1, 9
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 31, i32 noundef %i.05.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %ad74413r_set_comp_debounce.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %ad74413r_set_comp_debounce.exit ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad74413r_gpio_get_comp_direction(ptr nocapture noundef readnone %chip, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_set_adc_conv_seq(ptr nocapture noundef readonly %st, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ad74413r_state, ptr %st, i32 0, i32 13
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %status, 8
  %and13 = and i32 %shl, 768
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 35, i32 noundef 768, i32 noundef %and13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_adc_data_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %3, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %trig = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adc_data_completion = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %adc_data_completion) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %adc_samples_buf = getelementptr inbounds %struct.ad74413r_state, ptr %3, i32 0, i32 20
  %spi = getelementptr inbounds %struct.ad74413r_state, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  %adc_samples_msg = getelementptr inbounds %struct.ad74413r_state, ptr %3, i32 0, i32 17
  %call3 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %adc_samples_msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %entry
  %adc_active_channels = getelementptr inbounds %struct.ad74413r_state, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %adc_active_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adc_active_channels, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19.not = icmp eq i32 %7, 0
  br i1 %cmp19.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev.i = getelementptr inbounds %struct.ad74413r_state, ptr %3, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %ad74413r_crc_check.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ad74413r_crc_check.exit.for.body_crit_edge ]
  %mul = shl i32 %i.020, 2
  %arrayidx = getelementptr i8, ptr %adc_samples_buf, i32 %mul
  %call.i.i = tail call zeroext i8 @crc8(ptr noundef nonnull @ad74413r_crc8_table, ptr noundef %arrayidx, i32 noundef 3, i8 noundef zeroext 0) #8
  %arrayidx.i = getelementptr i8, ptr %arrayidx, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i.i, i8 %9)
  %cmp.not.i = icmp eq i8 %call.i.i, %9
  br i1 %cmp.not.i, label %for.body.ad74413r_crc_check.exit_crit_edge, label %do.end.i

for.body.ad74413r_crc_check.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_crc_check.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv7.i = zext i8 %13 to i32
  %arrayidx8.i = getelementptr i8, ptr %arrayidx, i32 1
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %15 to i32
  %arrayidx10.i = getelementptr i8, ptr %arrayidx, i32 2
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef %conv1.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i) #12
  br label %ad74413r_crc_check.exit

ad74413r_crc_check.exit:                          ; preds = %do.end.i, %for.body.ad74413r_crc_check.exit_crit_edge
  %inc = add nuw i32 %i.020, 1
  %18 = ptrtoint ptr %adc_active_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %adc_active_channels, align 16
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %ad74413r_crc_check.exit.for.body_crit_edge, label %ad74413r_crc_check.exit.for.end_crit_edge

ad74413r_crc_check.exit.for.end_crit_edge:        ; preds = %ad74413r_crc_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ad74413r_crc_check.exit.for.body_crit_edge:       ; preds = %ad74413r_crc_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ad74413r_crc_check.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call6 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scan_timestamp.i, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %23, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i18 = getelementptr i64, ptr %adc_samples_buf, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call6, ptr %arrayidx.i18, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %adc_samples_buf) #8
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %26) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %reg_read_xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %reg_read_xfer) #8
  %0 = getelementptr inbounds i8, ptr %reg_read_xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %reg_tx_buf = getelementptr inbounds %struct.ad74413r_state, ptr %context, i32 0, i32 22
  %2 = ptrtoint ptr %reg_read_xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reg_tx_buf, ptr %reg_read_xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 0, i32 7
  %4 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %cs_change, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 1, i32 1
  %reg_rx_buf = getelementptr inbounds %struct.ad74413r_state, ptr %context, i32 0, i32 23
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %reg_rx_buf, ptr %rx_buf, align 4
  %len3 = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 1, i32 2
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len3, align 4
  %conv = trunc i32 %reg to i16
  %7 = ptrtoint ptr %reg_tx_buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 65, ptr %reg_tx_buf, align 1
  %arrayidx1.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %conv, ptr %arrayidx1.i, align 1
  %call.i.i = tail call zeroext i8 @crc8(ptr noundef nonnull @ad74413r_crc8_table, ptr noundef %reg_tx_buf, i32 noundef 3, i8 noundef zeroext 0) #8
  %arrayidx2.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 22, i32 3
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call.i.i, ptr %arrayidx2.i, align 1
  %spi = getelementptr inbounds %struct.ad74413r_state, ptr %context, i32 0, i32 11
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
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
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %23, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %reg_read_xfer, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.i.i.1, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.1, ptr %23, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  %call.i.i31 = call zeroext i8 @crc8(ptr noundef nonnull @ad74413r_crc8_table, ptr noundef %reg_rx_buf, i32 noundef 3, i8 noundef zeroext 0) #8
  %arrayidx.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 23, i32 3
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i.i31, i8 %29)
  %cmp.not.i = icmp eq i8 %call.i.i31, %29
  br i1 %cmp.not.i, label %if.end16, label %ad74413r_crc_check.exit

ad74413r_crc_check.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = zext i8 %29 to i32
  %dev.i = getelementptr inbounds %struct.ad74413r_state, ptr %context, i32 0, i32 14
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %32 = ptrtoint ptr %reg_rx_buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg_rx_buf, align 1
  %conv7.i = zext i8 %33 to i32
  %arrayidx8.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 23, i32 1
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %35 to i32
  %arrayidx10.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 23, i32 2
  %36 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.11, i32 noundef %conv1.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 23, i32 1
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %arrayidx, align 1
  %conv19 = zext i16 %39 to i32
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv19, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %ad74413r_crc_check.exit, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ], [ -22, %ad74413r_crc_check.exit ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %reg_read_xfer) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg to i8
  %conv1 = trunc i32 %val to i16
  %reg_tx_buf = getelementptr inbounds %struct.ad74413r_state, ptr %context, i32 0, i32 22
  %0 = ptrtoint ptr %reg_tx_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %reg_tx_buf, align 1
  %arrayidx1.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 22, i32 1
  %1 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %conv1, ptr %arrayidx1.i, align 1
  %call.i.i = tail call zeroext i8 @crc8(ptr noundef nonnull @ad74413r_crc8_table, ptr noundef %reg_tx_buf, i32 noundef 3, i8 noundef zeroext 0) #8
  %arrayidx2.i = getelementptr %struct.ad74413r_state, ptr %context, i32 0, i32 22, i32 3
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call.i.i, ptr %arrayidx2.i, align 1
  %spi = getelementptr inbounds %struct.ad74413r_state, ptr %context, i32 0, i32 11
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reg_tx_buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i6 = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  ret i32 %call.i.i6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %rejection.i = alloca i32, align 4
  %range.i108 = alloca i32, align 4
  %range.i96 = alloca i32, align 4
  %range.i80 = alloca i32, align 4
  %range.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %info, label %entry.cleanup45_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb16
    i32 0, label %sw.bb25
    i32 1, label %sw.bb35
    i32 12, label %sw.bb41
  ]

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %4, label %sw.bb.cleanup45_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb4
  ]

sw.bb.cleanup45_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

sw.bb1:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %output, align 4
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 11000, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8191, ptr %val2, align 4
  br label %cleanup45

if.else:                                          ; preds = %sw.bb1
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range.i) #8
  %12 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %range.i, align 4, !annotation !149
  %regmap.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %add.i.i = add i32 %11, 5
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i.i, ptr noundef nonnull %range.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.else.ad74413r_get_input_voltage_scale.exit_crit_edge

if.else.ad74413r_get_input_voltage_scale.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_get_input_voltage_scale.exit

if.end.i:                                         ; preds = %if.else
  %15 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %range.i, align 4
  %and.i.i = lshr i32 %16, 5
  %shr.i.i = and i32 %and.i.i, 7
  store i32 %shr.i.i, ptr %range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i.i)
  %17 = icmp ult i32 %shr.i.i, 4
  br i1 %17, label %switch.lookup, label %ad74413r_range_to_voltage_range.exit.i

ad74413r_range_to_voltage_range.exit.i:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.16) #12
  br label %ad74413r_get_input_voltage_scale.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ad74413r_read_raw, i32 0, i32 %shr.i.i
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.load, ptr %val, align 4
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65535, ptr %val2, align 4
  br label %ad74413r_get_input_voltage_scale.exit

ad74413r_get_input_voltage_scale.exit:            ; preds = %switch.lookup, %ad74413r_range_to_voltage_range.exit.i, %if.else.ad74413r_get_input_voltage_scale.exit_crit_edge
  %retval.0.i = phi i32 [ 10, %switch.lookup ], [ -22, %ad74413r_range_to_voltage_range.exit.i ], [ %call.i.i, %if.else.ad74413r_get_input_voltage_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i) #8
  br label %cleanup45

sw.bb4:                                           ; preds = %sw.bb
  %output5 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %23 = ptrtoint ptr %output5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load6 = load i8, ptr %output5, align 4
  %24 = and i8 %bf.load6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %refin_reg.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %refin_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %refin_reg.i, align 32
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef %26) #8
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i, ptr %val, align 4
  %sense_resistor_ohms.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %sense_resistor_ohms.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sense_resistor_ohms.i, align 8
  %mul1.i = mul i32 %29, 8191000
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul1.i, ptr %val2, align 4
  br label %cleanup45

if.else13:                                        ; preds = %sw.bb4
  %channel14 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %31 = ptrtoint ptr %channel14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channel14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range.i80) #8
  %33 = ptrtoint ptr %range.i80 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %range.i80, align 4, !annotation !149
  %regmap.i.i81 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %regmap.i.i81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i.i81, align 4
  %add.i.i82 = add i32 %32, 5
  %call.i.i83 = call i32 @regmap_read(ptr noundef %35, i32 noundef %add.i.i82, ptr noundef nonnull %range.i80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.end.i87, label %if.else13.ad74413r_get_input_current_scale.exit_crit_edge

if.else13.ad74413r_get_input_current_scale.exit_crit_edge: ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_get_input_current_scale.exit

if.end.i87:                                       ; preds = %if.else13
  %36 = ptrtoint ptr %range.i80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %range.i80, align 4
  %and.i.i85 = lshr i32 %37, 5
  %shr.i.i86 = and i32 %and.i.i85, 7
  store i32 %shr.i.i86, ptr %range.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i.i86)
  %38 = icmp ult i32 %shr.i.i86, 4
  br i1 %38, label %switch.lookup130, label %ad74413r_range_to_voltage_range.exit.i91

ad74413r_range_to_voltage_range.exit.i91:         ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i90 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %dev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i90, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.16) #12
  br label %ad74413r_get_input_current_scale.exit

switch.lookup130:                                 ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep131 = getelementptr inbounds [4 x i32], ptr @switch.table.ad74413r_read_raw.44, i32 0, i32 %shr.i.i86
  %41 = ptrtoint ptr %switch.gep131 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load132 = load i32, ptr %switch.gep131, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %switch.load132, ptr %val, align 4
  %sense_resistor_ohms.i93 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %sense_resistor_ohms.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sense_resistor_ohms.i93, align 8
  %mul.i = mul i32 %44, 65535
  %45 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i, ptr %val2, align 4
  br label %ad74413r_get_input_current_scale.exit

ad74413r_get_input_current_scale.exit:            ; preds = %switch.lookup130, %ad74413r_range_to_voltage_range.exit.i91, %if.else13.ad74413r_get_input_current_scale.exit_crit_edge
  %retval.0.i95 = phi i32 [ 10, %switch.lookup130 ], [ -22, %ad74413r_range_to_voltage_range.exit.i91 ], [ %call.i.i83, %if.else13.ad74413r_get_input_current_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i80) #8
  br label %cleanup45

sw.bb16:                                          ; preds = %entry
  %46 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %47, label %sw.bb16.cleanup45_crit_edge [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb21
  ]

sw.bb16.cleanup45_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

sw.bb18:                                          ; preds = %sw.bb16
  %channel19 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %49 = ptrtoint ptr %channel19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range.i96) #8
  %51 = ptrtoint ptr %range.i96 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %range.i96, align 4, !annotation !149
  %regmap.i.i97 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %52 = ptrtoint ptr %regmap.i.i97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i.i97, align 4
  %add.i.i98 = add i32 %50, 5
  %call.i.i99 = call i32 @regmap_read(ptr noundef %53, i32 noundef %add.i.i98, ptr noundef nonnull %range.i96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %call.i.i99, 0
  br i1 %tobool.not.i.i100, label %if.end.i103, label %sw.bb18.ad74413r_get_input_voltage_offset.exit_crit_edge

sw.bb18.ad74413r_get_input_voltage_offset.exit_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_get_input_voltage_offset.exit

if.end.i103:                                      ; preds = %sw.bb18
  %54 = ptrtoint ptr %range.i96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %range.i96, align 4
  %and.i.i101 = lshr i32 %55, 5
  %shr.i.i102 = and i32 %and.i.i101, 7
  store i32 %shr.i.i102, ptr %range.i96, align 4
  %56 = zext i32 %shr.i.i102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i102, label %ad74413r_range_to_voltage_offset_raw.exit.i [
    i32 0, label %if.end.i103.sw.bb.i.i_crit_edge
    i32 1, label %if.end.i103.sw.bb.i.i_crit_edge136
    i32 2, label %sw.bb1.i.i104
    i32 3, label %sw.bb2.i.i105
  ]

if.end.i103.sw.bb.i.i_crit_edge136:               ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.end.i103.sw.bb.i.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end.i103.sw.bb.i.i_crit_edge, %if.end.i103.sw.bb.i.i_crit_edge136
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %val, align 4
  br label %ad74413r_get_input_voltage_offset.exit

sw.bb1.i.i104:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -65535, ptr %val, align 4
  br label %ad74413r_get_input_voltage_offset.exit

sw.bb2.i.i105:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -32767, ptr %val, align 4
  br label %ad74413r_get_input_voltage_offset.exit

ad74413r_range_to_voltage_offset_raw.exit.i:      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i106 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %60 = ptrtoint ptr %dev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i106, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.16) #12
  br label %ad74413r_get_input_voltage_offset.exit

ad74413r_get_input_voltage_offset.exit:           ; preds = %ad74413r_range_to_voltage_offset_raw.exit.i, %sw.bb2.i.i105, %sw.bb1.i.i104, %sw.bb.i.i, %sw.bb18.ad74413r_get_input_voltage_offset.exit_crit_edge
  %retval.0.i107 = phi i32 [ %call.i.i99, %sw.bb18.ad74413r_get_input_voltage_offset.exit_crit_edge ], [ -22, %ad74413r_range_to_voltage_offset_raw.exit.i ], [ 1, %sw.bb2.i.i105 ], [ 1, %sw.bb1.i.i104 ], [ 1, %sw.bb.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i96) #8
  br label %cleanup45

sw.bb21:                                          ; preds = %sw.bb16
  %channel22 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %62 = ptrtoint ptr %channel22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channel22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range.i108) #8
  %64 = ptrtoint ptr %range.i108 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %range.i108, align 4, !annotation !149
  %regmap.i.i109 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %65 = ptrtoint ptr %regmap.i.i109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i.i109, align 4
  %add.i.i110 = add i32 %63, 5
  %call.i.i111 = call i32 @regmap_read(ptr noundef %66, i32 noundef %add.i.i110, ptr noundef nonnull %range.i108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %call.i.i111, 0
  br i1 %tobool.not.i.i112, label %if.end.i115, label %sw.bb21.ad74413_get_input_current_offset.exit_crit_edge

sw.bb21.ad74413_get_input_current_offset.exit_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413_get_input_current_offset.exit

if.end.i115:                                      ; preds = %sw.bb21
  %67 = ptrtoint ptr %range.i108 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %range.i108, align 4
  %and.i.i113 = lshr i32 %68, 5
  %shr.i.i114 = and i32 %and.i.i113, 7
  store i32 %shr.i.i114, ptr %range.i108, align 4
  %69 = zext i32 %shr.i.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i.i114, label %ad74413r_range_to_voltage_range.exit.i117 [
    i32 0, label %if.end.i115.if.end8.i_crit_edge
    i32 3, label %if.end.i115.sw.bb1.i20.i_crit_edge
    i32 2, label %sw.bb1.i20.fold.split.i
    i32 1, label %if.end8.fold.split.i
  ]

if.end.i115.sw.bb1.i20.i_crit_edge:               ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i20.i

if.end.i115.if.end8.i_crit_edge:                  ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

ad74413r_range_to_voltage_range.exit.i117:        ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i116 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %70 = ptrtoint ptr %dev.i.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i.i116, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.16) #12
  br label %ad74413_get_input_current_offset.exit

sw.bb1.i20.fold.split.i:                          ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i20.i

sw.bb1.i20.i:                                     ; preds = %sw.bb1.i20.fold.split.i, %if.end.i115.sw.bb1.i20.i_crit_edge
  %voltage_range.0.ph33.i = phi i32 [ 5000, %if.end.i115.sw.bb1.i20.i_crit_edge ], [ 2500, %sw.bb1.i20.fold.split.i ]
  br label %if.end8.i

if.end8.fold.split.i:                             ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.fold.split.i, %sw.bb1.i20.i, %if.end.i115.if.end8.i_crit_edge
  %voltage_range.0.ph29.ph.i = phi i32 [ %voltage_range.0.ph33.i, %sw.bb1.i20.i ], [ 10000, %if.end.i115.if.end8.i_crit_edge ], [ 2500, %if.end8.fold.split.i ]
  %voltage_offset.0.ph.i = phi i32 [ -163837500, %sw.bb1.i20.i ], [ %shr.i.i114, %if.end.i115.if.end8.i_crit_edge ], [ 0, %if.end8.fold.split.i ]
  %div.i = udiv i32 %voltage_offset.0.ph.i, %voltage_range.0.ph29.ph.i
  %72 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div.i, ptr %val, align 4
  br label %ad74413_get_input_current_offset.exit

ad74413_get_input_current_offset.exit:            ; preds = %if.end8.i, %ad74413r_range_to_voltage_range.exit.i117, %sw.bb21.ad74413_get_input_current_offset.exit_crit_edge
  %retval.0.i118 = phi i32 [ 1, %if.end8.i ], [ -22, %ad74413r_range_to_voltage_range.exit.i117 ], [ %call.i.i111, %sw.bb21.ad74413_get_input_current_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range.i108) #8
  br label %cleanup45

sw.bb25:                                          ; preds = %entry
  %output26 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %73 = ptrtoint ptr %output26 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load27 = load i8, ptr %output26, align 4
  %74 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool31.not = icmp eq i8 %74, 0
  br i1 %tobool31.not, label %if.end, label %sw.bb25.cleanup45_crit_edge

sw.bb25.cleanup45_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.end:                                           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %channel33 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %75 = ptrtoint ptr %channel33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %channel33, align 4
  %call34 = tail call fastcc i32 @ad74413r_get_single_adc_result(ptr noundef %indio_dev, i32 noundef %76, ptr noundef %val)
  br label %cleanup45

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %channel36 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %77 = ptrtoint ptr %channel36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channel36, align 4
  %call37 = tail call fastcc i32 @ad74413r_get_single_adc_result(ptr noundef %indio_dev, i32 noundef %78, ptr noundef %val)
  br label %cleanup45

sw.bb41:                                          ; preds = %entry
  %channel42 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %79 = ptrtoint ptr %channel42 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %channel42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rejection.i) #8
  %81 = ptrtoint ptr %rejection.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %rejection.i, align 4, !annotation !149
  %regmap.i.i119 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %82 = ptrtoint ptr %regmap.i.i119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i.i119, align 4
  %add.i.i120 = add i32 %80, 5
  %call.i.i121 = call i32 @regmap_read(ptr noundef %83, i32 noundef %add.i.i120, ptr noundef nonnull %rejection.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %tobool.not.i.i122 = icmp eq i32 %call.i.i121, 0
  br i1 %tobool.not.i.i122, label %if.end.i125, label %sw.bb41.ad74413r_get_adc_rate.exit_crit_edge

sw.bb41.ad74413r_get_adc_rate.exit_crit_edge:     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_get_adc_rate.exit

if.end.i125:                                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %rejection.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rejection.i, align 4
  %and.i.i123 = lshr i32 %85, 3
  %shr.i.i124 = and i32 %and.i.i123, 3
  %switch.gep134 = getelementptr inbounds [4 x i32], ptr @switch.table.ad74413r_read_raw.45, i32 0, i32 %shr.i.i124
  %86 = ptrtoint ptr %switch.gep134 to i32
  call void @__asan_load4_noabort(i32 %86)
  %switch.load135 = load i32, ptr %switch.gep134, align 4
  %87 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %switch.load135, ptr %val, align 4
  br label %ad74413r_get_adc_rate.exit

ad74413r_get_adc_rate.exit:                       ; preds = %if.end.i125, %sw.bb41.ad74413r_get_adc_rate.exit_crit_edge
  %retval.0.i129 = phi i32 [ %call.i.i121, %sw.bb41.ad74413r_get_adc_rate.exit_crit_edge ], [ 1, %if.end.i125 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rejection.i) #8
  br label %cleanup45

cleanup45:                                        ; preds = %ad74413r_get_adc_rate.exit, %sw.bb35, %if.end, %sw.bb25.cleanup45_crit_edge, %ad74413_get_input_current_offset.exit, %ad74413r_get_input_voltage_offset.exit, %sw.bb16.cleanup45_crit_edge, %ad74413r_get_input_current_scale.exit, %if.then11, %ad74413r_get_input_voltage_scale.exit, %if.then, %sw.bb.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.1 = phi i32 [ %retval.0.i129, %ad74413r_get_adc_rate.exit ], [ %call37, %sw.bb35 ], [ %call34, %if.end ], [ %retval.0.i118, %ad74413_get_input_current_offset.exit ], [ %retval.0.i107, %ad74413r_get_input_voltage_offset.exit ], [ 10, %if.then11 ], [ %retval.0.i95, %ad74413r_get_input_current_scale.exit ], [ 10, %if.then ], [ %retval.0.i, %ad74413r_get_input_voltage_scale.exit ], [ -22, %sw.bb.cleanup45_crit_edge ], [ -22, %sw.bb16.cleanup45_crit_edge ], [ -22, %sw.bb25.cleanup45_crit_edge ], [ -22, %entry.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad74413r_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %info)
  %cond = icmp eq i32 %info, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_info = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 8
  %hart_support = getelementptr inbounds %struct.ad74413r_chip_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hart_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hart_support, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %ad74413r_adc_sampling_rates.ad74413r_adc_sampling_rates_hart = select i1 %tobool.not, ptr @ad74413r_adc_sampling_rates, ptr @ad74413r_adc_sampling_rates_hart
  %. = select i1 %tobool.not, i32 2, i32 4
  %6 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ad74413r_adc_sampling_rates.ad74413r_adc_sampling_rates_hart, ptr %vals, align 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %length, align 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %reg_seq.i = alloca [2 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %3 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %output, align 4
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %val)
  %cmp1 = icmp ugt i32 %val, 8191
  br i1 %cmp1, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reg_seq.i) #8
  %9 = getelementptr inbounds %struct.reg_sequence, ptr %reg_seq.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.reg_sequence, ptr %reg_seq.i, i32 0, i32 2
  %11 = getelementptr inbounds [2 x %struct.reg_sequence], ptr %reg_seq.i, i32 0, i32 1
  %12 = getelementptr inbounds [2 x %struct.reg_sequence], ptr %reg_seq.i, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds [2 x %struct.reg_sequence], ptr %reg_seq.i, i32 0, i32 1, i32 2
  %add.i = add i32 %8, 22
  %14 = ptrtoint ptr %reg_seq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %reg_seq.i, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %val, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %10, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 68, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 38202, ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %13, align 4
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_multi_reg_write(ptr noundef %21, ptr noundef nonnull %reg_seq.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reg_seq.i) #8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %channel6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %22 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel6, align 4
  %24 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %val, label %ad74413r_rate_to_rejection.exit.i [
    i32 20, label %sw.bb5.ad74413r_set_adc_rejection.exit.i_crit_edge
    i32 4800, label %sw.bb1.i.i
    i32 10, label %sw.bb2.i.i
    i32 1200, label %sw.bb3.i.i
  ]

sw.bb5.ad74413r_set_adc_rejection.exit.i_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_set_adc_rejection.exit.i

sw.bb1.i.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_set_adc_rejection.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_set_adc_rejection.exit.i

sw.bb3.i.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_set_adc_rejection.exit.i

ad74413r_rate_to_rejection.exit.i:                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.24) #12
  br label %cleanup

ad74413r_set_adc_rejection.exit.i:                ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb5.ad74413r_set_adc_rejection.exit.i_crit_edge
  %rejection.0.ph.i = phi i32 [ 0, %sw.bb5.ad74413r_set_adc_rejection.exit.i_crit_edge ], [ 8, %sw.bb1.i.i ], [ 16, %sw.bb2.i.i ], [ 24, %sw.bb3.i.i ]
  %regmap.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %add.i.i = add i32 %23, 5
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add.i.i, i32 noundef 24, i32 noundef %rejection.0.ph.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %ad74413r_set_adc_rejection.exit.i, %ad74413r_rate_to_rejection.exit.i, %if.end3, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.end3 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i.i, %ad74413r_set_adc_rejection.exit.i ], [ -22, %ad74413r_rate_to_rejection.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %active_scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %adc_samples_xfer = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 18
  %adc_samples_buf = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 20
  %adc_samples_tx_buf = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 21
  %lock = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %adc_samples_msg = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 17
  %2 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 17, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %adc_samples_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %adc_samples_msg, ptr %adc_samples_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 17, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adc_samples_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 17, i32 10
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 17, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %adc_active_channels = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %adc_active_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %adc_active_channels, align 16
  %call4 = tail call i32 @_find_next_zero_bit_be(ptr noundef %active_scan_mask, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp106 = icmp ult i32 %call4, 4
  br i1 %cmp106, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %channel.0107 = phi i32 [ %call4, %for.body.lr.ph ], [ %call6, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl nuw nsw i32 1, %channel.0107
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 35, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.inc, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc:                                          ; preds = %for.body
  %add = add nuw nsw i32 %channel.0107, 1
  %call6 = tail call i32 @_find_next_zero_bit_be(ptr noundef %active_scan_mask, i32 noundef 4, i32 noundef %add) #8
  %cmp = icmp ult i32 %call6, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ -22, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %11 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_scan_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %for.end.out_crit_edge, label %if.end9

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %for.end
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call10)
  %cmp12108 = icmp ult i32 %call10, 4
  br i1 %cmp12108, label %for.body13.lr.ph, label %if.end9.for.end39_crit_edge

if.end9.for.end39_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

for.body13.lr.ph:                                 ; preds = %if.end9
  %regmap.i91 = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  br label %for.body13

for.body13:                                       ; preds = %spi_message_add_tail.exit.for.body13_crit_edge, %for.body13.lr.ph
  %channel.1113 = phi i32 [ %call10, %for.body13.lr.ph ], [ %call38, %spi_message_add_tail.exit.for.body13_crit_edge ]
  %tx_buf.0112 = phi ptr [ %adc_samples_tx_buf, %for.body13.lr.ph ], [ %add.ptr, %spi_message_add_tail.exit.for.body13_crit_edge ]
  %rx_buf.0111 = phi ptr [ %adc_samples_buf, %for.body13.lr.ph ], [ %spec.select, %spi_message_add_tail.exit.for.body13_crit_edge ]
  %xfer.0109 = phi ptr [ %adc_samples_xfer, %for.body13.lr.ph ], [ %incdec.ptr, %spi_message_add_tail.exit.for.body13_crit_edge ]
  %13 = ptrtoint ptr %regmap.i91 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i91, align 4
  %shl.i92 = shl nuw nsw i32 1, %channel.1113
  %call.i.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 35, i32 noundef %shl.i92, i32 noundef %shl.i92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool15.not = icmp eq i32 %call.i.i93, 0
  br i1 %tobool15.not, label %if.end17, label %for.body13.out_crit_edge

for.body13.out_crit_edge:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %for.body13
  %15 = ptrtoint ptr %adc_active_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %adc_active_channels, align 16
  %inc = add i32 %16, 1
  store i32 %inc, ptr %adc_active_channels, align 16
  %cmp21 = icmp eq ptr %xfer.0109, %adc_samples_xfer
  %spec.select123 = select i1 %cmp21, ptr null, ptr %rx_buf.0111
  %17 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0109, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select123, ptr %17, align 4
  %19 = ptrtoint ptr %xfer.0109 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tx_buf.0112, ptr %xfer.0109, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0109, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0109, i32 0, i32 7
  %21 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %22 = trunc i32 %channel.1113 to i16
  %conv = add nuw nsw i16 %22, 38
  %23 = ptrtoint ptr %tx_buf.0112 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 65, ptr %tx_buf.0112, align 1
  %arrayidx1.i = getelementptr i8, ptr %tx_buf.0112, i32 1
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv, ptr %arrayidx1.i, align 1
  %call.i.i94 = tail call zeroext i8 @crc8(ptr noundef nonnull @ad74413r_crc8_table, ptr noundef %tx_buf.0112, i32 noundef 3, i8 noundef zeroext 0) #8
  %arrayidx2.i = getelementptr i8, ptr %tx_buf.0112, i32 3
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call.i.i94, ptr %arrayidx2.i, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0109, i32 0, i32 18
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %27, ptr noundef %adc_samples_msg) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.spi_message_add_tail.exit_crit_edge

if.end17.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %adc_samples_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0109, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i, ptr %27, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end17.spi_message_add_tail.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %tx_buf.0112, i32 4
  %spec.select.idx = select i1 %cmp21, i32 0, i32 4
  %spec.select = getelementptr i8, ptr %rx_buf.0111, i32 %spec.select.idx
  %incdec.ptr = getelementptr %struct.spi_transfer, ptr %xfer.0109, i32 1
  %add37 = add nuw nsw i32 %channel.1113, 1
  %call38 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef 4, i32 noundef %add37) #8
  %cmp12 = icmp ult i32 %call38, 4
  br i1 %cmp12, label %spi_message_add_tail.exit.for.body13_crit_edge, label %spi_message_add_tail.exit.for.end39_crit_edge

spi_message_add_tail.exit.for.end39_crit_edge:    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end39

spi_message_add_tail.exit.for.body13_crit_edge:   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.end39:                                        ; preds = %spi_message_add_tail.exit.for.end39_crit_edge, %if.end9.for.end39_crit_edge
  %xfer.0.lcssa = phi ptr [ %adc_samples_xfer, %if.end9.for.end39_crit_edge ], [ %incdec.ptr, %spi_message_add_tail.exit.for.end39_crit_edge ]
  %rx_buf.0.lcssa = phi ptr [ %adc_samples_buf, %if.end9.for.end39_crit_edge ], [ %spec.select, %spi_message_add_tail.exit.for.end39_crit_edge ]
  %ret.1.lcssa = phi i32 [ %ret.0.lcssa, %if.end9.for.end39_crit_edge ], [ 0, %spi_message_add_tail.exit.for.end39_crit_edge ]
  %rx_buf40 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.lcssa, i32 0, i32 1
  %32 = ptrtoint ptr %rx_buf40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rx_buf.0.lcssa, ptr %rx_buf40, align 4
  %33 = ptrtoint ptr %xfer.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %xfer.0.lcssa, align 4
  %len42 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.lcssa, i32 0, i32 2
  %34 = ptrtoint ptr %len42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %len42, align 4
  %cs_change43 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.lcssa, i32 0, i32 7
  %35 = ptrtoint ptr %cs_change43 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load44 = load i8, ptr %cs_change43, align 4
  %bf.clear45 = and i8 %bf.load44, -65
  store i8 %bf.clear45, ptr %cs_change43, align 4
  %transfer_list.i95 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.lcssa, i32 0, i32 18
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i97 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i95, ptr noundef %37, ptr noundef %adc_samples_msg) #8
  br i1 %call.i.i.i97, label %if.end.i.i.i99, label %for.end39.out_crit_edge

for.end39.out_crit_edge:                          ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i.i99:                                   ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i95, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i95 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %adc_samples_msg, ptr %transfer_list.i95, align 4
  %prev3.i.i.i98 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.0.lcssa, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i98, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i95, ptr %37, align 4
  br label %out

out:                                              ; preds = %if.end.i.i.i99, %for.end39.out_crit_edge, %for.body13.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.2 = phi i32 [ %ret.0.lcssa, %for.end.out_crit_edge ], [ %ret.1.lcssa, %for.end39.out_crit_edge ], [ %ret.1.lcssa, %if.end.i.i.i99 ], [ %call.i.i93, %for.body13.out_crit_edge ], [ %call.i.i, %for.body.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad74413r_get_single_adc_result(ptr noundef %indio_dev, i32 noundef %channel, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %uval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval.i) #8
  %2 = ptrtoint ptr %uval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uval.i, align 4, !annotation !149
  %adc_data_completion.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %adc_data_completion.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %adc_data_completion.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %shl.i.i = shl nuw i32 1, %channel
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 35, i32 noundef %shl.i.i, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end._ad74413r_get_single_adc_result.exit_crit_edge

if.end._ad74413r_get_single_adc_result.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %_ad74413r_get_single_adc_result.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i44.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 35, i32 noundef 768, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool14.not.i.i, label %if.end4.i, label %if.end.i._ad74413r_get_single_adc_result.exit_crit_edge

if.end.i._ad74413r_get_single_adc_result.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_ad74413r_get_single_adc_result.exit

if.end4.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %call7.i = tail call i32 @wait_for_completion_timeout(ptr noundef %adc_data_completion.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end4.i._ad74413r_get_single_adc_result.exit_crit_edge, label %if.end10.i

if.end4.i._ad74413r_get_single_adc_result.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_ad74413r_get_single_adc_result.exit

if.end10.i:                                       ; preds = %if.end4.i
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %add.i = add i32 %channel, 38
  %call11.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %add.i, ptr noundef nonnull %uval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i._ad74413r_get_single_adc_result.exit_crit_edge

if.end10.i._ad74413r_get_single_adc_result.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_ad74413r_get_single_adc_result.exit

if.end14.i:                                       ; preds = %if.end10.i
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i46.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 35, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46.i)
  %tobool14.not.i47.i = icmp eq i32 %call.i.i46.i, 0
  br i1 %tobool14.not.i47.i, label %if.end18.i, label %if.end14.i._ad74413r_get_single_adc_result.exit_crit_edge

if.end14.i._ad74413r_get_single_adc_result.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_ad74413r_get_single_adc_result.exit

if.end18.i:                                       ; preds = %if.end14.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i52.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 35, i32 noundef %shl.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52.i)
  %tobool20.not.i = icmp eq i32 %call.i.i52.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i._ad74413r_get_single_adc_result.exit_crit_edge

if.end18.i._ad74413r_get_single_adc_result.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_ad74413r_get_single_adc_result.exit

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %uval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uval.i, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val, align 4
  br label %_ad74413r_get_single_adc_result.exit

_ad74413r_get_single_adc_result.exit:             ; preds = %if.end22.i, %if.end18.i._ad74413r_get_single_adc_result.exit_crit_edge, %if.end14.i._ad74413r_get_single_adc_result.exit_crit_edge, %if.end10.i._ad74413r_get_single_adc_result.exit_crit_edge, %if.end4.i._ad74413r_get_single_adc_result.exit_crit_edge, %if.end.i._ad74413r_get_single_adc_result.exit_crit_edge, %if.end._ad74413r_get_single_adc_result.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end22.i ], [ %call.i.i.i, %if.end._ad74413r_get_single_adc_result.exit_crit_edge ], [ -110, %if.end4.i._ad74413r_get_single_adc_result.exit_crit_edge ], [ %call11.i, %if.end10.i._ad74413r_get_single_adc_result.exit_crit_edge ], [ %call.i.i52.i, %if.end18.i._ad74413r_get_single_adc_result.exit_crit_edge ], [ %call.i.i44.i, %if.end.i._ad74413r_get_single_adc_result.exit_crit_edge ], [ %call.i.i46.i, %if.end14.i._ad74413r_get_single_adc_result.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval.i) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %cleanup

cleanup:                                          ; preds = %_ad74413r_get_single_adc_result.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %_ad74413r_get_single_adc_result.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 35, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %entry.ad74413r_set_adc_conv_seq.exit_crit_edge

entry.ad74413r_set_adc_conv_seq.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_set_adc_conv_seq.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  br label %ad74413r_set_adc_conv_seq.exit

ad74413r_set_adc_conv_seq.exit:                   ; preds = %if.end16.i, %entry.ad74413r_set_adc_conv_seq.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad74413r_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.ad74413r_state, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 35, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %entry.ad74413r_set_adc_conv_seq.exit_crit_edge

entry.ad74413r_set_adc_conv_seq.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad74413r_set_adc_conv_seq.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #8
  br label %ad74413r_set_adc_conv_seq.exit

ad74413r_set_adc_conv_seq.exit:                   ; preds = %if.end16.i, %entry.ad74413r_set_adc_conv_seq.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_ad74413r__310_1470_ad74413r_driver_init6, !1, !"__initcall__kmod_ad74413r__310_1470_ad74413r_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/addac/ad74413r.c", i32 1468, i32 1}
!2 = !{ptr @__exitcall_ad74413r_driver_exit, !1, !"__exitcall_ad74413r_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author311, !4, !"__UNIQUE_ID_author311", i1 false, i1 false}
!4 = !{!"../drivers/iio/addac/ad74413r.c", i32 1472, i32 1}
!5 = !{ptr @__UNIQUE_ID_description312, !6, !"__UNIQUE_ID_description312", i1 false, i1 false}
!6 = !{!"../drivers/iio/addac/ad74413r.c", i32 1473, i32 1}
!7 = !{ptr @__UNIQUE_ID_file313, !8, !"__UNIQUE_ID_file313", i1 false, i1 false}
!8 = !{!"../drivers/iio/addac/ad74413r.c", i32 1474, i32 1}
!9 = !{ptr @__UNIQUE_ID_license314, !8, !"__UNIQUE_ID_license314", i1 false, i1 false}
!10 = !{ptr @ad74413r_crc8_table, !11, !"ad74413r_crc8_table", i1 false, i1 false}
!11 = !{!"../drivers/iio/addac/ad74413r.c", i32 29, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/addac/ad74413r.c", i32 1462, i32 14}
!14 = !{ptr @ad74413r_driver, !15, !"ad74413r_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/addac/ad74413r.c", i32 1460, i32 26}
!16 = !{ptr @ad74413r_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/addac/ad74413r.c", i32 1308, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ad74413r_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/iio/addac/ad74413r.c", i32 1311, i32 15}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/addac/ad74413r.c", i32 1316, i32 46}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/addac/ad74413r.c", i32 1319, i32 10}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/addac/ad74413r.c", i32 1331, i32 36}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/addac/ad74413r.c", i32 1335, i32 45}
!30 = !{ptr @ad74413r_probe.lock_key, !31, !"lock_key", i1 false, i1 false}
!31 = !{!"../drivers/iio/addac/ad74413r.c", i32 1381, i32 9}
!32 = !{ptr @ad74413r_probe.request_key, !31, !"request_key", i1 false, i1 false}
!33 = !{ptr @ad74413r_probe.lock_key.7, !34, !"lock_key", i1 false, i1 false}
!34 = !{!"../drivers/iio/addac/ad74413r.c", i32 1399, i32 9}
!35 = !{ptr @ad74413r_probe.request_key.8, !34, !"request_key", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/addac/ad74413r.c", i32 1411, i32 38}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ad74413r_regmap_config, !42, !"ad74413r_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/iio/addac/ad74413r.c", i32 223, i32 35}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/addac/ad74413r.c", i32 182, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ad74413r_crc_check._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @ad74413r_crc_check._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ad74413r_trigger_ops, !52, !"ad74413r_trigger_ops", i1 false, i1 false}
!52 = !{!"../drivers/iio/addac/ad74413r.c", i32 1042, i32 37}
!53 = !{ptr @ad74413r_info, !54, !"ad74413r_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/addac/ad74413r.c", i32 1046, i32 30}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/addac/ad74413r.c", i32 556, i32 3}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ad74413r_range_to_voltage_range._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ad74413r_range_to_voltage_range._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/addac/ad74413r.c", i32 594, i32 3}
!62 = !{ptr @ad74413r_range_to_voltage_offset_raw._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ad74413r_range_to_voltage_offset_raw._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/addac/ad74413r.c", i32 574, i32 3}
!66 = !{ptr @ad74413r_range_to_voltage_offset._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ad74413r_range_to_voltage_offset._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/addac/ad74413r.c", i32 514, i32 3}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ad74413r_rejection_to_rate._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ad74413r_rejection_to_rate._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ad74413r_adc_sampling_rates_hart, !74, !"ad74413r_adc_sampling_rates_hart", i1 false, i1 false}
!74 = !{!"../drivers/iio/addac/ad74413r.c", i32 152, i32 18}
!75 = !{ptr @ad74413r_adc_sampling_rates, !76, !"ad74413r_adc_sampling_rates", i1 false, i1 false}
!76 = !{!"../drivers/iio/addac/ad74413r.c", i32 148, i32 18}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/addac/ad74413r.c", i32 1002, i32 4}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ad74413r_write_raw._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ad74413r_write_raw._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/addac/ad74413r.c", i32 536, i32 3}
!84 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ad74413r_rate_to_rejection._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ad74413r_rate_to_rejection._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/addac/ad74413r.c", i32 1146, i32 47}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/addac/ad74413r.c", i32 1148, i32 3}
!91 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ad74413r_parse_channel_config._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ad74413r_parse_channel_config._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/addac/ad74413r.c", i32 1153, i32 3}
!96 = !{ptr @ad74413r_parse_channel_config._entry.29, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ad74413r_parse_channel_config._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/addac/ad74413r.c", i32 1159, i32 3}
!100 = !{ptr @ad74413r_parse_channel_config._entry.32, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ad74413r_parse_channel_config._entry_ptr.34, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/addac/ad74413r.c", i32 1164, i32 41}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/addac/ad74413r.c", i32 1167, i32 3}
!106 = !{ptr @ad74413r_parse_channel_config._entry.36, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ad74413r_parse_channel_config._entry_ptr.38, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/addac/ad74413r.c", i32 1174, i32 3}
!110 = !{ptr @ad74413r_parse_channel_config._entry.39, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ad74413r_parse_channel_config._entry_ptr.41, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/addac/ad74413r.c", i32 1183, i32 3}
!114 = !{ptr @ad74413r_channels_map, !115, !"ad74413r_channels_map", i1 false, i1 false}
!115 = !{!"../drivers/iio/addac/ad74413r.c", i32 1124, i32 39}
!116 = !{ptr @ad74413r_voltage_input_channels, !117, !"ad74413r_voltage_input_channels", i1 false, i1 false}
!117 = !{!"../drivers/iio/addac/ad74413r.c", i32 1099, i32 29}
!118 = !{ptr @ad74413r_voltage_output_channels, !119, !"ad74413r_voltage_output_channels", i1 false, i1 false}
!119 = !{!"../drivers/iio/addac/ad74413r.c", i32 1089, i32 29}
!120 = !{ptr @ad74413r_current_output_channels, !121, !"ad74413r_current_output_channels", i1 false, i1 false}
!121 = !{!"../drivers/iio/addac/ad74413r.c", i32 1094, i32 29}
!122 = !{ptr @ad74413r_current_input_channels, !123, !"ad74413r_current_input_channels", i1 false, i1 false}
!123 = !{!"../drivers/iio/addac/ad74413r.c", i32 1103, i32 29}
!124 = !{ptr @ad74413r_resistance_input_channels, !125, !"ad74413r_resistance_input_channels", i1 false, i1 false}
!125 = !{!"../drivers/iio/addac/ad74413r.c", i32 1107, i32 29}
!126 = !{ptr @ad74413r_digital_input_channels, !127, !"ad74413r_digital_input_channels", i1 false, i1 false}
!127 = !{!"../drivers/iio/addac/ad74413r.c", i32 1111, i32 29}
!128 = !{ptr @ad74413r_debounce_map, !129, !"ad74413r_debounce_map", i1 false, i1 false}
!129 = !{!"../drivers/iio/addac/ad74413r.c", i32 237, i32 27}
!130 = !{ptr @ad74413r_buffer_ops, !131, !"ad74413r_buffer_ops", i1 false, i1 false}
!131 = !{!"../drivers/iio/addac/ad74413r.c", i32 1037, i32 42}
!132 = !{ptr @ad74413r_dt_id, !133, !"ad74413r_dt_id", i1 false, i1 false}
!133 = !{!"../drivers/iio/addac/ad74413r.c", i32 1447, i32 34}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/addac/ad74413r.c", i32 1439, i32 10}
!136 = !{ptr @ad74412r_chip_info_data, !137, !"ad74412r_chip_info_data", i1 false, i1 false}
!137 = !{!"../drivers/iio/addac/ad74413r.c", i32 1437, i32 40}
!138 = !{ptr @ad74413r_chip_info_data, !139, !"ad74413r_chip_info_data", i1 false, i1 false}
!139 = !{!"../drivers/iio/addac/ad74413r.c", i32 1442, i32 40}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
!150 = !{i8 0, i8 2}
!151 = !{!"branch_weights", i32 1, i32 2000}
