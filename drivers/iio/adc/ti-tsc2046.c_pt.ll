; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-tsc2046.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-tsc2046.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tsc2046_adc_dcfg = type { ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tsc2046_adc_priv = type { ptr, ptr, ptr, %struct.hrtimer, %struct.spinlock, i32, %struct.spi_transfer, %struct.spi_message, %struct.anon.72, %struct.mutex, [8 x %struct.tsc2046_adc_group_layout], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [8 x %struct.tsc2046_adc_ch_cfg] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.anon.72 = type { [8 x i16], i64 }
%struct.tsc2046_adc_group_layout = type { i32, i32, i32 }
%struct.tsc2046_adc_ch_cfg = type { i32, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.tsc2046_adc_atom = type <{ i8, i16 }>

@__initcall__kmod_ti_tsc2046__245_708_tsc2046_adc_driver_init6 = internal global ptr @tsc2046_adc_driver_init, section ".initcall6.init", align 4
@tsc2046_adc_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @tsc2046_adc_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads7950_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tsc2046_adc_driver_exit = internal global ptr @tsc2046_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [57 x i8] c"ti_tsc2046.author=Oleksij Rempel <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [38 x i8] c"ti_tsc2046.description=TI TSC2046 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [43 x i8] c"ti_tsc2046.file=drivers/iio/adc/ti-tsc2046\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [26 x i8] c"ti_tsc2046.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsc2046\00", [24 x i8] zeroinitializer }, align 32
@ads7950_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tsc2046e-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tsc2046_adc_dcfg_tsc2046e }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SPI max_speed_hz is too high: %d Hz. Max supported freq is %zu Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tsc2046_adc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/ti-tsc2046.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe._entry_ptr = internal global ptr @tsc2046_adc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error in SPI setup\0A\00", [44 x i8] zeroinitializer }, align 32
@tsc2046_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsc2046_adc_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->slock\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"touchscreen-%s\00", [17 x i8] zeroinitializer }, align 32
@tsc2046_adc_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @tsc2046_adc_set_trigger_state, ptr @tsc2046_adc_reenable_trigger, ptr null }, [20 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->trig_lock\00", [47 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 678, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe._entry_ptr.13 = internal global ptr @tsc2046_adc_probe._entry.11, section ".printk_index", align 4
@tsc2046_adc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 685, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to setup triggered buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@tsc2046_adc_probe._entry_ptr.16 = internal global ptr @tsc2046_adc_probe._entry.14, section ".printk_index", align 4
@tsc2046_adc_update_scan_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 403, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"The scan interval (%d) is less then calculated scan time (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tsc2046_adc_update_scan_mode\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tsc2046_adc_update_scan_mode._entry_ptr = internal global ptr @tsc2046_adc_update_scan_mode._entry, section ".printk_index", align 4
@tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti_tsc2046\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tsc2046_adc_time_to_count\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Effective speed %u, time per bit: %u, count bits: %u, count samples: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@tsc2046_adc_parse_fwnode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid reg on %pfw, err: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tsc2046_adc_parse_fwnode\00", [39 x i8] zeroinitializer }, align 32
@tsc2046_adc_parse_fwnode._entry_ptr = internal global ptr @tsc2046_adc_parse_fwnode._entry, section ".printk_index", align 4
@tsc2046_adc_parse_fwnode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%pfw: Unsupported reg value: %i, max supported is: %zu.\0A\00", [39 x i8] zeroinitializer }, align 32
@tsc2046_adc_parse_fwnode._entry_ptr.28 = internal global ptr @tsc2046_adc_parse_fwnode._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"settling-time-us\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oversampling-ratio\00", [45 x i8] zeroinitializer }, align 32
@tsc2046_adc_read_one._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tsc2046_adc_read_one = private unnamed_addr constant [21 x i8] c"tsc2046_adc_read_one\00", align 1
@tsc2046_adc_read_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.tsc2046_adc_read_one, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SPI transfer failed %pe\0A\00", [39 x i8] zeroinitializer }, align 32
@tsc2046_adc_read_one._entry_ptr = internal global ptr @tsc2046_adc_read_one._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tsc2046_adc_scan._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tsc2046_adc_scan = private unnamed_addr constant [17 x i8] c"tsc2046_adc_scan\00", align 1
@tsc2046_adc_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.tsc2046_adc_scan, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPI transfer failed: %pe\0A\00", [38 x i8] zeroinitializer }, align 32
@tsc2046_adc_scan._entry_ptr = internal global ptr @tsc2046_adc_scan._entry, section ".printk_index", align 4
@tsc2046_adc_scan._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tsc2046_adc_scan._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.tsc2046_adc_scan, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to push scan buffer %pe\0A\00", [32 x i8] zeroinitializer }, align 32
@tsc2046_adc_scan._entry_ptr.37 = internal global ptr @tsc2046_adc_scan._entry.35, section ".printk_index", align 4
@tsc2046_adc_dcfg_tsc2046e = internal constant { %struct.tsc2046_adc_dcfg, [24 x i8] } { %struct.tsc2046_adc_dcfg { ptr @tsc2046_adc_channels, i32 9 }, [24 x i8] zeroinitializer }, align 32
@tsc2046_adc_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.71 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"#name\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"tsc2046_adc_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 701, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 703, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"ads7950_of_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 695, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 619, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 633, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"tsc2046_adc_info\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 410, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 656, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 663, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"tsc2046_adc_trigger_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 503, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 671, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 678, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 685, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 402, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 216, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 585, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 587, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 593, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 598, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 602, i32 41 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 266, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 346, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 357, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [26 x i8] c"tsc2046_adc_dcfg_tsc2046e\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 199, i32 38 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"tsc2046_adc_channels\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [32 x i8] c"../drivers/iio/adc/ti-tsc2046.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 197, i32 8 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_tsc2046_adc_driver_exit, ptr @__initcall__kmod_ti_tsc2046__245_708_tsc2046_adc_driver_init6, ptr @tsc2046_adc_driver_exit, ptr @tsc2046_adc_parse_fwnode._entry, ptr @tsc2046_adc_parse_fwnode._entry.26, ptr @tsc2046_adc_parse_fwnode._entry_ptr, ptr @tsc2046_adc_parse_fwnode._entry_ptr.28, ptr @tsc2046_adc_probe._entry, ptr @tsc2046_adc_probe._entry.11, ptr @tsc2046_adc_probe._entry.14, ptr @tsc2046_adc_probe._entry_ptr, ptr @tsc2046_adc_probe._entry_ptr.13, ptr @tsc2046_adc_probe._entry_ptr.16, ptr @tsc2046_adc_read_one._entry, ptr @tsc2046_adc_read_one._entry_ptr, ptr @tsc2046_adc_scan._entry, ptr @tsc2046_adc_scan._entry.35, ptr @tsc2046_adc_scan._entry_ptr, ptr @tsc2046_adc_scan._entry_ptr.37, ptr @tsc2046_adc_update_scan_mode._entry, ptr @tsc2046_adc_update_scan_mode._entry_ptr, ptr @tsc2046_adc_driver, ptr @.str, ptr @ads7950_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tsc2046_adc_info, ptr @tsc2046_adc_probe.__key, ptr @.str.7, ptr @.str.8, ptr @tsc2046_adc_trigger_ops, ptr @tsc2046_adc_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @tsc2046_adc_read_one._rs, ptr @.str.31, ptr @.str.32, ptr @tsc2046_adc_scan._rs, ptr @.str.33, ptr @tsc2046_adc_scan._rs.34, ptr @.str.36, ptr @tsc2046_adc_dcfg_tsc2046e, ptr @tsc2046_adc_channels, ptr @.str.38], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7950_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_update_scan_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_parse_fwnode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_parse_fwnode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_read_one._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_read_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_scan._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_scan._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_scan._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_dcfg_tsc2046e to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2046_adc_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tsc2046_adc_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsc2046_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tsc2046_adc_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_probe(ptr noundef %spi) #2 align 64 {
entry:
  %stl.i = alloca i32, align 4
  %overs.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %1)
  %cmp = icmp ugt i32 %1, 3000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef 3000000) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 8
  %and = and i32 %4, -4
  store i32 %and, ptr %mode, align 8
  %call6 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call6, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call11 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 584) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %dcfg16 = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dcfg16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %dcfg16, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %6, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 15
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %name, align 8
  %10 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %call11, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %channels18 = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 13
  %13 = ptrtoint ptr %channels18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %channels18, align 8
  %num_channels = getelementptr inbounds %struct.tsc2046_adc_dcfg, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels, align 4
  %num_channels19 = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_channels19, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tsc2046_adc_info, ptr %info, align 8
  %18 = load ptr, ptr %6, align 8
  %arrayidx.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx.i, align 4
  %oversampling_ratio.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 0, i32 1
  %20 = ptrtoint ptr %oversampling_ratio.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %oversampling_ratio.i, align 4
  %arrayidx.1.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx.1.i, align 4
  %oversampling_ratio.1.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 1, i32 1
  %22 = ptrtoint ptr %oversampling_ratio.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %oversampling_ratio.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx.2.i, align 4
  %oversampling_ratio.2.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 2, i32 1
  %24 = ptrtoint ptr %oversampling_ratio.2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %oversampling_ratio.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx.3.i, align 4
  %oversampling_ratio.3.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 3, i32 1
  %26 = ptrtoint ptr %oversampling_ratio.3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %oversampling_ratio.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx.4.i, align 4
  %oversampling_ratio.4.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 4, i32 1
  %28 = ptrtoint ptr %oversampling_ratio.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %oversampling_ratio.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 5
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx.5.i, align 4
  %oversampling_ratio.5.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 5, i32 1
  %30 = ptrtoint ptr %oversampling_ratio.5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %oversampling_ratio.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 6
  %31 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %arrayidx.6.i, align 4
  %oversampling_ratio.6.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 6, i32 1
  %32 = ptrtoint ptr %oversampling_ratio.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %oversampling_ratio.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx.7.i, align 4
  %oversampling_ratio.7.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 7, i32 1
  %34 = ptrtoint ptr %oversampling_ratio.7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %oversampling_ratio.7.i, align 4
  %call.i = tail call ptr @device_get_next_child_node(ptr noundef %18, ptr noundef null) #5
  %tobool.not57.i = icmp eq ptr %call.i, null
  br i1 %tobool.not57.i, label %if.end14.tsc2046_adc_parse_fwnode.exit_crit_edge, label %if.end14.for.body5.i_crit_edge

if.end14.for.body5.i_crit_edge:                   ; preds = %if.end14
  br label %for.body5.i

if.end14.tsc2046_adc_parse_fwnode.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_parse_fwnode.exit

for.body5.i:                                      ; preds = %cleanup.i.for.body5.i_crit_edge, %if.end14.for.body5.i_crit_edge
  %child.058.i = phi ptr [ %call33.i, %cleanup.i.for.body5.i_crit_edge ], [ %call.i, %if.end14.for.body5.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stl.i) #5
  %35 = ptrtoint ptr %stl.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %stl.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %overs.i) #5
  %36 = ptrtoint ptr %overs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %overs.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %reg.i, align 4, !annotation !104
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.058.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %reg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = inttoptr i32 %call.i.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef nonnull %child.058.i, ptr noundef nonnull %38) #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body5.i
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cmp9.i = icmp ugt i32 %40, 7
  br i1 %cmp9.i, label %do.end13.i, label %if.end14.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.27, ptr noundef nonnull %child.058.i, i32 noundef %40, i32 noundef 8) #8
  br label %cleanup.i

if.end14.i:                                       ; preds = %if.end.i
  %call.i54.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.058.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %stl.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool16.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %stl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stl.i, align 4
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg.i, align 4
  %arrayidx19.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 %44
  %45 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %arrayidx19.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end21.i_crit_edge
  %call.i55.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.058.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %overs.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool23.not.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end21.i.cleanup.i_crit_edge

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %overs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %overs.i, align 4
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg.i, align 4
  %oversampling_ratio27.i = getelementptr %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 21, i32 %49, i32 1
  %50 = ptrtoint ptr %oversampling_ratio27.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %oversampling_ratio27.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then24.i, %if.end21.i.cleanup.i_crit_edge, %do.end13.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %overs.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stl.i) #5
  %call33.i = call ptr @device_get_next_child_node(ptr noundef %18, ptr noundef nonnull %child.058.i) #5
  %tobool.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool.not.i, label %cleanup.i.tsc2046_adc_parse_fwnode.exit_crit_edge, label %cleanup.i.for.body5.i_crit_edge

cleanup.i.for.body5.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i

cleanup.i.tsc2046_adc_parse_fwnode.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_parse_fwnode.exit

tsc2046_adc_parse_fwnode.exit:                    ; preds = %cleanup.i.tsc2046_adc_parse_fwnode.exit_crit_edge, %if.end14.tsc2046_adc_parse_fwnode.exit_crit_edge
  %call20 = call fastcc i32 @tsc2046_adc_setup_spi_msg(ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body24, label %tsc2046_adc_parse_fwnode.exit.cleanup_crit_edge

tsc2046_adc_parse_fwnode.exit.cleanup_crit_edge:  ; preds = %tsc2046_adc_parse_fwnode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body24:                                        ; preds = %tsc2046_adc_parse_fwnode.exit
  %slock = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 9
  call void @__mutex_init(ptr noundef %slock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tsc2046_adc_probe.__key) #5
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 8
  %call.i122 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %52, ptr noundef nonnull @tsc2046_adc_irq, ptr noundef null, i32 noundef 524288, ptr noundef %54, ptr noundef nonnull %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool29.not = icmp eq i32 %call.i122, 0
  br i1 %tobool29.not, label %if.end31, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %do.body24
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name, align 8
  %call33 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %spi, ptr noundef nonnull @.str.8, ptr noundef %56) #5
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %trig37 = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 2
  %57 = ptrtoint ptr %trig37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call33, ptr %trig37, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call33, i32 0, i32 4, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call11, ptr %driver_data.i.i, align 4
  %59 = ptrtoint ptr %call33 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @tsc2046_adc_trigger_ops, ptr %call33, align 8
  %trig_lock = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %trig_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @tsc2046_adc_probe.__key.9, i16 noundef signext 3) #5
  %trig_timer = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 3
  call void @hrtimer_init(ptr noundef %trig_timer, i32 noundef 1, i32 noundef 5) #5
  %function = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %6, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tsc2046_adc_trig_more, ptr %function, align 8
  %call43 = call i32 @__devm_iio_trigger_register(ptr noundef %spi, ptr noundef nonnull %call33, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end36
  %call50 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call11, ptr noundef null, ptr noundef nonnull @tsc2046_adc_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %trig37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %trig37, align 8
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %62, i32 0, i32 4
  %call.i123 = call ptr @get_device(ptr noundef %dev.i) #5
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %owner.i, align 4
  call void @__module_get(ptr noundef %64) #5
  %trig59 = getelementptr inbounds %struct.iio_dev, ptr %call11, i32 0, i32 10
  %65 = ptrtoint ptr %trig59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %trig59, align 4
  %call60 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end55, %do.end48, %if.end31.cleanup_crit_edge, %do.body24.cleanup_crit_edge, %tsc2046_adc_parse_fwnode.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %if.then8 ], [ %call43, %do.end48 ], [ %call50, %do.end55 ], [ %call60, %if.end56 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call20, %tsc2046_adc_parse_fwnode.exit.cleanup_crit_edge ], [ %call.i122, %do.body24.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsc2046_adc_setup_spi_msg(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 3, i32 noundef 3520) #5
  %tx_one = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %tx_one to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %tx_one, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %call.i79 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 3, i32 noundef 3520) #5
  %rx_one = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 13
  %5 = ptrtoint ptr %rx_one to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i79, ptr %rx_one, align 4
  %tobool6.not = icmp eq ptr %call.i79, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %effective_speed_hz = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 84)
  %8 = ptrtoint ptr %tx_one to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_one, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %9, align 1
  %11 = load ptr, ptr %tx_one, align 8
  %data.i = getelementptr inbounds %struct.tsc2046_adc_atom, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %data.i, align 1
  %13 = load ptr, ptr %tx_one, align 8
  %14 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %xfer.i, align 4
  %15 = ptrtoint ptr %rx_one to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_one, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %17 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %len.i, align 4
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end8.spi_message_init_with_transfers.exit.i_crit_edge

if.end8.spi_message_init_with_transfers.exit.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_init_with_transfers.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_init_with_transfers.exit.i

spi_message_init_with_transfers.exit.i:           ; preds = %if.end.i.i.i.i.i, %if.end8.spi_message_init_with_transfers.exit.i_crit_edge
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %call3.i = call i32 @spi_sync(ptr noundef %30, ptr noundef nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %do.body.i

do.body.i:                                        ; preds = %spi_message_init_with_transfers.exit.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @tsc2046_adc_read_one._rs, ptr noundef nonnull @__func__.tsc2046_adc_read_one) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body.i.tsc2046_adc_read_one.exit_crit_edge, label %do.end.i

do.body.i.tsc2046_adc_read_one.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_read_one.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %33 = inttoptr i32 %call3.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.32, ptr noundef nonnull %33) #8
  br label %tsc2046_adc_read_one.exit

if.end12.i:                                       ; preds = %spi_message_init_with_transfers.exit.i
  %tobool13.not.i = icmp eq ptr %effective_speed_hz, null
  br i1 %tobool13.not.i, label %if.end12.i.tsc2046_adc_read_one.exit.thread_crit_edge, label %if.then14.i

if.end12.i.tsc2046_adc_read_one.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_read_one.exit.thread

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %effective_speed_hz15.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 13
  %34 = ptrtoint ptr %effective_speed_hz15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %effective_speed_hz15.i, align 4
  %36 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %effective_speed_hz, align 4
  br label %tsc2046_adc_read_one.exit.thread

tsc2046_adc_read_one.exit.thread:                 ; preds = %if.then14.i, %if.end12.i.tsc2046_adc_read_one.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  br label %if.end11

tsc2046_adc_read_one.exit:                        ; preds = %do.end.i, %do.body.i.tsc2046_adc_read_one.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %tsc2046_adc_read_one.exit.cleanup_crit_edge, label %tsc2046_adc_read_one.exit.if.end11_crit_edge

tsc2046_adc_read_one.exit.if.end11_crit_edge:     ; preds = %tsc2046_adc_read_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

tsc2046_adc_read_one.exit.cleanup_crit_edge:      ; preds = %tsc2046_adc_read_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %tsc2046_adc_read_one.exit.if.end11_crit_edge, %tsc2046_adc_read_one.exit.thread
  %37 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %effective_speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not = icmp eq i32 %38, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end.i.peel_crit_edge

if.end11.if.end.i.peel_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.peel

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_speed_hz, align 8
  %43 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %effective_speed_hz, align 4
  br label %if.end.i.peel

if.end.i.peel:                                    ; preds = %if.then14, %if.end11.if.end.i.peel_crit_edge
  %scan_interval_us = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 18
  %44 = ptrtoint ptr %scan_interval_us to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 10000, ptr %scan_interval_us, align 8
  %45 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %effective_speed_hz, align 4
  %sub = add i32 %46, 999999999
  %div = udiv i32 %sub, %46
  %time_per_bit_ns = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 20
  %47 = ptrtoint ptr %time_per_bit_ns to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div, ptr %time_per_bit_ns, align 8
  %arrayidx.i.peel = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 21, i32 0
  %48 = ptrtoint ptr %arrayidx.i.peel to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.peel, align 4
  %mul.i.i.peel = mul i32 %49, 1000
  %add.i.i.peel = add i32 %mul.i.i.peel, -1
  %sub.i.i.peel = add i32 %add.i.i.peel, %div
  %div.i.i.peel = udiv i32 %sub.i.i.peel, %div
  %sub3.i.i.peel = add i32 %div.i.i.peel, 23
  %div4.i.i.peel = udiv i32 %sub3.i.i.peel, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2046_adc_setup_spi_msg, %if.then.i.i.peel)) #5
          to label %for.body.peel.next [label %if.then.i.i.peel], !srcloc !105

if.then.i.i.peel:                                 ; preds = %if.end.i.peel
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %52 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %effective_speed_hz, align 4
  %54 = ptrtoint ptr %time_per_bit_ns to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %time_per_bit_ns, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef %53, i32 noundef %55, i32 noundef %div.i.i.peel, i32 noundef %div4.i.i.peel) #5
  br label %for.body.peel.next

for.body.peel.next:                               ; preds = %if.then.i.i.peel, %if.end.i.peel
  %oversampling_ratio.i.peel = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 21, i32 0, i32 1
  %56 = ptrtoint ptr %oversampling_ratio.i.peel to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %oversampling_ratio.i.peel, align 4
  %add6.i.peel = add i32 %57, %div4.i.i.peel
  %arrayidx8.i.peel = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 0
  %58 = ptrtoint ptr %arrayidx8.i.peel to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %arrayidx8.i.peel, align 4
  %count10.i.peel = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 0, i32 1
  %59 = ptrtoint ptr %count10.i.peel to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add6.i.peel, ptr %count10.i.peel, align 4
  %skip.i.peel = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 0, i32 2
  %60 = ptrtoint ptr %skip.i.peel to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div4.i.i.peel, ptr %skip.i.peel, align 4
  %mul.i.peel = mul i32 %add6.i.peel, 3
  br label %if.end.i

if.end.i:                                         ; preds = %tsc2046_adc_group_set_layout.exit.if.end.i_crit_edge, %for.body.peel.next
  %size.086 = phi i32 [ %mul.i.peel, %for.body.peel.next ], [ %add22, %tsc2046_adc_group_set_layout.exit.if.end.i_crit_edge ]
  %ch_idx.085 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %tsc2046_adc_group_set_layout.exit.if.end.i_crit_edge ]
  %sub.i = add nsw i32 %ch_idx.085, -1
  %arrayidx1.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 %sub.i
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx1.i, align 4
  %count.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 %sub.i, i32 1
  %63 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count.i, align 4
  %add.i = add i32 %64, %62
  %arrayidx.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 21, i32 %ch_idx.085
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %mul.i.i = mul i32 %66, 1000
  %67 = ptrtoint ptr %time_per_bit_ns to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %time_per_bit_ns, align 8
  %add.i.i = add i32 %mul.i.i, -1
  %sub.i.i = add i32 %add.i.i, %68
  %div.i.i = udiv i32 %sub.i.i, %68
  %sub3.i.i = add i32 %div.i.i, 23
  %div4.i.i = udiv i32 %sub3.i.i, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2046_adc_setup_spi_msg, %if.then.i.i)) #5
          to label %tsc2046_adc_group_set_layout.exit [label %if.then.i.i], !srcloc !105

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %71 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %effective_speed_hz, align 4
  %73 = ptrtoint ptr %time_per_bit_ns to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %time_per_bit_ns, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, ptr noundef %70, ptr noundef nonnull @.str.22, i32 noundef %72, i32 noundef %74, i32 noundef %div.i.i, i32 noundef %div4.i.i) #5
  br label %tsc2046_adc_group_set_layout.exit

tsc2046_adc_group_set_layout.exit:                ; preds = %if.then.i.i, %if.end.i
  %oversampling_ratio.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 21, i32 %ch_idx.085, i32 1
  %75 = ptrtoint ptr %oversampling_ratio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %oversampling_ratio.i, align 4
  %add6.i = add i32 %76, %div4.i.i
  %arrayidx8.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 %ch_idx.085
  %77 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i, ptr %arrayidx8.i, align 4
  %count10.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 %ch_idx.085, i32 1
  %78 = ptrtoint ptr %count10.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add6.i, ptr %count10.i, align 4
  %skip.i = getelementptr %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 10, i32 %ch_idx.085, i32 2
  %79 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div4.i.i, ptr %skip.i, align 4
  %mul.i = mul i32 %add6.i, 3
  %add22 = add i32 %mul.i, %size.086
  %inc = add nuw nsw i32 %ch_idx.085, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %tsc2046_adc_group_set_layout.exit.if.end.i_crit_edge, !llvm.loop !106

tsc2046_adc_group_set_layout.exit.if.end.i_crit_edge: ; preds = %tsc2046_adc_group_set_layout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.end:                                          ; preds = %tsc2046_adc_group_set_layout.exit
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %call.i81 = call noalias ptr @devm_kmalloc(ptr noundef %81, i32 noundef %add22, i32 noundef 3520) #5
  %tx = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 12
  %82 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i81, ptr %tx, align 8
  %tobool27.not = icmp eq ptr %call.i81, null
  br i1 %tobool27.not, label %for.end.cleanup_crit_edge, label %if.end29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %for.end
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %call.i82 = call noalias ptr @devm_kmalloc(ptr noundef %84, i32 noundef %add22, i32 noundef 3520) #5
  %rx = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 11
  %85 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i82, ptr %rx, align 4
  %tobool34.not = icmp eq ptr %call.i82, null
  br i1 %tobool34.not, label %if.end29.cleanup_crit_edge, label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %86 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx, align 8
  %xfer = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 6
  %88 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %xfer, align 8
  %rx_buf = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i82, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 6, i32 2
  %90 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add22, ptr %len, align 8
  %msg = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 7
  %91 = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 7, i32 1
  %92 = call ptr @memset(ptr %91, i32 0, i32 40)
  %93 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 7, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 7, i32 10
  %95 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 7, i32 10, i32 1
  %96 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 6, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg, ptr noundef %msg) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %98 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %priv, i32 0, i32 6, i32 18, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %msg, ptr %prev3.i.i.i.i, align 4
  %100 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %transfer_list.i.i, ptr %msg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i.i, %if.end36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %tsc2046_adc_read_one.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call3.i, %tsc2046_adc_read_one.exit.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.end.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trig_lock = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %trig_lock) #5
  %trig_timer = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %trig_timer) #5
  %trig_more_count = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %trig_more_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %trig_more_count, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %irq2 = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq2, align 4
  tail call void @disable_irq_nosync(i32 noundef %6) #5
  %trig = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %8) #5
  tail call void @_raw_spin_unlock(ptr noundef %trig_lock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_trig_more(ptr noundef %hrtimer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -16
  %trig_lock = getelementptr i8, ptr %hrtimer, i32 48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %trig_lock) #5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #5
  %trig_more_count = getelementptr i8, ptr %hrtimer, i32 92
  %4 = ptrtoint ptr %trig_more_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trig_more_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %trig_more_count, align 4
  %trig = getelementptr i8, ptr %hrtimer, i32 -8
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %7) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %trig_lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %slock = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %msg.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 7
  %call3.i = tail call i32 @spi_sync(ptr noundef %7, ptr noundef %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %groups.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %groups.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp113.not.i = icmp eq i32 %9, 0
  br i1 %cmp113.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rx.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 11
  %scan_buf.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 8
  br label %for.body.i

do.body.i:                                        ; preds = %entry
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @tsc2046_adc_scan._rs, ptr noundef nonnull @__func__.tsc2046_adc_scan) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %do.body.i.tsc2046_adc_scan.exit_crit_edge, label %do.end.i

do.body.i.tsc2046_adc_scan.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_scan.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = inttoptr i32 %call3.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33, ptr noundef nonnull %10) #8
  br label %tsc2046_adc_scan.exit

for.body.i:                                       ; preds = %tsc2046_adc_get_val.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %group.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %tsc2046_adc_get_val.exit.i.for.body.i_crit_edge ]
  %count.i.i = getelementptr %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 10, i32 %group.04.i, i32 1
  %11 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i.i, align 4
  %skip.i.i = getelementptr %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 10, i32 %group.04.i, i32 2
  %13 = ptrtoint ptr %skip.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skip.i.i, align 4
  %sub.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp18.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp18.i.i, label %for.body.lr.ph.i.i, label %for.body.i.tsc2046_adc_get_val.exit.i_crit_edge

for.body.i.tsc2046_adc_get_val.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_get_val.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 10, i32 %group.04.i
  %15 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx.i.i, align 4
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, %14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %val_normalized.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add3.i.i = add i32 %add.i.i, %i.020.i.i
  %data.i.i.i = getelementptr %struct.tsc2046_adc_atom, ptr %16, i32 %add3.i.i, i32 1
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %data.i.i.i, align 1
  %21 = lshr i16 %20, 3
  %22 = and i16 %21, 4095
  %conv.i.i = zext i16 %22 to i32
  %add5.i.i = add i32 %val_normalized.019.i.i, %conv.i.i
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.tsc2046_adc_get_val.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.tsc2046_adc_get_val.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_get_val.exit.i

tsc2046_adc_get_val.exit.i:                       ; preds = %for.body.i.i.tsc2046_adc_get_val.exit.i_crit_edge, %for.body.i.tsc2046_adc_get_val.exit.i_crit_edge
  %val_normalized.0.lcssa.i.i = phi i32 [ 0, %for.body.i.tsc2046_adc_get_val.exit.i_crit_edge ], [ %add5.i.i, %for.body.i.i.tsc2046_adc_get_val.exit.i_crit_edge ]
  %add6.i.i = add i32 %sub.i.i, -1
  %sub7.i.i = add i32 %add6.i.i, %val_normalized.0.lcssa.i.i
  %div.i.i = udiv i32 %sub7.i.i, %sub.i.i
  %conv8.i.i = trunc i32 %div.i.i to i16
  %arrayidx.i = getelementptr [8 x i16], ptr %scan_buf.i, i32 0, i32 %group.04.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv8.i.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw i32 %group.04.i, 1
  %24 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %groups.i, align 8
  %cmp11.i = icmp ult i32 %inc.i, %25
  br i1 %cmp11.i, label %tsc2046_adc_get_val.exit.i.for.body.i_crit_edge, label %tsc2046_adc_get_val.exit.i.for.end.i_crit_edge

tsc2046_adc_get_val.exit.i.for.end.i_crit_edge:   ; preds = %tsc2046_adc_get_val.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

tsc2046_adc_get_val.exit.i.for.body.i_crit_edge:  ; preds = %tsc2046_adc_get_val.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %tsc2046_adc_get_val.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %scan_buf13.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %5, i32 0, i32 8
  %call14.i = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %scan_timestamp.i.i, align 8, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %for.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i.i

for.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_bytes.i.i, align 4
  %div4.i.i = lshr i32 %29, 3
  %sub.i1.i = add nsw i32 %div4.i.i, -1
  %arrayidx.i2.i = getelementptr i64, ptr %scan_buf13.i, i32 %sub.i1.i
  %30 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call14.i, ptr %arrayidx.i2.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i.i, %for.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan_buf13.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp16.i = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i.i)
  %cmp17.not.i = icmp eq i32 %call.i.i, -16
  %or.cond.i = or i1 %cmp16.i, %cmp17.not.i
  br i1 %or.cond.i, label %iio_push_to_buffers_with_timestamp.exit.i.tsc2046_adc_scan.exit_crit_edge, label %do.body19.i

iio_push_to_buffers_with_timestamp.exit.i.tsc2046_adc_scan.exit_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_scan.exit

do.body19.i:                                      ; preds = %iio_push_to_buffers_with_timestamp.exit.i
  %call20.i = tail call i32 @___ratelimit(ptr noundef nonnull @tsc2046_adc_scan._rs.34, ptr noundef nonnull @__func__.tsc2046_adc_scan) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body19.i.tsc2046_adc_scan.exit_crit_edge, label %do.end25.i

do.body19.i.tsc2046_adc_scan.exit_crit_edge:      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_scan.exit

do.end25.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = inttoptr i32 %call.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef %31) #8
  br label %tsc2046_adc_scan.exit

tsc2046_adc_scan.exit:                            ; preds = %do.end25.i, %do.body19.i.tsc2046_adc_scan.exit_crit_edge, %iio_push_to_buffers_with_timestamp.exit.i.tsc2046_adc_scan.exit_crit_edge, %do.end.i, %do.body.i.tsc2046_adc_scan.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %slock) #5
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %33) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %active_scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %slock = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %slock, i32 noundef 0) #5
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp37 = icmp ult i32 %call1, 8
  br i1 %cmp37, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %time_per_bit_ns.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 20
  %effective_speed_hz.i.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 17
  %tx.i = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %tsc2046_adc_group_set_cmd.exit.for.body_crit_edge, %for.body.lr.ph
  %size.040 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %tsc2046_adc_group_set_cmd.exit.for.body_crit_edge ]
  %group.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tsc2046_adc_group_set_cmd.exit.for.body_crit_edge ]
  %ch_idx.038 = phi i32 [ %call1, %for.body.lr.ph ], [ %call4, %tsc2046_adc_group_set_cmd.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group.039)
  %tobool.not.i = icmp eq i32 %group.039, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %group.039, -1
  %arrayidx1.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 10, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i, align 4
  %count.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 10, i32 %sub.i, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %add.i = add i32 %5, %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %offset.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %for.body.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 21, i32 %ch_idx.038
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %mul.i.i = mul i32 %7, 1000
  %8 = ptrtoint ptr %time_per_bit_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time_per_bit_ns.i.i, align 8
  %add.i.i = add i32 %mul.i.i, -1
  %sub.i.i = add i32 %add.i.i, %9
  %div.i.i = udiv i32 %sub.i.i, %9
  %sub3.i.i = add i32 %div.i.i, 23
  %div4.i.i = udiv i32 %sub3.i.i, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2046_adc_update_scan_mode, %if.then.i.i)) #5
          to label %tsc2046_adc_group_set_layout.exit [label %if.then.i.i], !srcloc !105

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %effective_speed_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %effective_speed_hz.i.i, align 4
  %14 = ptrtoint ptr %time_per_bit_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time_per_bit_ns.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %13, i32 noundef %15, i32 noundef %div.i.i, i32 noundef %div4.i.i) #5
  br label %tsc2046_adc_group_set_layout.exit

tsc2046_adc_group_set_layout.exit:                ; preds = %if.then.i.i, %if.end.i
  %oversampling_ratio.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 21, i32 %ch_idx.038, i32 1
  %16 = ptrtoint ptr %oversampling_ratio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oversampling_ratio.i, align 4
  %add6.i = add i32 %17, %div4.i.i
  %arrayidx8.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 10, i32 %group.039
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %offset.0.i, ptr %arrayidx8.i, align 4
  %count10.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 10, i32 %group.039, i32 1
  %19 = ptrtoint ptr %count10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add6.i, ptr %count10.i, align 4
  %skip.i = getelementptr %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 10, i32 %group.039, i32 2
  %20 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div4.i.i, ptr %skip.i, align 4
  %mul.i = mul i32 %add6.i, 3
  %add = add i32 %mul.i, %size.040
  %ch_idx.tr.i = trunc i32 %ch_idx.038 to i8
  %21 = shl nuw nsw i8 %ch_idx.tr.i, 4
  %conv.i.i = or i8 %21, -127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add6.i)
  %cmp26.not.i = icmp eq i32 %add6.i, 1
  br i1 %cmp26.not.i, label %tsc2046_adc_group_set_layout.exit.tsc2046_adc_group_set_cmd.exit_crit_edge, label %tsc2046_adc_group_set_layout.exit.for.body.i_crit_edge

tsc2046_adc_group_set_layout.exit.for.body.i_crit_edge: ; preds = %tsc2046_adc_group_set_layout.exit
  br label %for.body.i

tsc2046_adc_group_set_layout.exit.tsc2046_adc_group_set_cmd.exit_crit_edge: ; preds = %tsc2046_adc_group_set_layout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_group_set_cmd.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %tsc2046_adc_group_set_layout.exit.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %tsc2046_adc_group_set_layout.exit.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx.i, align 8
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8.i, align 4
  %add.i34 = add i32 %25, %i.027.i
  %arrayidx2.i = getelementptr %struct.tsc2046_adc_atom, ptr %23, i32 %add.i34
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i.i, ptr %arrayidx2.i, align 1
  %inc.i = add nuw i32 %i.027.i, 1
  %27 = ptrtoint ptr %count10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count10.i, align 4
  %sub.i35 = add i32 %28, -1
  %cmp.i = icmp ult i32 %inc.i, %sub.i35
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tsc2046_adc_group_set_cmd.exit_crit_edge

for.body.i.tsc2046_adc_group_set_cmd.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tsc2046_adc_group_set_cmd.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

tsc2046_adc_group_set_cmd.exit:                   ; preds = %for.body.i.tsc2046_adc_group_set_cmd.exit_crit_edge, %tsc2046_adc_group_set_layout.exit.tsc2046_adc_group_set_cmd.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %tsc2046_adc_group_set_layout.exit.tsc2046_adc_group_set_cmd.exit_crit_edge ], [ %inc.i, %for.body.i.tsc2046_adc_group_set_cmd.exit_crit_edge ]
  %conv.i23.i = or i8 %21, -128
  %29 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx.i, align 8
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i, align 4
  %add7.i = add i32 %32, %i.0.lcssa.i
  %arrayidx8.i36 = getelementptr %struct.tsc2046_adc_atom, ptr %30, i32 %add7.i
  %33 = ptrtoint ptr %arrayidx8.i36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i23.i, ptr %arrayidx8.i36, align 1
  %inc = add i32 %group.039, 1
  %add3 = add i32 %ch_idx.038, 1
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef 8, i32 noundef %add3) #5
  %cmp = icmp ult i32 %call4, 8
  br i1 %cmp, label %tsc2046_adc_group_set_cmd.exit.for.body_crit_edge, label %tsc2046_adc_group_set_cmd.exit.for.end_crit_edge

tsc2046_adc_group_set_cmd.exit.for.end_crit_edge: ; preds = %tsc2046_adc_group_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

tsc2046_adc_group_set_cmd.exit.for.body_crit_edge: ; preds = %tsc2046_adc_group_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %tsc2046_adc_group_set_cmd.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %group.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %tsc2046_adc_group_set_cmd.exit.for.end_crit_edge ]
  %size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %tsc2046_adc_group_set_cmd.exit.for.end_crit_edge ]
  %groups = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %group.0.lcssa, ptr %groups, align 8
  %len = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %size.0.lcssa, ptr %len, align 8
  %mul = shl i32 %size.0.lcssa, 3
  %time_per_bit_ns = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 20
  %36 = ptrtoint ptr %time_per_bit_ns to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %time_per_bit_ns, align 8
  %mul5 = mul i32 %mul, %37
  %div = udiv i32 %mul5, 1000
  %time_per_scan_us = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %time_per_scan_us to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div, ptr %time_per_scan_us, align 4
  %scan_interval_us = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %1, i32 0, i32 18
  %39 = ptrtoint ptr %scan_interval_us to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_interval_us, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %div)
  %cmp7 = icmp ult i32 %40, %div
  br i1 %cmp7, label %do.end, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.17, i32 noundef %40, i32 noundef %div) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %slock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2046_adc_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %7) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq(i32 noundef %7) #5
  %trig_timer = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %trig_timer) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsc2046_adc_reenable_trigger(ptr nocapture noundef readonly %trig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %scan_interval_us = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %scan_interval_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_interval_us, align 8
  %time_per_scan_us = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %time_per_scan_us to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time_per_scan_us, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 11
  br i1 %cmp.i, label %cond.false3.i, label %if.else.i

cond.false3.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %sub) #5
  br label %do.body2

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %sub)
  %cmp5.i = icmp ult i32 %sub, 20001
  br i1 %cmp5.i, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul7.i = shl nuw nsw i32 %sub, 1
  tail call void @usleep_range_state(i32 noundef %sub, i32 noundef %mul7.i, i32 noundef 2) #5
  br label %do.body2

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nuw i32 %sub, 999
  %div.i = udiv i32 %sub.i, 1000
  tail call void @msleep(i32 noundef %div.i) #5
  br label %do.body2

do.body2:                                         ; preds = %if.else8.i, %if.then6.i, %cond.false3.i, %entry.do.body2_crit_edge
  %trig_lock = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %trig_lock) #5
  %trig_more_count = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %trig_more_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trig_more_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then8, label %do.body2.if.end13_crit_edge

do.body2.if.end13_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %scan_interval_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan_interval_us, align 8
  %sub10 = add i32 %12, 999
  %div = udiv i32 %sub10, 1000
  %trig_timer = getelementptr inbounds %struct.tsc2046_adc_priv, ptr %3, i32 0, i32 3
  %13 = zext i32 %div to i64
  %mul.i23 = mul nuw nsw i64 %13, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %trig_timer, i64 noundef %mul.i23, i64 noundef 0, i32 noundef 5) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %do.body2.if.end13_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %17) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %trig_lock, i32 noundef %call5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !72, !73, !74, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !88, !90, !92, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_ti_tsc2046__245_708_tsc2046_adc_driver_init6, !1, !"__initcall__kmod_ti_tsc2046__245_708_tsc2046_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 708, i32 1}
!2 = !{ptr @__exitcall_tsc2046_adc_driver_exit, !1, !"__exitcall_tsc2046_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author246, !4, !"__UNIQUE_ID_author246", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 710, i32 1}
!5 = !{ptr @__UNIQUE_ID_description247, !6, !"__UNIQUE_ID_description247", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 711, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 712, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 703, i32 11}
!12 = !{ptr @tsc2046_adc_driver, !13, !"tsc2046_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 701, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 619, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tsc2046_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tsc2046_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 633, i32 34}
!24 = !{ptr @tsc2046_adc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 656, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 663, i32 37}
!29 = !{ptr @tsc2046_adc_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 671, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 678, i32 3}
!34 = !{ptr @tsc2046_adc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tsc2046_adc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 685, i32 3}
!38 = !{ptr @tsc2046_adc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tsc2046_adc_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tsc2046_adc_info, !41, !"tsc2046_adc_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 410, i32 30}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 402, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tsc2046_adc_update_scan_mode._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @tsc2046_adc_update_scan_mode._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 216, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tsc2046_adc_time_to_count.__UNIQUE_ID_ddebug234, !49, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 585, i32 41}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 587, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tsc2046_adc_parse_fwnode._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tsc2046_adc_parse_fwnode._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 593, i32 4}
!62 = !{ptr @tsc2046_adc_parse_fwnode._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tsc2046_adc_parse_fwnode._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 598, i32 41}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 602, i32 41}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 266, i32 3}
!70 = !{ptr @tsc2046_adc_read_one._rs, !69, !"_rs", i1 false, i1 false}
!71 = !{ptr @__func__.tsc2046_adc_read_one, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tsc2046_adc_read_one._entry, !69, !"_entry", i1 false, i1 false}
!74 = !{ptr @tsc2046_adc_read_one._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @tsc2046_adc_trigger_ops, !76, !"tsc2046_adc_trigger_ops", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 503, i32 37}
!77 = !{ptr @tsc2046_adc_scan._rs, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 346, i32 3}
!79 = !{ptr @__func__.tsc2046_adc_scan, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tsc2046_adc_scan._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @tsc2046_adc_scan._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @tsc2046_adc_scan._rs.34, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 357, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tsc2046_adc_scan._entry.35, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tsc2046_adc_scan._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ads7950_of_table, !89, !"ads7950_of_table", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 695, i32 34}
!90 = !{ptr @tsc2046_adc_dcfg_tsc2046e, !91, !"tsc2046_adc_dcfg_tsc2046e", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 199, i32 38}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/ti-tsc2046.c", i32 197, i32 8}
!94 = !{ptr @tsc2046_adc_channels, !93, !"tsc2046_adc_channels", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148804743, i64 2148804748, i64 2148804761, i64 2148804805, i64 2148804839, i64 2148804860}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = !{i8 0, i8 2}
