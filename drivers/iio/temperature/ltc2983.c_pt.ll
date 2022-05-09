; ModuleID = '/llk/IR_all_yes/drivers/iio/temperature/ltc2983.c_pt.bc'
source_filename = "../drivers/iio/temperature/ltc2983.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ltc2983_data = type { ptr, ptr, %struct.mutex, %struct.completion, ptr, ptr, i32, i32, i16, i8, i8, [80 x i8], i32, [124 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ltc2983_sensor = type { ptr, ptr, i32, i32 }
%struct.ltc2983_thermocouple = type { %struct.ltc2983_sensor, ptr, i32, i32 }
%struct.ltc2983_rtd = type { %struct.ltc2983_sensor, ptr, i32, i32, i32, i32 }
%struct.ltc2983_thermistor = type { %struct.ltc2983_sensor, ptr, i32, i32, i32 }
%struct.ltc2983_diode = type { %struct.ltc2983_sensor, i32, i32, i32 }
%struct.ltc2983_rsense = type { %struct.ltc2983_sensor, i32 }
%struct.ltc2983_adc = type { %struct.ltc2983_sensor, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.ltc2983_custom_sensor = type { ptr, i32, i8, i8 }

@__initcall__kmod_ltc2983__433_1575_ltc2983_driver_init6 = internal global ptr @ltc2983_driver_init, section ".initcall6.init", align 4
@ltc2983_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ltc2983_id_table, ptr @ltc2983_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc2983_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltc2983_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ltc2983_driver_exit = internal global ptr @ltc2983_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author434 = internal constant [44 x i8] c"ltc2983.author=Nuno Sa <nuno.sa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description435 = internal constant [67 x i8] c"ltc2983.description=Analog Devices LTC2983 SPI Temperature sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file436 = internal constant [45 x i8] c"ltc2983.file=drivers/iio/temperature/ltc2983\00", section ".modinfo", align 1
@__UNIQUE_ID_license437 = internal constant [20 x i8] c"ltc2983.license=GPL\00", section ".modinfo", align 1
@ltc2983_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ltc2983\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc2983\00", [24 x i8] zeroinitializer }, align 32
@ltc2983_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ltc2983\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ltc2983_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ltc2983_suspend, ptr @ltc2983_resume, ptr @ltc2983_suspend, ptr @ltc2983_resume, ptr @ltc2983_suspend, ptr @ltc2983_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ltc2983_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc2983_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 24, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc2983_reg_table, ptr @ltc2983_reg_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 3, i32 2, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ltc2983:1488:(&ltc2983_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@ltc2983_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2983_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/temperature/ltc2983.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2983_probe._entry_ptr = internal global ptr @ltc2983_probe._entry, section ".printk_index", align 4
@ltc2983_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ltc2983_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request an irq, %d\00", [35 x i8] zeroinitializer }, align 32
@ltc2983_probe._entry_ptr.11 = internal global ptr @ltc2983_probe._entry.9, section ".printk_index", align 4
@ltc2983_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ltc2983_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltc2983_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ltc2983_reg_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @ltc2983_reg_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ltc2983_reg_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 16, i32 95 }, %struct.regmap_range { i32 240, i32 240 }, %struct.regmap_range { i32 244, i32 247 }, %struct.regmap_range { i32 255, i32 255 }, %struct.regmap_range { i32 512, i32 591 }, %struct.regmap_range { i32 592, i32 975 }], [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,mux-delay-config-us\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,filter-notch-freq\00", [42 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 1279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"At least one channel must be given!\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ltc2983_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr = internal global ptr @ltc2983_parse_dt._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.4, i32 1294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg property must given for child nodes\0A\00", [55 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr.20 = internal global ptr @ltc2983_parse_dt._entry.18, section ".printk_index", align 4
@ltc2983_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.4, i32 1303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"chan:%d must be from 1 to 20\0A\00", [34 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr.23 = internal global ptr @ltc2983_parse_dt._entry.21, section ".printk_index", align 4
@ltc2983_parse_dt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.4, i32 1307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chan:%d already in use\0A\00", [40 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr.26 = internal global ptr @ltc2983_parse_dt._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,sensor-type\00", [16 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.4, i32 1315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"adi,sensor-type property must given for child nodes\0A\00", [43 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr.30 = internal global ptr @ltc2983_parse_dt._entry.28, section ".printk_index", align 4
@ltc2983_parse_dt.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.31, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Create new sensor, type %u, chann %u\00", [59 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.4, i32 1345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown sensor type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr.34 = internal global ptr @ltc2983_parse_dt._entry.32, section ".printk_index", align 4
@ltc2983_parse_dt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.4, i32 1352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create sensor %ld\00", [36 x i8] zeroinitializer }, align 32
@ltc2983_parse_dt._entry_ptr.37 = internal global ptr @ltc2983_parse_dt._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adi,single-ended\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adi,sensor-oc-current-microamp\00", [33 x i8] zeroinitializer }, align 32
@ltc2983_thermocouple_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid open circuit current:%u\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ltc2983_thermocouple_new\00", [39 x i8] zeroinitializer }, align 32
@ltc2983_thermocouple_new._entry_ptr = internal global ptr @ltc2983_thermocouple_new._entry, section ".printk_index", align 4
@ltc2983_thermocouple_new._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid chann:%d for differential thermocouple\00", [49 x i8] zeroinitializer }, align 32
@ltc2983_thermocouple_new._entry_ptr.44 = internal global ptr @ltc2983_thermocouple_new._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adi,cold-junction-handle\00", [39 x i8] zeroinitializer }, align 32
@ltc2983_thermocouple_new._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Property reg must be given\0A\00", [36 x i8] zeroinitializer }, align 32
@ltc2983_thermocouple_new._entry_ptr.48 = internal global ptr @ltc2983_thermocouple_new._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,custom-thermocouple\00", [40 x i8] zeroinitializer }, align 32
@__ltc2983_custom_sensor_new._entry = internal constant %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 401, ptr @.str.5, ptr @.str.6 }, align 1
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Number of entries either 0 or not even\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__ltc2983_custom_sensor_new\00", [36 x i8] zeroinitializer }, align 32
@__ltc2983_custom_sensor_new._entry_ptr = internal global ptr @__ltc2983_custom_sensor_new._entry, section ".printk_index", align 4
@__ltc2983_custom_sensor_new._entry.52 = internal constant %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 413, ptr @.str.5, ptr @.str.6 }, align 1
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Steinhart sensors size(%zu) must be 24\00", [57 x i8] zeroinitializer }, align 32
@__ltc2983_custom_sensor_new._entry_ptr.54 = internal global ptr @__ltc2983_custom_sensor_new._entry.52, section ".printk_index", align 4
@__ltc2983_custom_sensor_new._entry.55 = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 421, ptr @.str.5, ptr @.str.6 }, align 1
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No space left(%d) for new custom sensor(%zu)\00", [51 x i8] zeroinitializer }, align 32
@__ltc2983_custom_sensor_new._entry_ptr.57 = internal global ptr @__ltc2983_custom_sensor_new._entry.55, section ".printk_index", align 4
@__ltc2983_fault_handler._entry = internal constant %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, align 1
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid conversion: Sensor HARD fault\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__ltc2983_fault_handler\00", [40 x i8] zeroinitializer }, align 32
@__ltc2983_fault_handler._entry_ptr = internal global ptr @__ltc2983_fault_handler._entry, section ".printk_index", align 4
@__ltc2983_fault_handler._entry.60 = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 306, ptr @.str.62, ptr @.str.6 }, align 1
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Suspicious conversion: Sensor SOFT fault\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__ltc2983_fault_handler._entry_ptr.63 = internal global ptr @__ltc2983_fault_handler._entry.60, section ".printk_index", align 4
@__ltc2983_chan_custom_sensor_assign._entry = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, align 1
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Not space left(%d) for new custom sensor(%zu)\00", [50 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"__ltc2983_chan_custom_sensor_assign\00", [60 x i8] zeroinitializer }, align 32
@__ltc2983_chan_custom_sensor_assign._entry_ptr = internal global ptr @__ltc2983_chan_custom_sensor_assign._entry, section ".printk_index", align 4
@__ltc2983_chan_custom_sensor_assign.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Assign custom sensor, reg:0x%04X, off:%d, sz:%zu\00", [47 x i8] zeroinitializer }, align 32
@__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__ltc2983_chan_assign_common\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Assign reg:0x%04X, val:0x%08X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,rsense-handle\00", [46 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 708, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Property adi,rsense-handle missing or invalid\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ltc2983_rtd_new\00", [16 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr = internal global ptr @ltc2983_rtd_new._entry, section ".printk_index", align 4
@ltc2983_rtd_new._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.71, ptr @.str.4, i32 714, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.73 = internal global ptr @ltc2983_rtd_new._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adi,number-of-wires\00", [44 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.4, i32 735, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid number of wires:%u\0A\00", [36 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.77 = internal global ptr @ltc2983_rtd_new._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adi,rsense-share\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,current-rotate\00", [45 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.71, ptr @.str.4, i32 746, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Rotation not allowed for 2/3 Wire RTDs\00", [57 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.82 = internal global ptr @ltc2983_rtd_new._entry.80, section ".printk_index", align 4
@ltc2983_rtd_new._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.71, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid rsense chann:%d to use in kelvin rsense\00", [48 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.85 = internal global ptr @ltc2983_rtd_new._entry.83, section ".printk_index", align 4
@ltc2983_rtd_new._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.71, ptr @.str.4, i32 784, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid chann:%d for the rtd config\00", [60 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.88 = internal global ptr @ltc2983_rtd_new._entry.86, section ".printk_index", align 4
@ltc2983_rtd_new._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.71, ptr @.str.4, i32 793, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid chann:%d for RTD\00", [39 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.91 = internal global ptr @ltc2983_rtd_new._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,custom-rtd\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adi,excitation-current-microamp\00", [32 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.71, ptr @.str.4, i32 849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid value for excitation current(%u)\00", [55 x i8] zeroinitializer }, align 32
@ltc2983_rtd_new._entry_ptr.96 = internal global ptr @ltc2983_rtd_new._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi,rtd-curve\00", [18 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.98, ptr @.str.4, i32 881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ltc2983_thermistor_new\00", [41 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry_ptr = internal global ptr @ltc2983_thermistor_new._entry, section ".printk_index", align 4
@ltc2983_thermistor_new._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.4, i32 887, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rsense channel must be configured...\0A\00", [58 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry_ptr.101 = internal global ptr @ltc2983_thermistor_new._entry.99, section ".printk_index", align 4
@ltc2983_thermistor_new._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.4, i32 907, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid chann:%d for differential thermistor\00", [51 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry_ptr.104 = internal global ptr @ltc2983_thermistor_new._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,custom-steinhart\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,custom-thermistor\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adi,excitation-current-nanoamp\00", [33 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.98, ptr @.str.4, i32 954, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Auto Range not allowed for custom sensors\0A\00", [53 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry_ptr.110 = internal global ptr @ltc2983_thermistor_new._entry.108, section ".printk_index", align 4
@ltc2983_thermistor_new._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.98, ptr @.str.4, i32 996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ltc2983_thermistor_new._entry_ptr.112 = internal global ptr @ltc2983_thermistor_new._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adi,three-conversion-cycles\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,average-on\00", [17 x i8] zeroinitializer }, align 32
@ltc2983_diode_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.115, ptr @.str.4, i32 1036, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ltc2983_diode_new\00", [46 x i8] zeroinitializer }, align 32
@ltc2983_diode_new._entry_ptr = internal global ptr @ltc2983_diode_new._entry, section ".printk_index", align 4
@ltc2983_diode_new._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.115, ptr @.str.4, i32 1062, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ltc2983_diode_new._entry_ptr.117 = internal global ptr @ltc2983_diode_new._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,ideal-factor-value\00", [41 x i8] zeroinitializer }, align 32
@ltc2983_r_sense_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.4, i32 1090, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid chann:%d for r_sense\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltc2983_r_sense_new\00", [44 x i8] zeroinitializer }, align 32
@ltc2983_r_sense_new._entry_ptr = internal global ptr @ltc2983_r_sense_new._entry, section ".printk_index", align 4
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,rsense-val-milli-ohms\00", [38 x i8] zeroinitializer }, align 32
@ltc2983_r_sense_new._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.120, ptr @.str.4, i32 1096, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Property adi,rsense-val-milli-ohms missing\0A\00", [52 x i8] zeroinitializer }, align 32
@ltc2983_r_sense_new._entry_ptr.124 = internal global ptr @ltc2983_r_sense_new._entry.122, section ".printk_index", align 4
@ltc2983_adc_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.4, i32 1129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid chan:%d for differential adc\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ltc2983_adc_new\00", [16 x i8] zeroinitializer }, align 32
@ltc2983_adc_new._entry_ptr = internal global ptr @ltc2983_adc_new._entry, section ".printk_index", align 4
@ltc2983_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 1380, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device startup timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2983_setup\00", [18 x i8] zeroinitializer }, align 32
@ltc2983_setup._entry_ptr = internal global ptr @ltc2983_setup._entry, section ".printk_index", align 4
@ltc2983_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.4, i32 1200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid chan address:%ld\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ltc2983_read_raw\00", [47 x i8] zeroinitializer }, align 32
@ltc2983_read_raw._entry_ptr = internal global ptr @ltc2983_read_raw._entry, section ".printk_index", align 4
@ltc2983_chan_read.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.4, ptr @.str.132, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ltc2983_chan_read\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Start conversion on chan:%d, status:%02X\0A\00", [54 x i8] zeroinitializer }, align 32
@ltc2983_chan_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.4, i32 1165, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Conversion timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@ltc2983_chan_read._entry_ptr = internal global ptr @ltc2983_chan_read._entry, section ".printk_index", align 4
@ltc2983_chan_read._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.131, ptr @.str.4, i32 1178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid conversion detected\0A\00", [35 x i8] zeroinitializer }, align 32
@ltc2983_chan_read._entry_ptr.136 = internal global ptr @ltc2983_chan_read._entry.134, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.137 = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 10, i64 25, i64 50, i64 100, i64 250, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.138 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 250, i64 500, i64 1000, i64 5000, i64 10000, i64 25000, i64 50000, i64 100000, i64 250000, i64 500000, i64 1000000]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 20, i64 40, i64 80]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"ltc2983_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1565, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"ltc2983_id_table\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1553, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1567, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"ltc2983_of_match\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1559, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"ltc2983_pm_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1551, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"ltc2983_regmap_config\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1460, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1488, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1490, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1494, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1503, i32 48 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1520, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"ltc2983_iio_info\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1469, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"ltc2983_reg_table\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1451, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c"ltc2983_reg_ranges\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1438, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 87, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1271, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1274, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1279, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1292, i32 37 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1294, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1302, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1307, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1311, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1314, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1319, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1345, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1351, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 614, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 617, i32 36 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 638, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 648, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 654, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 665, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 673, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 401, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 412, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 420, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 302, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 306, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 357, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 373, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 320, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 706, i32 36 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 708, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 714, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 718, i32 36 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 735, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 741, i32 35 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 743, i32 36 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 745, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 774, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 783, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 792, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 803, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 815, i32 36 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 847, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 855, i32 30 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 881, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 887, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 905, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 919, i32 15 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 921, i32 15 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 937, i32 36 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 953, i32 5 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 994, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1025, i32 35 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1028, i32 35 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1034, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1060, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1067, i32 30 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1089, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1094, i32 36 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1096, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1128, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1380, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1199, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1148, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1165, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.531 = private constant [37 x i8] c"../drivers/iio/temperature/ltc2983.c\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1178, i32 3 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author434, ptr @__UNIQUE_ID_description435, ptr @__UNIQUE_ID_file436, ptr @__UNIQUE_ID_license437, ptr @__exitcall_ltc2983_driver_exit, ptr @__initcall__kmod_ltc2983__433_1575_ltc2983_driver_init6, ptr @__ltc2983_chan_custom_sensor_assign._entry, ptr @__ltc2983_chan_custom_sensor_assign._entry_ptr, ptr @__ltc2983_custom_sensor_new._entry, ptr @__ltc2983_custom_sensor_new._entry.52, ptr @__ltc2983_custom_sensor_new._entry.55, ptr @__ltc2983_custom_sensor_new._entry_ptr, ptr @__ltc2983_custom_sensor_new._entry_ptr.54, ptr @__ltc2983_custom_sensor_new._entry_ptr.57, ptr @__ltc2983_fault_handler._entry, ptr @__ltc2983_fault_handler._entry.60, ptr @__ltc2983_fault_handler._entry_ptr, ptr @__ltc2983_fault_handler._entry_ptr.63, ptr @ltc2983_adc_new._entry, ptr @ltc2983_adc_new._entry_ptr, ptr @ltc2983_chan_read._entry, ptr @ltc2983_chan_read._entry.134, ptr @ltc2983_chan_read._entry_ptr, ptr @ltc2983_chan_read._entry_ptr.136, ptr @ltc2983_diode_new._entry, ptr @ltc2983_diode_new._entry.116, ptr @ltc2983_diode_new._entry_ptr, ptr @ltc2983_diode_new._entry_ptr.117, ptr @ltc2983_driver_exit, ptr @ltc2983_parse_dt._entry, ptr @ltc2983_parse_dt._entry.18, ptr @ltc2983_parse_dt._entry.21, ptr @ltc2983_parse_dt._entry.24, ptr @ltc2983_parse_dt._entry.28, ptr @ltc2983_parse_dt._entry.32, ptr @ltc2983_parse_dt._entry.35, ptr @ltc2983_parse_dt._entry_ptr, ptr @ltc2983_parse_dt._entry_ptr.20, ptr @ltc2983_parse_dt._entry_ptr.23, ptr @ltc2983_parse_dt._entry_ptr.26, ptr @ltc2983_parse_dt._entry_ptr.30, ptr @ltc2983_parse_dt._entry_ptr.34, ptr @ltc2983_parse_dt._entry_ptr.37, ptr @ltc2983_probe._entry, ptr @ltc2983_probe._entry.9, ptr @ltc2983_probe._entry_ptr, ptr @ltc2983_probe._entry_ptr.11, ptr @ltc2983_r_sense_new._entry, ptr @ltc2983_r_sense_new._entry.122, ptr @ltc2983_r_sense_new._entry_ptr, ptr @ltc2983_r_sense_new._entry_ptr.124, ptr @ltc2983_read_raw._entry, ptr @ltc2983_read_raw._entry_ptr, ptr @ltc2983_rtd_new._entry, ptr @ltc2983_rtd_new._entry.72, ptr @ltc2983_rtd_new._entry.75, ptr @ltc2983_rtd_new._entry.80, ptr @ltc2983_rtd_new._entry.83, ptr @ltc2983_rtd_new._entry.86, ptr @ltc2983_rtd_new._entry.89, ptr @ltc2983_rtd_new._entry.94, ptr @ltc2983_rtd_new._entry_ptr, ptr @ltc2983_rtd_new._entry_ptr.73, ptr @ltc2983_rtd_new._entry_ptr.77, ptr @ltc2983_rtd_new._entry_ptr.82, ptr @ltc2983_rtd_new._entry_ptr.85, ptr @ltc2983_rtd_new._entry_ptr.88, ptr @ltc2983_rtd_new._entry_ptr.91, ptr @ltc2983_rtd_new._entry_ptr.96, ptr @ltc2983_setup._entry, ptr @ltc2983_setup._entry_ptr, ptr @ltc2983_thermistor_new._entry, ptr @ltc2983_thermistor_new._entry.102, ptr @ltc2983_thermistor_new._entry.108, ptr @ltc2983_thermistor_new._entry.111, ptr @ltc2983_thermistor_new._entry.99, ptr @ltc2983_thermistor_new._entry_ptr, ptr @ltc2983_thermistor_new._entry_ptr.101, ptr @ltc2983_thermistor_new._entry_ptr.104, ptr @ltc2983_thermistor_new._entry_ptr.110, ptr @ltc2983_thermistor_new._entry_ptr.112, ptr @ltc2983_thermocouple_new._entry, ptr @ltc2983_thermocouple_new._entry.42, ptr @ltc2983_thermocouple_new._entry.46, ptr @ltc2983_thermocouple_new._entry_ptr, ptr @ltc2983_thermocouple_new._entry_ptr.44, ptr @ltc2983_thermocouple_new._entry_ptr.48, ptr @ltc2983_driver, ptr @ltc2983_id_table, ptr @.str, ptr @ltc2983_of_match, ptr @ltc2983_pm_ops, ptr @ltc2983_probe._key, ptr @ltc2983_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ltc2983_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @ltc2983_iio_info, ptr @ltc2983_reg_table, ptr @ltc2983_reg_ranges, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_reg_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_reg_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_parse_dt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermocouple_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermocouple_new._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermocouple_new._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_rtd_new._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermistor_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermistor_new._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermistor_new._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermistor_new._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_thermistor_new._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_diode_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_diode_new._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_r_sense_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_r_sense_new._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_adc_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_chan_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2983_chan_read._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ltc2983_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc2983_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ltc2983_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @ltc2983_regmap_config, ptr noundef nonnull @ltc2983_probe._key, ptr noundef nonnull @.str.1) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %1, align 128
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.body12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ltc2983_probe.__key) #5
  %completion = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #5
  %spi15 = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %spi15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %spi15, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %driver_data.i.i, align 4
  %call16 = tail call fastcc i32 @ltc2983_parse_dt(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.body12.cleanup_crit_edge

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %do.body12
  %9 = ptrtoint ptr %spi15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi15, align 4
  %call22 = tail call ptr @devm_gpiod_get_optional(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef 7) #5
  %cmp.i88 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %tobool27.not = icmp eq ptr %call22, null
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #5
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call22, i32 noundef 0) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %call30 = tail call fastcc i32 @ltc2983_setup(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %13, ptr noundef nonnull @ltc2983_irq_handler, ptr noundef null, i32 noundef 1, ptr noundef %call, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %call.i) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %name43 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %14 = ptrtoint ptr %name43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %name43, align 8
  %iio_channels = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %iio_channels to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iio_channels, align 1
  %conv = zext i8 %16 to i32
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %num_channels, align 4
  %iio_chan = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %iio_chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iio_chan, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %channels, align 8
  %21 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %call2, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ltc2983_iio_info, ptr %info, align 8
  %call45 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end40, %if.end29.cleanup_crit_edge, %if.then24, %do.body12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %11, %if.then24 ], [ %call.i, %do.end40 ], [ %call45, %if.end42 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %do.body12.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2983_parse_dt(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %temp.i309 = alloca i32, align 4
  %temp.i = alloca i32, align 4
  %excitation_current.i290 = alloca i32, align 4
  %args.i.i261 = alloca %struct.of_phandle_args, align 4
  %excitation_current.i262 = alloca i32, align 4
  %args.i.i241 = alloca %struct.of_phandle_args, align 4
  %excitation_current.i = alloca i32, align 4
  %n_wires.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %oc_current.i = alloca i32, align 4
  %sensor = alloca %struct.ltc2983_sensor, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %mux_delay_config = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %mux_delay_config, i32 noundef 1, i32 noundef 0) #5
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %filter_notch_freq = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 7
  %call.i.i237 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef %filter_notch_freq, i32 noundef 1, i32 noundef 0) #5
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_available_child_count.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

of_get_available_child_count.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %num_channels344 = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 9
  %8 = ptrtoint ptr %num_channels344 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %num_channels344, align 2
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  %conv = trunc i32 %inc.i to i8
  %num_channels = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 9
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %num_channels, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %of_get_available_child_count.exit.do.end_crit_edge, label %devm_kcalloc.exit

of_get_available_child_count.exit.do.end_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %of_get_available_child_count.exit.do.end_crit_edge, %of_get_available_child_count.exit.thread
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15) #8
  br label %cleanup161

devm_kcalloc.exit:                                ; preds = %of_get_available_child_count.exit
  %conv10 = shl i32 %inc.i, 2
  %12 = and i32 %conv10, 1020
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %12, i32 noundef 3520) #5
  %sensors = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 5
  %13 = ptrtoint ptr %sensors to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %sensors, align 32
  %tobool13.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool13.not, label %devm_kcalloc.exit.cleanup161_crit_edge, label %if.end15

devm_kcalloc.exit.cleanup161_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup161

if.end15:                                         ; preds = %devm_kcalloc.exit
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_channels, align 2
  %iio_channels = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 10
  %16 = ptrtoint ptr %iio_channels to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %iio_channels, align 1
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call18 = tail call ptr @of_get_next_available_child(ptr noundef %18, ptr noundef null) #5
  %cmp.not382 = icmp eq ptr %call18, null
  br i1 %cmp.not382, label %if.end15.cleanup161_crit_edge, label %for.body.lr.ph

if.end15.cleanup161_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup161

for.body.lr.ph:                                   ; preds = %if.end15
  %19 = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %20 = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0385 = phi ptr [ %call18, %for.body.lr.ph ], [ %call160, %for.inc.for.body_crit_edge ]
  %channel_avail_mask.0384 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.inc.for.body_crit_edge ]
  %chan.0383 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sensor) #5
  %21 = call ptr @memset(ptr %sensor, i32 255, i32 16)
  %call.i.i238 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.17, ptr noundef %19, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i238)
  %tobool22.not = icmp sgt i32 %call.i.i238, -1
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %put_child

if.end27:                                         ; preds = %for.body
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 4
  %24 = add i32 %23, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %24)
  %25 = icmp ult i32 %24, -20
  br i1 %25, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %23) #8
  br label %put_child

if.else:                                          ; preds = %if.end27
  %shl = shl nuw nsw i32 1, %23
  %and = and i32 %shl, %channel_avail_mask.0384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end47, label %if.then41

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %23) #8
  br label %put_child

if.end47:                                         ; preds = %if.else
  %call.i.i239 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.27, ptr noundef %20, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i239)
  %tobool49.not = icmp sgt i32 %call.i.i239, -1
  br i1 %tobool49.not, label %do.body55, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #8
  br label %put_child

do.body55:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc2983_parse_dt.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_parse_dt, %if.then60)) #5
          to label %do.end65 [label %if.then60], !srcloc !278

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %20, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc2983_parse_dt.__UNIQUE_ID_ddebug422, ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %27, i32 noundef %29) #5
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body55
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %20, align 4
  %32 = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %32)
  %33 = icmp ult i32 %32, 9
  br i1 %33, label %if.then72, label %if.else75

if.then72:                                        ; preds = %do.end65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oc_current.i) #5
  %34 = ptrtoint ptr %oc_current.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %oc_current.i, align 4, !annotation !279
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 4
  %call.i.i240 = call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i240, null
  br i1 %tobool.not.i, label %if.then72.ltc2983_thermocouple_new.exit_crit_edge, label %if.end.i

if.then72.ltc2983_thermocouple_new.exit_crit_edge: ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc2983_thermocouple_new.exit

if.end.i:                                         ; preds = %if.then72
  %call.i194.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.38, ptr noundef null) #5
  %tobool.i.not.i = icmp eq ptr %call.i194.i, null
  br i1 %tobool.i.not.i, label %if.end.i.if.end16.i_crit_edge, label %do.end15.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_config.i = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %call.i.i240, i32 0, i32 2
  %37 = ptrtoint ptr %sensor_config.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %sensor_config.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end15.i, %if.end.i.if.end16.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.39, ptr noundef nonnull %oc_current.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool18.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end16.i.if.end118.i_crit_edge

if.end16.i.if.end118.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118.i

if.then19.i:                                      ; preds = %if.end16.i
  %38 = ptrtoint ptr %oc_current.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oc_current.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %do.end96.i [
    i32 10, label %if.then19.i.do.end114.i_crit_edge
    i32 100, label %if.then19.i.do.end114.sink.split.i_crit_edge
    i32 500, label %do.end71.i
    i32 1000, label %do.end90.i
  ]

if.then19.i.do.end114.sink.split.i_crit_edge:     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114.sink.split.i

if.then19.i.do.end114.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114.i

do.end71.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114.sink.split.i

do.end90.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114.sink.split.i

do.end96.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.40, i32 noundef %39) #8
  br label %ltc2983_thermocouple_new.exit

do.end114.sink.split.i:                           ; preds = %do.end90.i, %do.end71.i, %if.then19.i.do.end114.sink.split.i_crit_edge
  %.sink204.i = phi i32 [ 2, %do.end71.i ], [ 3, %do.end90.i ], [ 1, %if.then19.i.do.end114.sink.split.i_crit_edge ]
  %sensor_config92.i = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %call.i.i240, i32 0, i32 2
  %43 = ptrtoint ptr %sensor_config92.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sensor_config92.i, align 4
  %or55.i = or i32 %44, %.sink204.i
  store i32 %or55.i, ptr %sensor_config92.i, align 4
  br label %do.end114.i

do.end114.i:                                      ; preds = %do.end114.sink.split.i, %if.then19.i.do.end114.i_crit_edge
  %sensor_config116.i = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %call.i.i240, i32 0, i32 2
  %45 = ptrtoint ptr %sensor_config116.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sensor_config116.i, align 4
  %or117.i = or i32 %46, 4
  store i32 %or117.i, ptr %sensor_config116.i, align 4
  br label %if.end118.i

if.end118.i:                                      ; preds = %do.end114.i, %if.end16.i.if.end118.i_crit_edge
  %sensor_config119.i = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %call.i.i240, i32 0, i32 2
  %47 = ptrtoint ptr %sensor_config119.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sensor_config119.i, align 4
  %and.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool120.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool120.not.i, label %land.lhs.true.i, label %if.end118.i.if.end129.i_crit_edge

if.end118.i.if.end129.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129.i

land.lhs.true.i:                                  ; preds = %if.end118.i
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i = icmp ult i32 %50, 2
  br i1 %cmp.i, label %do.end124.i, label %land.lhs.true.i.if.end129.i_crit_edge

land.lhs.true.i.if.end129.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129.i

do.end124.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.43, i32 noundef %50) #8
  br label %ltc2983_thermocouple_new.exit

if.end129.i:                                      ; preds = %land.lhs.true.i.if.end129.i_crit_edge, %if.end118.i.if.end129.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %53 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i195.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.45, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195.i)
  %tobool.not.i.i = icmp eq i32 %call.i195.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %if.end144.i

of_parse_phandle.exit.i:                          ; preds = %if.end129.i
  %54 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool131.not.i = icmp eq ptr %55, null
  br i1 %tobool131.not.i, label %of_parse_phandle.exit.i.if.end144.i_crit_edge, label %if.then132.i

of_parse_phandle.exit.i.if.end144.i_crit_edge:    ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144.i

if.then132.i:                                     ; preds = %of_parse_phandle.exit.i
  %cold_junction_chan.i = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %call.i.i240, i32 0, i32 3
  %call.i.i196.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %55, ptr noundef nonnull @.str.17, ptr noundef %cold_junction_chan.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i196.i)
  %tobool135.not.i = icmp sgt i32 %call.i.i196.i, -1
  br i1 %tobool135.not.i, label %if.then132.i.if.end144.i_crit_edge, label %cleanup.i

if.then132.i.if.end144.i_crit_edge:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144.i

cleanup.i:                                        ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.47) #8
  call void @of_node_put(ptr noundef nonnull %55) #5
  br label %ltc2983_thermocouple_new.exit

if.end144.i:                                      ; preds = %if.then132.i.if.end144.i_crit_edge, %of_parse_phandle.exit.i.if.end144.i_crit_edge, %of_parse_phandle.exit.thread.i
  %retval.0.i199.i = phi ptr [ null, %of_parse_phandle.exit.i.if.end144.i_crit_edge ], [ null, %of_parse_phandle.exit.thread.i ], [ %55, %if.then132.i.if.end144.i_crit_edge ]
  %58 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %59)
  %cmp145.i = icmp eq i32 %59, 9
  br i1 %cmp145.i, label %if.then146.i, label %if.end144.i.if.end157.i_crit_edge

if.end144.i.if.end157.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157.i

if.then146.i:                                     ; preds = %if.end144.i
  %call147.i = call fastcc ptr @__ltc2983_custom_sensor_new(ptr noundef %st, ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.49, i1 noundef zeroext false, i32 noundef 16384, i1 noundef zeroext true) #5
  %custom.i = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %call.i.i240, i32 0, i32 1
  %60 = ptrtoint ptr %custom.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call147.i, ptr %custom.i, align 4
  %cmp.i.i = icmp ugt ptr %call147.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup154.thread.i, label %if.then146.i.if.end157.i_crit_edge

if.then146.i.if.end157.i_crit_edge:               ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157.i

cleanup154.thread.i:                              ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef %retval.0.i199.i) #5
  %61 = ptrtoint ptr %custom.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %custom.i, align 4
  br label %ltc2983_thermocouple_new.exit

if.end157.i:                                      ; preds = %if.then146.i.if.end157.i_crit_edge, %if.end144.i.if.end157.i_crit_edge
  %63 = ptrtoint ptr %call.i.i240 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ltc2983_thermocouple_fault_handler, ptr %call.i.i240, align 4
  %assign_chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %call.i.i240, i32 0, i32 1
  %64 = ptrtoint ptr %assign_chan.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ltc2983_thermocouple_assign_chan, ptr %assign_chan.i, align 4
  call void @of_node_put(ptr noundef %retval.0.i199.i) #5
  br label %ltc2983_thermocouple_new.exit

ltc2983_thermocouple_new.exit:                    ; preds = %if.end157.i, %cleanup154.thread.i, %cleanup.i, %do.end124.i, %do.end96.i, %if.then72.ltc2983_thermocouple_new.exit_crit_edge
  %retval.3.i = phi ptr [ %call.i.i240, %if.end157.i ], [ inttoptr (i32 -22 to ptr), %cleanup.i ], [ inttoptr (i32 -22 to ptr), %do.end124.i ], [ inttoptr (i32 -22 to ptr), %do.end96.i ], [ inttoptr (i32 -12 to ptr), %if.then72.ltc2983_thermocouple_new.exit_crit_edge ], [ %62, %cleanup154.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oc_current.i) #5
  %65 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sensors, align 32
  %arrayidx = getelementptr ptr, ptr %66, i32 %chan.0383
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.3.i, ptr %arrayidx, align 4
  br label %if.end134

if.else75:                                        ; preds = %do.end65
  %68 = add i32 %31, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %68)
  %69 = icmp ult i32 %68, 9
  br i1 %69, label %if.then83, label %if.else87

if.then83:                                        ; preds = %if.else75
  %70 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %excitation_current.i) #5
  %72 = ptrtoint ptr %excitation_current.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %excitation_current.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_wires.i) #5
  %73 = ptrtoint ptr %n_wires.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %n_wires.i, align 4
  %call.i.i243 = call noalias ptr @devm_kmalloc(ptr noundef %71, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not.i244 = icmp eq ptr %call.i.i243, null
  br i1 %tobool.not.i244, label %if.then83.ltc2983_rtd_new.exit_crit_edge, label %if.end.i246

if.then83.ltc2983_rtd_new.exit_crit_edge:         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc2983_rtd_new.exit

if.end.i246:                                      ; preds = %if.then83
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i241) #5
  %74 = call ptr @memset(ptr %args.i.i241, i32 255, i32 72)
  %call.i296.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.69, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i241) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296.i)
  %tobool.not.i.i245 = icmp eq i32 %call.i296.i, 0
  br i1 %tobool.not.i.i245, label %of_parse_phandle.exit.i248, label %of_parse_phandle.exit.thread.i247

of_parse_phandle.exit.thread.i247:                ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i241) #5
  br label %do.end.i

of_parse_phandle.exit.i248:                       ; preds = %if.end.i246
  %75 = ptrtoint ptr %args.i.i241 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %args.i.i241, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i241) #5
  %tobool4.not.i = icmp eq ptr %76, null
  br i1 %tobool4.not.i, label %of_parse_phandle.exit.i248.do.end.i_crit_edge, label %if.end7.i

of_parse_phandle.exit.i248.do.end.i_crit_edge:    ; preds = %of_parse_phandle.exit.i248
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i248.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.70) #8
  br label %ltc2983_rtd_new.exit

if.end7.i:                                        ; preds = %of_parse_phandle.exit.i248
  %r_sense_chan.i = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 3
  %call.i.i.i249 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %76, ptr noundef nonnull @.str.17, ptr noundef %r_sense_chan.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i249)
  %tobool9.not.i = icmp sgt i32 %call.i.i.i249, -1
  br i1 %tobool9.not.i, label %if.end14.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.47) #8
  %phi.cast.i = inttoptr i32 %call.i.i.i249 to ptr
  br label %fail.i

if.end14.i:                                       ; preds = %if.end7.i
  %call.i.i297.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.74, ptr noundef nonnull %n_wires.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i297.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i297.i, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end90.i_crit_edge

if.end14.i.if.end90.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90.i

if.then17.i:                                      ; preds = %if.end14.i
  %77 = ptrtoint ptr %n_wires.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_wires.i, align 4
  %switch.tableidx = add i32 %78, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %79 = icmp ult i32 %switch.tableidx, 4
  br i1 %79, label %switch.lookup, label %do.end89.i

do.end89.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.76, i32 noundef %78) #8
  br label %fail.i

switch.lookup:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %sensor_config.i250 = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 2
  %80 = ptrtoint ptr %sensor_config.i250 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %switch.idx.mult, ptr %sensor_config.i250, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %switch.lookup, %if.end14.i.if.end90.i_crit_edge
  %call.i298.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.78, ptr noundef null) #5
  %tobool.i.not.i251 = icmp eq ptr %call.i298.i, null
  br i1 %tobool.i.not.i251, label %if.end90.i.if.end137.i_crit_edge, label %if.then92.i

if.end90.i.if.end137.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137.i

if.then92.i:                                      ; preds = %if.end90.i
  %call.i299.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.79, ptr noundef null) #5
  %tobool.i300.not.i = icmp eq ptr %call.i299.i, null
  br i1 %tobool.i300.not.i, label %if.then92.i.if.end137.sink.split.i_crit_edge, label %if.then94.i

if.then92.i.if.end137.sink.split.i_crit_edge:     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137.sink.split.i

if.then94.i:                                      ; preds = %if.then92.i
  %81 = ptrtoint ptr %n_wires.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %n_wires.i, align 4
  %83 = and i32 %82, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %switch.i = icmp eq i32 %83, 2
  br i1 %switch.i, label %do.end99.i, label %if.then94.i.if.end137.sink.split.i_crit_edge

if.then94.i.if.end137.sink.split.i_crit_edge:     ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137.sink.split.i

do.end99.i:                                       ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.81) #8
  br label %fail.i

if.end137.sink.split.i:                           ; preds = %if.then94.i.if.end137.sink.split.i_crit_edge, %if.then92.i.if.end137.sink.split.i_crit_edge
  %.sink309.i = phi i32 [ 2, %if.then94.i.if.end137.sink.split.i_crit_edge ], [ 1, %if.then92.i.if.end137.sink.split.i_crit_edge ]
  %sensor_config134.i = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 2
  %84 = ptrtoint ptr %sensor_config134.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sensor_config134.i, align 4
  %or.i = or i32 %85, %.sink309.i
  store i32 %or.i, ptr %sensor_config134.i, align 4
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.end137.sink.split.i, %if.end90.i.if.end137.i_crit_edge
  %sensor_config138.i = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 2
  %86 = ptrtoint ptr %sensor_config138.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sensor_config138.i, align 4
  %and.i252 = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252)
  %tobool139.not.i = icmp eq i32 %and.i252, 0
  br i1 %tobool139.not.i, label %if.else173.i, label %if.then140.i

if.then140.i:                                     ; preds = %if.end137.i
  %and142.i = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  %and147.i = and i32 %87, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and147.i)
  %cmp148.i = icmp eq i32 %and147.i, 12
  br i1 %cmp148.i, label %land.lhs.true.i253, label %if.then140.i.if.end157.i255_crit_edge

if.then140.i.if.end157.i255_crit_edge:            ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157.i255

land.lhs.true.i253:                               ; preds = %if.then140.i
  %88 = ptrtoint ptr %r_sense_chan.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %r_sense_chan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp150.i = icmp ult i32 %89, 3
  br i1 %cmp150.i, label %do.end155.i, label %land.lhs.true.i253.if.end157.i255_crit_edge

land.lhs.true.i253.if.end157.i255_crit_edge:      ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157.i255

do.end155.i:                                      ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.84, i32 noundef %89) #8
  br label %fail.i

if.end157.i255:                                   ; preds = %land.lhs.true.i253.if.end157.i255_crit_edge, %if.then140.i.if.end157.i255_crit_edge
  %90 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp159.i = icmp ult i32 %91, 2
  %conv163.i = select i1 %tobool143.not.i, i32 20, i32 19
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv163.i)
  %cmp164.i = icmp ugt i32 %91, %conv163.i
  %or.cond.i = select i1 %cmp159.i, i1 true, i1 %cmp164.i
  br i1 %or.cond.i, label %do.end169.i, label %if.end157.i255.if.end185.i_crit_edge

if.end157.i255.if.end185.i_crit_edge:             ; preds = %if.end157.i255
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185.i

do.end169.i:                                      ; preds = %if.end157.i255
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.87, i32 noundef %91) #8
  br label %fail.i

if.else173.i:                                     ; preds = %if.end137.i
  %92 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp175.i = icmp ult i32 %93, 2
  br i1 %cmp175.i, label %do.end180.i, label %if.else173.i.if.end185.i_crit_edge

if.else173.i.if.end185.i_crit_edge:               ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185.i

do.end180.i:                                      ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.90, i32 noundef %93) #8
  br label %fail.i

if.end185.i:                                      ; preds = %if.else173.i.if.end185.i_crit_edge, %if.end157.i255.if.end185.i_crit_edge
  %96 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %97)
  %cmp186.i = icmp eq i32 %97, 18
  br i1 %cmp186.i, label %if.then188.i, label %if.end185.i.if.end196.i_crit_edge

if.end185.i.if.end196.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i

if.then188.i:                                     ; preds = %if.end185.i
  %call189.i = call fastcc ptr @__ltc2983_custom_sensor_new(ptr noundef %st, ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.92, i1 noundef zeroext false, i32 noundef 2048, i1 noundef zeroext false) #5
  %custom.i257 = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 1
  %98 = ptrtoint ptr %custom.i257 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call189.i, ptr %custom.i257, align 4
  %cmp.i.i258 = icmp ugt ptr %call189.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i258, label %if.then192.i, label %if.then188.i.if.end196.i_crit_edge

if.then188.i.if.end196.i_crit_edge:               ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i

if.then192.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %76) #5
  %99 = ptrtoint ptr %custom.i257 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %custom.i257, align 4
  br label %ltc2983_rtd_new.exit

if.end196.i:                                      ; preds = %if.then188.i.if.end196.i_crit_edge, %if.end185.i.if.end196.i_crit_edge
  %101 = ptrtoint ptr %call.i.i243 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @ltc2983_common_fault_handler, ptr %call.i.i243, align 4
  %assign_chan.i259 = getelementptr inbounds %struct.ltc2983_sensor, ptr %call.i.i243, i32 0, i32 1
  %102 = ptrtoint ptr %assign_chan.i259 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @ltc2983_rtd_assign_chan, ptr %assign_chan.i259, align 4
  %call.i.i301.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.93, ptr noundef nonnull %excitation_current.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i301.i)
  %tobool200.not.i = icmp sgt i32 %call.i.i301.i, -1
  br i1 %tobool200.not.i, label %if.else203.i, label %if.end196.i.if.end227.i_crit_edge

if.end196.i.if.end227.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

if.else203.i:                                     ; preds = %if.end196.i
  %103 = ptrtoint ptr %excitation_current.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %excitation_current.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %104, label %do.end223.i [
    i32 5, label %if.else203.i.if.end227.i_crit_edge
    i32 10, label %sw.bb206.i
    i32 25, label %sw.bb208.i
    i32 50, label %sw.bb210.i
    i32 100, label %sw.bb212.i
    i32 250, label %sw.bb214.i
    i32 500, label %sw.bb216.i
    i32 1000, label %sw.bb218.i
  ]

if.else203.i.if.end227.i_crit_edge:               ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb206.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb208.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb210.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb212.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb214.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb216.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

sw.bb218.i:                                       ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227.i

do.end223.i:                                      ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.95, i32 noundef %104) #8
  br label %fail.i

if.end227.i:                                      ; preds = %sw.bb218.i, %sw.bb216.i, %sw.bb214.i, %sw.bb212.i, %sw.bb210.i, %sw.bb208.i, %sw.bb206.i, %if.else203.i.if.end227.i_crit_edge, %if.end196.i.if.end227.i_crit_edge
  %.sink311.i = phi i32 [ 2, %sw.bb206.i ], [ 3, %sw.bb208.i ], [ 4, %sw.bb210.i ], [ 5, %sw.bb212.i ], [ 6, %sw.bb214.i ], [ 7, %sw.bb216.i ], [ 8, %sw.bb218.i ], [ 1, %if.end196.i.if.end227.i_crit_edge ], [ 1, %if.else203.i.if.end227.i_crit_edge ]
  %excitation_current205.i = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 4
  %108 = ptrtoint ptr %excitation_current205.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink311.i, ptr %excitation_current205.i, align 4
  %rtd_curve.i = getelementptr inbounds %struct.ltc2983_rtd, ptr %call.i.i243, i32 0, i32 5
  %call.i.i302.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.97, ptr noundef %rtd_curve.i, i32 noundef 1, i32 noundef 0) #5
  call void @of_node_put(ptr noundef nonnull %76) #5
  br label %ltc2983_rtd_new.exit

fail.i:                                           ; preds = %do.end223.i, %do.end180.i, %do.end169.i, %do.end155.i, %do.end99.i, %do.end89.i, %do.end13.i
  %ret.1.i = phi ptr [ %phi.cast.i, %do.end13.i ], [ inttoptr (i32 -22 to ptr), %do.end99.i ], [ inttoptr (i32 -22 to ptr), %do.end223.i ], [ inttoptr (i32 -22 to ptr), %do.end180.i ], [ inttoptr (i32 -22 to ptr), %do.end89.i ], [ inttoptr (i32 -22 to ptr), %do.end155.i ], [ inttoptr (i32 -22 to ptr), %do.end169.i ]
  call void @of_node_put(ptr noundef nonnull %76) #5
  br label %ltc2983_rtd_new.exit

ltc2983_rtd_new.exit:                             ; preds = %fail.i, %if.end227.i, %if.then192.i, %do.end.i, %if.then83.ltc2983_rtd_new.exit_crit_edge
  %retval.0.i260 = phi ptr [ %ret.1.i, %fail.i ], [ %100, %if.then192.i ], [ %call.i.i243, %if.end227.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -12 to ptr), %if.then83.ltc2983_rtd_new.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_wires.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %excitation_current.i) #5
  %109 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sensors, align 32
  %arrayidx86 = getelementptr ptr, ptr %110, i32 %chan.0383
  %111 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %retval.0.i260, ptr %arrayidx86, align 4
  br label %if.end134

if.else87:                                        ; preds = %if.else75
  %112 = add i32 %31, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %112)
  %113 = icmp ult i32 %112, 9
  br i1 %113, label %if.then95, label %if.else99

if.then95:                                        ; preds = %if.else87
  %114 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %excitation_current.i262) #5
  %116 = ptrtoint ptr %excitation_current.i262 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %excitation_current.i262, align 4
  %call.i.i264 = call noalias ptr @devm_kmalloc(ptr noundef %115, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not.i265 = icmp eq ptr %call.i.i264, null
  br i1 %tobool.not.i265, label %if.then95.ltc2983_thermistor_new.exit_crit_edge, label %if.end.i267

if.then95.ltc2983_thermistor_new.exit_crit_edge:  ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc2983_thermistor_new.exit

if.end.i267:                                      ; preds = %if.then95
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i261) #5
  %117 = call ptr @memset(ptr %args.i.i261, i32 255, i32 72)
  %call.i207.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.69, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i261) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %tobool.not.i.i266 = icmp eq i32 %call.i207.i, 0
  br i1 %tobool.not.i.i266, label %of_parse_phandle.exit.i270, label %of_parse_phandle.exit.thread.i268

of_parse_phandle.exit.thread.i268:                ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i261) #5
  br label %do.end.i271

of_parse_phandle.exit.i270:                       ; preds = %if.end.i267
  %118 = ptrtoint ptr %args.i.i261 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %args.i.i261, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i261) #5
  %tobool4.not.i269 = icmp eq ptr %119, null
  br i1 %tobool4.not.i269, label %of_parse_phandle.exit.i270.do.end.i271_crit_edge, label %if.end7.i275

of_parse_phandle.exit.i270.do.end.i271_crit_edge: ; preds = %of_parse_phandle.exit.i270
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i271

do.end.i271:                                      ; preds = %of_parse_phandle.exit.i270.do.end.i271_crit_edge, %of_parse_phandle.exit.thread.i268
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.70) #8
  br label %ltc2983_thermistor_new.exit

if.end7.i275:                                     ; preds = %of_parse_phandle.exit.i270
  %r_sense_chan.i272 = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 3
  %call.i.i.i273 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %119, ptr noundef nonnull @.str.17, ptr noundef %r_sense_chan.i272, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i273)
  %tobool9.not.i274 = icmp sgt i32 %call.i.i.i273, -1
  br i1 %tobool9.not.i274, label %if.end14.i279, label %do.end13.i277

do.end13.i277:                                    ; preds = %if.end7.i275
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.100) #8
  %phi.cast.i276 = inttoptr i32 %call.i.i.i273 to ptr
  br label %fail.i289

if.end14.i279:                                    ; preds = %if.end7.i275
  %call.i208.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.38, ptr noundef null) #5
  %tobool.i.not.i278 = icmp eq ptr %call.i208.i, null
  br i1 %tobool.i.not.i278, label %if.else.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end14.i279
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_config.i280 = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 2
  %120 = ptrtoint ptr %sensor_config.i280 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4, ptr %sensor_config.i280, align 4
  br label %if.end73.i

if.else.i:                                        ; preds = %if.end14.i279
  %call.i209.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.78, ptr noundef null) #5
  %tobool.i210.not.i = icmp eq ptr %call.i209.i, null
  br i1 %tobool.i210.not.i, label %if.else.i.if.end73.i_crit_edge, label %if.then33.i

if.else.i.if.end73.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.i

if.then33.i:                                      ; preds = %if.else.i
  %call.i211.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.79, ptr noundef null) #5
  %tobool.i212.not.i = icmp eq ptr %call.i211.i, null
  %sensor_config70.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 2
  br i1 %tobool.i212.not.i, label %do.end68.i, label %do.end50.i

do.end50.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %sensor_config70.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %sensor_config70.i, align 4
  br label %if.end73.i

do.end68.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %sensor_config70.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %sensor_config70.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.end68.i, %do.end50.i, %if.else.i.if.end73.i_crit_edge, %do.end31.i
  %sensor_config74.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 2
  %123 = ptrtoint ptr %sensor_config74.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sensor_config74.i, align 4
  %and.i281 = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281)
  %tobool75.not.i = icmp eq i32 %and.i281, 0
  br i1 %tobool75.not.i, label %land.lhs.true.i284, label %if.end73.i.if.end83.i_crit_edge

if.end73.i.if.end83.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

land.lhs.true.i284:                               ; preds = %if.end73.i
  %125 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp.i283 = icmp ult i32 %126, 2
  br i1 %cmp.i283, label %do.end79.i, label %land.lhs.true.i284.if.end83.i_crit_edge

land.lhs.true.i284.if.end83.i_crit_edge:          ; preds = %land.lhs.true.i284
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

do.end79.i:                                       ; preds = %land.lhs.true.i284
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.103, i32 noundef %126) #8
  br label %fail.i289

if.end83.i:                                       ; preds = %land.lhs.true.i284.if.end83.i_crit_edge, %if.end73.i.if.end83.i_crit_edge
  %129 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %130)
  %cmp84.i = icmp ugt i32 %130, 25
  br i1 %cmp84.i, label %if.then85.i, label %if.end83.i.if.end100.i_crit_edge

if.end83.i.if.end100.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.i

if.then85.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %130)
  %cmp87.i = icmp eq i32 %130, 26
  %.str.105..str.106.i = select i1 %cmp87.i, ptr @.str.105, ptr @.str.106
  %call92.i = call fastcc ptr @__ltc2983_custom_sensor_new(ptr noundef %st, ptr noundef nonnull %child.0385, ptr noundef nonnull %.str.105..str.106.i, i1 noundef zeroext %cmp87.i, i32 noundef 64, i1 noundef zeroext false) #5
  %custom.i286 = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 1
  %131 = ptrtoint ptr %custom.i286 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call92.i, ptr %custom.i286, align 4
  %cmp.i.i287 = icmp ugt ptr %call92.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i287, label %cleanup.thread.i, label %if.then85.i.if.end100.i_crit_edge

if.then85.i.if.end100.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.i

cleanup.thread.i:                                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %119) #5
  %132 = ptrtoint ptr %custom.i286 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %custom.i286, align 4
  br label %ltc2983_thermistor_new.exit

if.end100.i:                                      ; preds = %if.then85.i.if.end100.i_crit_edge, %if.end83.i.if.end100.i_crit_edge
  %134 = ptrtoint ptr %call.i.i264 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @ltc2983_common_fault_handler, ptr %call.i.i264, align 4
  %assign_chan.i288 = getelementptr inbounds %struct.ltc2983_sensor, ptr %call.i.i264, i32 0, i32 1
  %135 = ptrtoint ptr %assign_chan.i288 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @ltc2983_thermistor_assign_chan, ptr %assign_chan.i288, align 4
  %call.i.i213.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.107, ptr noundef nonnull %excitation_current.i262, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i213.i)
  %tobool104.not.i = icmp sgt i32 %call.i.i213.i, -1
  br i1 %tobool104.not.i, label %if.else113.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.end100.i
  %136 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %137)
  %cmp107.i = icmp ugt i32 %137, 25
  %excitation_current109.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  br i1 %cmp107.i, label %if.then108.i, label %if.else110.i

if.then108.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %excitation_current109.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 3, ptr %excitation_current109.i, align 4
  br label %if.end151.i

if.else110.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %excitation_current109.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 12, ptr %excitation_current109.i, align 4
  br label %if.end151.i

if.else113.i:                                     ; preds = %if.end100.i
  %140 = ptrtoint ptr %excitation_current.i262 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %excitation_current.i262, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %141, label %do.end148.i [
    i32 0, label %sw.bb.i
    i32 250, label %sw.bb124.i
    i32 500, label %sw.bb126.i
    i32 1000, label %sw.bb128.i
    i32 5000, label %sw.bb130.i
    i32 10000, label %sw.bb132.i
    i32 25000, label %sw.bb134.i
    i32 50000, label %sw.bb136.i
    i32 100000, label %sw.bb138.i
    i32 250000, label %sw.bb140.i
    i32 500000, label %sw.bb142.i
    i32 1000000, label %sw.bb144.i
  ]

sw.bb.i:                                          ; preds = %if.else113.i
  %143 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %144)
  %cmp115.i = icmp ugt i32 %144, 25
  br i1 %cmp115.i, label %do.end119.i, label %if.end122.i

do.end119.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %145 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.109) #8
  br label %fail.i289

if.end122.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current123.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %147 = ptrtoint ptr %excitation_current123.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 12, ptr %excitation_current123.i, align 4
  br label %if.end151.i

sw.bb124.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current125.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %148 = ptrtoint ptr %excitation_current125.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %excitation_current125.i, align 4
  br label %if.end151.i

sw.bb126.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current127.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %149 = ptrtoint ptr %excitation_current127.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2, ptr %excitation_current127.i, align 4
  br label %if.end151.i

sw.bb128.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current129.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %150 = ptrtoint ptr %excitation_current129.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 3, ptr %excitation_current129.i, align 4
  br label %if.end151.i

sw.bb130.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current131.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %151 = ptrtoint ptr %excitation_current131.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 4, ptr %excitation_current131.i, align 4
  br label %if.end151.i

sw.bb132.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current133.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %152 = ptrtoint ptr %excitation_current133.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 5, ptr %excitation_current133.i, align 4
  br label %if.end151.i

sw.bb134.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current135.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %153 = ptrtoint ptr %excitation_current135.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 6, ptr %excitation_current135.i, align 4
  br label %if.end151.i

sw.bb136.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current137.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %154 = ptrtoint ptr %excitation_current137.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 7, ptr %excitation_current137.i, align 4
  br label %if.end151.i

sw.bb138.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current139.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %155 = ptrtoint ptr %excitation_current139.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 8, ptr %excitation_current139.i, align 4
  br label %if.end151.i

sw.bb140.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current141.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %156 = ptrtoint ptr %excitation_current141.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 9, ptr %excitation_current141.i, align 4
  br label %if.end151.i

sw.bb142.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current143.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %157 = ptrtoint ptr %excitation_current143.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 10, ptr %excitation_current143.i, align 4
  br label %if.end151.i

sw.bb144.i:                                       ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %excitation_current145.i = getelementptr inbounds %struct.ltc2983_thermistor, ptr %call.i.i264, i32 0, i32 4
  %158 = ptrtoint ptr %excitation_current145.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 11, ptr %excitation_current145.i, align 4
  br label %if.end151.i

do.end148.i:                                      ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.95, i32 noundef %141) #8
  br label %fail.i289

if.end151.i:                                      ; preds = %sw.bb144.i, %sw.bb142.i, %sw.bb140.i, %sw.bb138.i, %sw.bb136.i, %sw.bb134.i, %sw.bb132.i, %sw.bb130.i, %sw.bb128.i, %sw.bb126.i, %sw.bb124.i, %if.end122.i, %if.else110.i, %if.then108.i
  call void @of_node_put(ptr noundef nonnull %119) #5
  br label %ltc2983_thermistor_new.exit

fail.i289:                                        ; preds = %do.end148.i, %do.end119.i, %do.end79.i, %do.end13.i277
  %ret.0.i = phi ptr [ %phi.cast.i276, %do.end13.i277 ], [ inttoptr (i32 -22 to ptr), %do.end148.i ], [ inttoptr (i32 -22 to ptr), %do.end119.i ], [ inttoptr (i32 -22 to ptr), %do.end79.i ]
  call void @of_node_put(ptr noundef nonnull %119) #5
  br label %ltc2983_thermistor_new.exit

ltc2983_thermistor_new.exit:                      ; preds = %fail.i289, %if.end151.i, %cleanup.thread.i, %do.end.i271, %if.then95.ltc2983_thermistor_new.exit_crit_edge
  %retval.1.i = phi ptr [ %ret.0.i, %fail.i289 ], [ %call.i.i264, %if.end151.i ], [ inttoptr (i32 -22 to ptr), %do.end.i271 ], [ inttoptr (i32 -12 to ptr), %if.then95.ltc2983_thermistor_new.exit_crit_edge ], [ %133, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %excitation_current.i262) #5
  %161 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %sensors, align 32
  %arrayidx98 = getelementptr ptr, ptr %162, i32 %chan.0383
  %163 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %retval.1.i, ptr %arrayidx98, align 4
  br label %if.end134

if.else99:                                        ; preds = %if.else87
  %164 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %31, label %do.end127 [
    i32 28, label %if.then103
    i32 29, label %if.then111
    i32 30, label %if.then120
  ]

if.then103:                                       ; preds = %if.else99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #5
  %165 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %temp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %excitation_current.i290) #5
  %166 = ptrtoint ptr %excitation_current.i290 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %excitation_current.i290, align 4
  %167 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %spi, align 4
  %call.i.i292 = call noalias ptr @devm_kmalloc(ptr noundef %168, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not.i293 = icmp eq ptr %call.i.i292, null
  br i1 %tobool.not.i293, label %if.then103.ltc2983_diode_new.exit_crit_edge, label %if.end.i295

if.then103.ltc2983_diode_new.exit_crit_edge:      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc2983_diode_new.exit

if.end.i295:                                      ; preds = %if.then103
  %call.i113.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.38, ptr noundef null) #5
  %tobool.i.not.i294 = icmp eq ptr %call.i113.i, null
  br i1 %tobool.i.not.i294, label %if.end.i295.if.end16.i298_crit_edge, label %do.end15.i297

if.end.i295.if.end16.i298_crit_edge:              ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i298

do.end15.i297:                                    ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_config.i296 = getelementptr inbounds %struct.ltc2983_diode, ptr %call.i.i292, i32 0, i32 1
  %169 = ptrtoint ptr %sensor_config.i296 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 4, ptr %sensor_config.i296, align 4
  br label %if.end16.i298

if.end16.i298:                                    ; preds = %do.end15.i297, %if.end.i295.if.end16.i298_crit_edge
  %call.i114.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.113, ptr noundef null) #5
  %tobool.i115.not.i = icmp eq ptr %call.i114.i, null
  br i1 %tobool.i115.not.i, label %if.end16.i298.if.end36.i_crit_edge, label %do.end33.i

if.end16.i298.if.end36.i_crit_edge:               ; preds = %if.end16.i298
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

do.end33.i:                                       ; preds = %if.end16.i298
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_config35.i = getelementptr inbounds %struct.ltc2983_diode, ptr %call.i.i292, i32 0, i32 1
  %170 = ptrtoint ptr %sensor_config35.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sensor_config35.i, align 4
  %or.i299 = or i32 %171, 2
  store i32 %or.i299, ptr %sensor_config35.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end33.i, %if.end16.i298.if.end36.i_crit_edge
  %call.i116.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.114, ptr noundef null) #5
  %tobool.i117.not.i = icmp eq ptr %call.i116.i, null
  br i1 %tobool.i117.not.i, label %if.end36.i.if.end57.i_crit_edge, label %do.end53.i

if.end36.i.if.end57.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i

do.end53.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_config55.i = getelementptr inbounds %struct.ltc2983_diode, ptr %call.i.i292, i32 0, i32 1
  %172 = ptrtoint ptr %sensor_config55.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sensor_config55.i, align 4
  %or56.i = or i32 %173, 1
  store i32 %or56.i, ptr %sensor_config55.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end53.i, %if.end36.i.if.end57.i_crit_edge
  %sensor_config58.i = getelementptr inbounds %struct.ltc2983_diode, ptr %call.i.i292, i32 0, i32 1
  %174 = ptrtoint ptr %sensor_config58.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sensor_config58.i, align 4
  %and.i300 = and i32 %175, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300)
  %tobool59.not.i = icmp eq i32 %and.i300, 0
  br i1 %tobool59.not.i, label %land.lhs.true.i303, label %if.end57.i.if.end68.i_crit_edge

if.end57.i.if.end68.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

land.lhs.true.i303:                               ; preds = %if.end57.i
  %176 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %177)
  %cmp.i302 = icmp ult i32 %177, 2
  br i1 %cmp.i302, label %do.end63.i, label %land.lhs.true.i303.if.end68.i_crit_edge

land.lhs.true.i303.if.end68.i_crit_edge:          ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

do.end63.i:                                       ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.103, i32 noundef %177) #8
  br label %ltc2983_diode_new.exit

if.end68.i:                                       ; preds = %land.lhs.true.i303.if.end68.i_crit_edge, %if.end57.i.if.end68.i_crit_edge
  %180 = ptrtoint ptr %call.i.i292 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @ltc2983_common_fault_handler, ptr %call.i.i292, align 4
  %assign_chan.i304 = getelementptr inbounds %struct.ltc2983_sensor, ptr %call.i.i292, i32 0, i32 1
  %181 = ptrtoint ptr %assign_chan.i304 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @ltc2983_diode_assign_chan, ptr %assign_chan.i304, align 4
  %call.i.i.i305 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.93, ptr noundef nonnull %excitation_current.i290, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i305)
  %tobool72.not.i = icmp sgt i32 %call.i.i.i305, -1
  br i1 %tobool72.not.i, label %if.then73.i, label %if.end68.i.if.end87.i_crit_edge

if.end68.i.if.end87.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then73.i:                                      ; preds = %if.end68.i
  %182 = ptrtoint ptr %excitation_current.i290 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %excitation_current.i290, align 4
  %184 = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %183, label %do.end83.i [
    i32 10, label %if.then73.i.if.end87.sink.split.i_crit_edge
    i32 20, label %sw.bb75.i
    i32 40, label %sw.bb77.i
    i32 80, label %sw.bb79.i
  ]

if.then73.i.if.end87.sink.split.i_crit_edge:      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split.i

sw.bb75.i:                                        ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split.i

sw.bb77.i:                                        ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split.i

sw.bb79.i:                                        ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split.i

do.end83.i:                                       ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #7
  %185 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.95, i32 noundef %183) #8
  br label %ltc2983_diode_new.exit

if.end87.sink.split.i:                            ; preds = %sw.bb79.i, %sw.bb77.i, %sw.bb75.i, %if.then73.i.if.end87.sink.split.i_crit_edge
  %.sink.i306 = phi i32 [ 1, %sw.bb75.i ], [ 2, %sw.bb77.i ], [ 3, %sw.bb79.i ], [ 0, %if.then73.i.if.end87.sink.split.i_crit_edge ]
  %excitation_current74.i = getelementptr inbounds %struct.ltc2983_diode, ptr %call.i.i292, i32 0, i32 2
  %187 = ptrtoint ptr %excitation_current74.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %.sink.i306, ptr %excitation_current74.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end87.sink.split.i, %if.end68.i.if.end87.i_crit_edge
  %call.i.i118.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.118, ptr noundef nonnull %temp.i, i32 noundef 1, i32 noundef 0) #5
  %188 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %temp.i, align 4
  %conv.i = zext i32 %189 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i, 20
  %190 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i.i) #9, !srcloc !280
  %191 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i.i, i64 %190, i32 0) #9, !srcloc !281
  %asmresult10.i.i.i = extractvalue { i64, i32 } %191, 0
  %div161263.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv183.i.i = trunc i64 %div161263.i.i to i32
  %ideal_factor_value.i = getelementptr inbounds %struct.ltc2983_diode, ptr %call.i.i292, i32 0, i32 3
  %192 = ptrtoint ptr %ideal_factor_value.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv183.i.i, ptr %ideal_factor_value.i, align 4
  br label %ltc2983_diode_new.exit

ltc2983_diode_new.exit:                           ; preds = %if.end87.i, %do.end83.i, %do.end63.i, %if.then103.ltc2983_diode_new.exit_crit_edge
  %retval.0.i307 = phi ptr [ %call.i.i292, %if.end87.i ], [ inttoptr (i32 -22 to ptr), %do.end83.i ], [ inttoptr (i32 -22 to ptr), %do.end63.i ], [ inttoptr (i32 -12 to ptr), %if.then103.ltc2983_diode_new.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %excitation_current.i290) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #5
  %193 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sensors, align 32
  %arrayidx106 = getelementptr ptr, ptr %194, i32 %chan.0383
  %195 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %retval.0.i307, ptr %arrayidx106, align 4
  br label %if.end134

if.then111:                                       ; preds = %if.else99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i309) #5
  %196 = ptrtoint ptr %temp.i309 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %temp.i309, align 4, !annotation !279
  %197 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %spi, align 4
  %call.i.i311 = call noalias ptr @devm_kmalloc(ptr noundef %198, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not.i312 = icmp eq ptr %call.i.i311, null
  br i1 %tobool.not.i312, label %if.then111.ltc2983_r_sense_new.exit_crit_edge, label %if.end.i315

if.then111.ltc2983_r_sense_new.exit_crit_edge:    ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc2983_r_sense_new.exit

if.end.i315:                                      ; preds = %if.then111
  %199 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %200)
  %cmp.i314 = icmp ult i32 %200, 2
  br i1 %cmp.i314, label %do.end.i316, label %if.end7.i319

do.end.i316:                                      ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #7
  %201 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.119, i32 noundef %200) #8
  br label %ltc2983_r_sense_new.exit

if.end7.i319:                                     ; preds = %if.end.i315
  %call.i.i.i317 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.121, ptr noundef nonnull %temp.i309, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i317)
  %tobool9.not.i318 = icmp sgt i32 %call.i.i.i317, -1
  br i1 %tobool9.not.i318, label %if.end17.i, label %do.end13.i320

do.end13.i320:                                    ; preds = %if.end7.i319
  call void @__sanitizer_cov_trace_pc() #7
  %203 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.123) #8
  br label %ltc2983_r_sense_new.exit

if.end17.i:                                       ; preds = %if.end7.i319
  call void @__sanitizer_cov_trace_pc() #7
  %205 = ptrtoint ptr %temp.i309 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %temp.i309, align 4
  %conv.i321 = zext i32 %206 to i64
  %mul.i.i322 = mul nuw nsw i64 %conv.i321, 1024000
  %207 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i.i322) #9, !srcloc !280
  %208 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i.i322, i64 %207, i32 0) #9, !srcloc !281
  %asmresult10.i.i.i323 = extractvalue { i64, i32 } %208, 0
  %div161263.i.i324 = lshr i64 %asmresult10.i.i.i323, 18
  %conv183.i.i325 = trunc i64 %div161263.i.i324 to i32
  %r_sense_val.i = getelementptr inbounds %struct.ltc2983_rsense, ptr %call.i.i311, i32 0, i32 1
  %209 = ptrtoint ptr %r_sense_val.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv183.i.i325, ptr %r_sense_val.i, align 4
  %assign_chan.i326 = getelementptr inbounds %struct.ltc2983_sensor, ptr %call.i.i311, i32 0, i32 1
  %210 = ptrtoint ptr %assign_chan.i326 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @ltc2983_r_sense_assign_chan, ptr %assign_chan.i326, align 4
  br label %ltc2983_r_sense_new.exit

ltc2983_r_sense_new.exit:                         ; preds = %if.end17.i, %do.end13.i320, %do.end.i316, %if.then111.ltc2983_r_sense_new.exit_crit_edge
  %retval.0.i327 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i316 ], [ inttoptr (i32 -22 to ptr), %do.end13.i320 ], [ %call.i.i311, %if.end17.i ], [ inttoptr (i32 -12 to ptr), %if.then111.ltc2983_r_sense_new.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i309) #5
  %211 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %sensors, align 32
  %arrayidx114 = getelementptr ptr, ptr %212, i32 %chan.0383
  %213 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %retval.0.i327, ptr %arrayidx114, align 4
  %214 = ptrtoint ptr %iio_channels to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %iio_channels, align 1
  %dec = add i8 %215, -1
  store i8 %dec, ptr %iio_channels, align 1
  br label %if.end134

if.then120:                                       ; preds = %if.else99
  %216 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %spi, align 4
  %call.i.i330 = call noalias ptr @devm_kmalloc(ptr noundef %217, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not.i331 = icmp eq ptr %call.i.i330, null
  br i1 %tobool.not.i331, label %if.then120.ltc2983_adc_new.exit_crit_edge, label %if.end.i333

if.then120.ltc2983_adc_new.exit_crit_edge:        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #7
  br label %ltc2983_adc_new.exit

if.end.i333:                                      ; preds = %if.then120
  %call.i23.i = call ptr @of_find_property(ptr noundef nonnull %child.0385, ptr noundef nonnull @.str.38, ptr noundef null) #5
  %tobool.i.not.i332 = icmp eq ptr %call.i23.i, null
  br i1 %tobool.i.not.i332, label %if.end.i333.if.end4.i_crit_edge, label %if.then3.i

if.end.i333.if.end4.i_crit_edge:                  ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #7
  %single_ended.i = getelementptr inbounds %struct.ltc2983_adc, ptr %call.i.i330, i32 0, i32 1
  %218 = ptrtoint ptr %single_ended.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %single_ended.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i333.if.end4.i_crit_edge
  %single_ended5.i = getelementptr inbounds %struct.ltc2983_adc, ptr %call.i.i330, i32 0, i32 1
  %219 = ptrtoint ptr %single_ended5.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %single_ended5.i, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool6.not.i = icmp eq i8 %220, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i336, label %if.end4.i.if.end12.i_crit_edge

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true.i336:                               ; preds = %if.end4.i
  %221 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %222)
  %cmp.i335 = icmp ult i32 %222, 2
  br i1 %cmp.i335, label %do.end.i337, label %land.lhs.true.i336.if.end12.i_crit_edge

land.lhs.true.i336.if.end12.i_crit_edge:          ; preds = %land.lhs.true.i336
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

do.end.i337:                                      ; preds = %land.lhs.true.i336
  call void @__sanitizer_cov_trace_pc() #7
  %223 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.125, i32 noundef %222) #8
  br label %ltc2983_adc_new.exit

if.end12.i:                                       ; preds = %land.lhs.true.i336.if.end12.i_crit_edge, %if.end4.i.if.end12.i_crit_edge
  %assign_chan.i338 = getelementptr inbounds %struct.ltc2983_sensor, ptr %call.i.i330, i32 0, i32 1
  %225 = ptrtoint ptr %assign_chan.i338 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @ltc2983_adc_assign_chan, ptr %assign_chan.i338, align 4
  %226 = ptrtoint ptr %call.i.i330 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @ltc2983_common_fault_handler, ptr %call.i.i330, align 4
  br label %ltc2983_adc_new.exit

ltc2983_adc_new.exit:                             ; preds = %if.end12.i, %do.end.i337, %if.then120.ltc2983_adc_new.exit_crit_edge
  %retval.0.i339 = phi ptr [ %call.i.i330, %if.end12.i ], [ inttoptr (i32 -22 to ptr), %do.end.i337 ], [ inttoptr (i32 -12 to ptr), %if.then120.ltc2983_adc_new.exit_crit_edge ]
  %227 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %sensors, align 32
  %arrayidx123 = getelementptr ptr, ptr %228, i32 %chan.0383
  %229 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %retval.0.i339, ptr %arrayidx123, align 4
  br label %if.end134

do.end127:                                        ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %31) #8
  br label %put_child

if.end134:                                        ; preds = %ltc2983_adc_new.exit, %ltc2983_r_sense_new.exit, %ltc2983_diode_new.exit, %ltc2983_thermistor_new.exit, %ltc2983_rtd_new.exit, %ltc2983_thermocouple_new.exit
  %230 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sensors, align 32
  %arrayidx136 = getelementptr ptr, ptr %231, i32 %chan.0383
  %232 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx136, align 4
  %cmp.i341 = icmp ugt ptr %233, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i341, label %do.end141, label %for.inc

do.end141:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  %234 = ptrtoint ptr %233 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %234) #8
  %235 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %sensors, align 32
  %arrayidx146 = getelementptr ptr, ptr %236, i32 %chan.0383
  %237 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx146, align 4
  %239 = ptrtoint ptr %238 to i32
  br label %put_child

for.inc:                                          ; preds = %if.end134
  %240 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %19, align 4
  %chan152 = getelementptr inbounds %struct.ltc2983_sensor, ptr %233, i32 0, i32 2
  %242 = ptrtoint ptr %chan152 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %chan152, align 4
  %243 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %20, align 4
  %245 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %sensors, align 32
  %arrayidx155 = getelementptr ptr, ptr %246, i32 %chan.0383
  %247 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx155, align 4
  %type156 = getelementptr inbounds %struct.ltc2983_sensor, ptr %248, i32 0, i32 3
  %249 = ptrtoint ptr %type156 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %244, ptr %type156, align 4
  %250 = load i32, ptr %19, align 4
  %shl158 = shl nuw i32 1, %250
  %or = or i32 %shl158, %channel_avail_mask.0384
  %inc = add i32 %chan.0383, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sensor) #5
  %251 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %of_node, align 8
  %call160 = call ptr @of_get_next_available_child(ptr noundef %252, ptr noundef nonnull %child.0385) #5
  %cmp.not = icmp eq ptr %call160, null
  br i1 %cmp.not, label %for.inc.cleanup161_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup161_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup161

put_child:                                        ; preds = %do.end141, %do.end127, %do.end53, %if.then41, %if.then34, %do.end26
  %ret.0.ph = phi i32 [ -22, %do.end127 ], [ %239, %do.end141 ], [ %call.i.i239, %do.end53 ], [ -22, %if.then41 ], [ -22, %if.then34 ], [ %call.i.i238, %do.end26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sensor) #5
  call void @of_node_put(ptr noundef nonnull %child.0385) #5
  br label %cleanup161

cleanup161:                                       ; preds = %put_child, %for.inc.cleanup161_crit_edge, %if.end15.cleanup161_crit_edge, %devm_kcalloc.exit.cleanup161_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0.ph, %put_child ], [ -22, %do.end ], [ -12, %devm_kcalloc.exit.cleanup161_crit_edge ], [ 0, %if.end15.cleanup161_crit_edge ], [ 0, %for.inc.cleanup161_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2983_setup(ptr noundef %st, i1 noundef zeroext %assign_iio) unnamed_addr #2 align 64 {
entry:
  %iio_chan_t = alloca i32, align 4
  %iio_chan_v = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iio_chan_t)
  %0 = ptrtoint ptr %iio_chan_t to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %iio_chan_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iio_chan_v)
  %1 = ptrtoint ptr %iio_chan_v to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %iio_chan_v, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !279
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 250000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1378) #5
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 128
  %call8224 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8224)
  %tobool.not225 = icmp eq i32 %call8224, 0
  br i1 %tobool.not225, label %entry.do.end23_crit_edge, label %entry.do.end67_crit_edge

entry.do.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

entry.do.end23_crit_edge:                         ; preds = %entry
  br label %do.end23

do.end23:                                         ; preds = %if.then36.do.end23_crit_edge, %entry.do.end23_crit_edge
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = and i32 %6, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp24 = icmp eq i32 %7, 64
  br i1 %cmp24, label %do.end23.do.end55_crit_edge, label %land.lhs.true

do.end23.do.end55_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

land.lhs.true:                                    ; preds = %do.end23
  %call28 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call28, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call28, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 6251, i32 noundef 25000, i32 noundef 2) #5
  %8 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %st, align 128
  %call8 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %status) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then36.do.end23_crit_edge, label %if.then36.do.end67_crit_edge

if.then36.do.end67_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then36.do.end23_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 128
  %call33 = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool40.not = icmp eq i32 %call33, 0
  br i1 %tobool40.not, label %for.end.do.end55_crit_edge, label %for.end.do.end67_crit_edge

for.end.do.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

for.end.do.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end55:                                         ; preds = %for.end.do.end55_crit_edge, %do.end23.do.end55_crit_edge
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %14 = and i32 %13, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %14)
  %cmp59 = icmp eq i32 %14, 64
  br i1 %cmp59, label %if.end68, label %do.end55.do.end67_crit_edge

do.end55.do.end67_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

do.end67:                                         ; preds = %do.end55.do.end67_crit_edge, %for.end.do.end67_crit_edge, %if.then36.do.end67_crit_edge, %entry.do.end67_crit_edge
  %tobool40.not206.ph = phi i32 [ %call8224, %entry.do.end67_crit_edge ], [ -110, %do.end55.do.end67_crit_edge ], [ %call33, %for.end.do.end67_crit_edge ], [ %call8, %if.then36.do.end67_crit_edge ]
  %spi = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %15 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.127) #8
  br label %cleanup153

if.end68:                                         ; preds = %do.end55
  %spi69 = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %17 = ptrtoint ptr %spi69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi69, align 4
  %iio_channels = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 10
  %19 = ptrtoint ptr %iio_channels to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %iio_channels, align 1
  %conv = zext i8 %20 to i32
  %mul = mul nuw nsw i32 %conv, 88
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef %mul, i32 noundef 3520) #5
  %iio_chan = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 4
  %21 = ptrtoint ptr %iio_chan to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %iio_chan, align 4
  %tobool73.not = icmp eq ptr %call.i, null
  br i1 %tobool73.not, label %if.end68.cleanup153_crit_edge, label %do.end98

if.end68.cleanup153_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup153

do.end98:                                         ; preds = %if.end68
  %filter_notch_freq = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 7
  %22 = ptrtoint ptr %filter_notch_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %filter_notch_freq, align 8
  %24 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %st, align 128
  %and101 = and i32 %23, 3
  %call.i201 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 240, i32 noundef 3, i32 noundef %and101, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool103.not = icmp eq i32 %call.i201, 0
  br i1 %tobool103.not, label %if.end105, label %do.end98.cleanup153_crit_edge

do.end98.cleanup153_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup153

if.end105:                                        ; preds = %do.end98
  %26 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %st, align 128
  %mux_delay_config = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 6
  %28 = ptrtoint ptr %mux_delay_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux_delay_config, align 4
  %call107 = call i32 @regmap_write(ptr noundef %27, i32 noundef 255, i32 noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %for.cond111.preheader, label %if.end105.cleanup153_crit_edge

if.end105.cleanup153_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup153

for.cond111.preheader:                            ; preds = %if.end105
  %sensors = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 5
  %num_channels = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 9
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_channels, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp113227.not = icmp eq i8 %31, 0
  br i1 %cmp113227.not, label %for.cond111.preheader.cleanup153_crit_edge, label %for.cond111.preheader.for.body_crit_edge

for.cond111.preheader.for.body_crit_edge:         ; preds = %for.cond111.preheader
  br label %for.body

for.cond111.preheader.cleanup153_crit_edge:       ; preds = %for.cond111.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup153

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond111.preheader.for.body_crit_edge
  %chan.0229 = phi i32 [ %inc151, %for.inc.for.body_crit_edge ], [ 0, %for.cond111.preheader.for.body_crit_edge ]
  %iio_idx.0228 = phi i32 [ %iio_idx.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond111.preheader.for.body_crit_edge ]
  %32 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sensors, align 32
  %arrayidx = getelementptr ptr, ptr %33, i32 %chan.0229
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %assign_chan = getelementptr inbounds %struct.ltc2983_sensor, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %assign_chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %assign_chan, align 4
  %call118 = call i32 %37(ptr noundef %st, ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %for.body.cleanup153_crit_edge

for.body.cleanup153_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup153

if.end121:                                        ; preds = %for.body
  %38 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sensors, align 32
  %arrayidx123 = getelementptr ptr, ptr %39, i32 %chan.0229
  %40 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx123, align 4
  %type = getelementptr inbounds %struct.ltc2983_sensor, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %43)
  %cmp124 = icmp ne i32 %43, 29
  %44 = and i1 %cmp124, %assign_iio
  br i1 %44, label %if.end129, label %if.end121.for.inc_crit_edge

if.end121.for.inc_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end129:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %43)
  %cmp133.not = icmp eq i32 %43, 30
  %. = select i1 %cmp133.not, i32 0, i32 9
  %iio_chan_v.iio_chan_t = select i1 %cmp133.not, ptr %iio_chan_v, ptr %iio_chan_t
  %45 = ptrtoint ptr %iio_chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iio_chan, align 4
  %inc = add i32 %iio_idx.0228, 1
  %arrayidx138 = getelementptr %struct.iio_chan_spec, ptr %46, i32 %iio_idx.0228
  %47 = ptrtoint ptr %iio_chan_v.iio_chan_t to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iio_chan_v.iio_chan_t, align 4
  %inc140 = add i32 %48, 1
  store i32 %inc140, ptr %iio_chan_v.iio_chan_t, align 4
  %49 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %., ptr %arrayidx138, align 4
  %__chan.sroa.5.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 4
  %50 = ptrtoint ptr %__chan.sroa.5.0.arrayidx138.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %__chan.sroa.5.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.6.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 8
  %51 = ptrtoint ptr %__chan.sroa.6.0.arrayidx138.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %__chan.sroa.6.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.7.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 12
  %52 = ptrtoint ptr %__chan.sroa.7.0.arrayidx138.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %chan.0229, ptr %__chan.sroa.7.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.8.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 16
  %__chan.sroa.10.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 32
  %53 = call ptr @memset(ptr %__chan.sroa.8.0.arrayidx138.sroa_idx, i32 0, i32 16)
  %54 = ptrtoint ptr %__chan.sroa.10.0.arrayidx138.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %__chan.sroa.10.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.11.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 36
  %55 = ptrtoint ptr %__chan.sroa.11.0.arrayidx138.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %__chan.sroa.11.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.12.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 40
  %56 = ptrtoint ptr %__chan.sroa.12.0.arrayidx138.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %__chan.sroa.12.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.13.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 44
  %__chan.sroa.23.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 84
  %57 = call ptr @memset(ptr %__chan.sroa.13.0.arrayidx138.sroa_idx, i32 0, i32 40)
  %58 = ptrtoint ptr %__chan.sroa.23.0.arrayidx138.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 79, ptr %__chan.sroa.23.0.arrayidx138.sroa_idx, align 4
  %__chan.sroa.31.0.arrayidx138.sroa_idx = getelementptr inbounds i8, ptr %arrayidx138, i32 85
  %59 = call ptr @memset(ptr %__chan.sroa.31.0.arrayidx138.sroa_idx, i32 255, i32 3)
  br label %for.inc

for.inc:                                          ; preds = %if.end129, %if.end121.for.inc_crit_edge
  %iio_idx.1.ph = phi i32 [ %iio_idx.0228, %if.end121.for.inc_crit_edge ], [ %inc, %if.end129 ]
  %inc151 = add nuw nsw i32 %chan.0229, 1
  %60 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_channels, align 2
  %conv112 = zext i8 %61 to i32
  %cmp113 = icmp ult i32 %inc151, %conv112
  br i1 %cmp113, label %for.inc.for.body_crit_edge, label %for.inc.cleanup153_crit_edge

for.inc.cleanup153_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup153

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup153:                                       ; preds = %for.inc.cleanup153_crit_edge, %for.body.cleanup153_crit_edge, %for.cond111.preheader.cleanup153_crit_edge, %if.end105.cleanup153_crit_edge, %do.end98.cleanup153_crit_edge, %if.end68.cleanup153_crit_edge, %do.end67
  %retval.2 = phi i32 [ %tobool40.not206.ph, %do.end67 ], [ -12, %if.end68.cleanup153_crit_edge ], [ %call.i201, %do.end98.cleanup153_crit_edge ], [ %call107, %if.end105.cleanup153_crit_edge ], [ 0, %for.cond111.preheader.cleanup153_crit_edge ], [ 0, %for.inc.cleanup153_crit_edge ], [ %call118, %for.body.cleanup153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iio_chan_v)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iio_chan_t)
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.ltc2983_data, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ltc2983_custom_sensor_new(ptr nocapture noundef %st, ptr noundef %np, ptr noundef %propname, i1 noundef zeroext %is_steinhart, i32 noundef %resolution, i1 noundef zeroext %has_signed) unnamed_addr #2 align 64 {
entry:
  %temp = alloca i64, align 8
  %t32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_steinhart to i8
  %spi = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %conv = select i1 %is_steinhart, i8 4, i8 3
  %conv7 = select i1 %is_steinhart, i32 4, i32 8
  %call = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef %propname, i32 noundef %conv7) #5
  %conv8 = trunc i32 %call to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8)
  %tobool9.not = icmp eq i8 %conv8, 0
  br i1 %tobool9.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %conv10 = and i32 %call, 255
  %rem = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #5
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv19 = zext i8 %conv to i32
  %mul = mul nuw nsw i32 %conv10, %conv19
  %size = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %size, align 4
  %is_steinhart.not = xor i1 %is_steinhart, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %mul)
  %cmp23.not = icmp eq i32 %mul, 24
  %or.cond = select i1 %is_steinhart.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %mul) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end17
  %custom_table_size = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 8
  %3 = ptrtoint ptr %custom_table_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %custom_table_size, align 4
  %conv32 = zext i16 %4 to i32
  %add = add nuw nsw i32 %mul, %conv32
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %add)
  %cmp34 = icmp ugt i32 %add, 384
  br i1 %cmp34, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %conv32, i32 noundef %mul) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end31
  %call.i164 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %mul, i32 noundef 3520) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i164, ptr %call.i, align 4
  %tobool48.not = icmp eq ptr %call.i164, null
  br i1 %tobool48.not, label %if.end44.cleanup_crit_edge, label %for.cond.preheader

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp54172.not = icmp eq i32 %conv10, 0
  br i1 %cmp54172.not, label %for.cond.preheader.for.end98_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end98_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end98

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv.i165 = zext i32 %resolution to i64
  %conv86 = zext i8 %conv to i64
  %sub91 = shl nuw nsw i64 %conv86, 3
  %mul92 = add nsw i64 %sub91, -8
  %sub91.1 = shl nuw nsw i64 %conv86, 3
  %mul92.1 = add nsw i64 %sub91.1, -16
  %sub91.2 = shl nuw nsw i64 %conv86, 3
  %mul92.2 = add nsw i64 %sub91.2, -24
  %sub91.3 = shl nuw nsw i64 %conv86, 3
  %mul92.3 = add nsw i64 %sub91.3, -32
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end.for.body_crit_edge ]
  %tbl.0174 = phi i8 [ 0, %for.body.lr.ph ], [ %inc.lcssa, %for.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %temp) #5
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %temp, align 8
  br i1 %is_steinhart, label %if.else80, label %if.then57

if.then57:                                        ; preds = %for.body
  %call59 = call i32 @of_property_read_u64_index(ptr noundef %np, ptr noundef %propname, i32 noundef %indvars.iv, ptr noundef nonnull %temp) #5
  %rem61 = and i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem61)
  %cmp62.not = icmp eq i32 %rem61, 0
  br i1 %cmp62.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %temp, align 8
  %mul.i = shl i64 %8, 10
  %9 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i) #9, !srcloc !280
  %10 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i, i64 %9, i32 0) #9, !srcloc !281
  %asmresult10.i.i = extractvalue { i64, i32 } %10, 0
  %div161263.i = lshr i64 %asmresult10.i.i, 18
  %conv66 = and i64 %div161263.i, 4294967295
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv66, ptr %temp, align 8
  br label %if.end84

if.else:                                          ; preds = %if.then57
  br i1 %has_signed, label %land.lhs.true69, label %if.else.if.else75_crit_edge

if.else.if.else75_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else75

land.lhs.true69:                                  ; preds = %if.else
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %temp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp70 = icmp slt i64 %13, 0
  br i1 %cmp70, label %if.then72, label %land.lhs.true69.if.else75_crit_edge

land.lhs.true69.if.else75_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else75

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i64 %13 to i32
  %sub.i = sub i32 0, %conv.i
  %conv1.i = sext i32 %sub.i to i64
  %mul.i.i = mul nsw i64 %conv1.i, %conv.i165
  %14 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i.i) #9, !srcloc !280
  %15 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i.i, i64 %14, i32 0) #9, !srcloc !281
  %asmresult10.i.i.i = extractvalue { i64, i32 } %15, 0
  %div161263.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv183.i.i = trunc i64 %div161263.i.i to i32
  %sub3.i = sub i32 0, %conv183.i.i
  %conv74 = zext i32 %sub3.i to i64
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv74, ptr %temp, align 8
  br label %if.end84

if.else75:                                        ; preds = %land.lhs.true69.if.else75_crit_edge, %if.else.if.else75_crit_edge
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %temp, align 8
  %mul.i166 = mul i64 %18, %conv.i165
  %19 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i166) #9, !srcloc !280
  %20 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i166, i64 %19, i32 0) #9, !srcloc !281
  %asmresult10.i.i167 = extractvalue { i64, i32 } %20, 0
  %div161263.i168 = lshr i64 %asmresult10.i.i167, 18
  %conv77 = and i64 %div161263.i168, 4294967295
  %21 = ptrtoint ptr %temp to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv77, ptr %temp, align 8
  br label %if.end84

if.else80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t32) #5
  %22 = ptrtoint ptr %t32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %t32, align 4, !annotation !279
  %call82 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef %propname, i32 noundef %indvars.iv, ptr noundef nonnull %t32) #5
  %23 = ptrtoint ptr %t32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t32, align 4
  %conv83 = zext i32 %24 to i64
  %25 = ptrtoint ptr %temp to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv83, ptr %temp, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t32) #5
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.else75, %if.then72, %if.then64
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %temp, align 8
  %shr = lshr i64 %27, %mul92
  %conv93 = trunc i64 %shr to i8
  %inc = add i8 %tbl.0174, 1
  %idxprom = zext i8 %tbl.0174 to i32
  %arrayidx = getelementptr i8, ptr %call.i164, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv93, ptr %arrayidx, align 1
  %shr.1 = lshr i64 %27, %mul92.1
  %conv93.1 = trunc i64 %shr.1 to i8
  %inc.1 = add i8 %tbl.0174, 2
  %idxprom.1 = zext i8 %inc to i32
  %arrayidx.1 = getelementptr i8, ptr %call.i164, i32 %idxprom.1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv93.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i64 %27, %mul92.2
  %conv93.2 = trunc i64 %shr.2 to i8
  %inc.2 = add i8 %tbl.0174, 3
  %idxprom.2 = zext i8 %inc.1 to i32
  %arrayidx.2 = getelementptr i8, ptr %call.i164, i32 %idxprom.2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv93.2, ptr %arrayidx.2, align 1
  br i1 %is_steinhart, label %for.body89.3, label %if.end84.for.end_crit_edge

if.end84.for.end_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body89.3:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %shr.3 = lshr i64 %27, %mul92.3
  %conv93.3 = trunc i64 %shr.3 to i8
  %inc.3 = add i8 %tbl.0174, 4
  %idxprom.3 = zext i8 %inc.2 to i32
  %arrayidx.3 = getelementptr i8, ptr %call.i164, i32 %idxprom.3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv93.3, ptr %arrayidx.3, align 1
  br label %for.end

for.end:                                          ; preds = %for.body89.3, %if.end84.for.end_crit_edge
  %inc.lcssa = phi i8 [ %inc.2, %if.end84.for.end_crit_edge ], [ %inc.3, %for.body89.3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %temp) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv10
  br i1 %exitcond.not, label %for.end.for.end98_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.for.end98_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end98

for.end98:                                        ; preds = %for.end.for.end98_crit_edge, %for.cond.preheader.for.end98_crit_edge
  %is_steinhart100 = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %is_steinhart100 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool, ptr %is_steinhart100, align 1
  br i1 %is_steinhart, label %if.then103, label %if.else112

if.then103:                                       ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %custom_table_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %custom_table_size, align 4
  %35 = lshr i16 %34, 2
  %conv106 = trunc i16 %35 to i8
  %offset = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv106, ptr %offset, align 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %39 = trunc i32 %38 to i16
  %conv111 = add i16 %34, %39
  store i16 %conv111, ptr %custom_table_size, align 4
  br label %cleanup

if.else112:                                       ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #7
  %offset113 = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %offset113 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %offset113, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else112, %if.then103, %if.end44.cleanup_crit_edge, %do.end39, %do.end28, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end28 ], [ inttoptr (i32 -22 to ptr), %do.end39 ], [ %call.i, %if.else112 ], [ %call.i, %if.then103 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_thermocouple_fault_handler(ptr nocapture noundef readonly %st, i32 noundef %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %result)
  %tobool.not.i = icmp ult i32 %result, 536870912
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58) #8
  br label %__ltc2983_fault_handler.exit

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %result, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.__ltc2983_fault_handler.exit_crit_edge, label %do.end7.i

if.else.i.__ltc2983_fault_handler.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ltc2983_fault_handler.exit

do.end7.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.61) #8
  br label %__ltc2983_fault_handler.exit

__ltc2983_fault_handler.exit:                     ; preds = %do.end7.i, %if.else.i.__ltc2983_fault_handler.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %if.else.i.__ltc2983_fault_handler.exit_crit_edge ], [ 0, %do.end7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_thermocouple_assign_chan(ptr nocapture noundef %st, ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  %__chan_val.i = alloca i32, align 4
  %chan_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_val) #5
  %cold_junction_chan = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %cold_junction_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cold_junction_chan, align 4
  %sensor_config = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_config, align 4
  %shl = shl i32 %1, 22
  %and16 = and i32 %shl, 130023424
  %shl41 = shl i32 %3, 18
  %and42 = and i32 %shl41, 3932160
  %or = or i32 %and42, %and16
  %4 = ptrtoint ptr %chan_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %chan_val, align 4
  %custom = getelementptr inbounds %struct.ltc2983_thermocouple, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %custom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %custom, align 4
  %tobool43.not = icmp eq ptr %6, null
  br i1 %tobool43.not, label %entry.if.end49_crit_edge, label %if.then44

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then44:                                        ; preds = %entry
  %call = call fastcc i32 @__ltc2983_chan_custom_sensor_assign(ptr noundef %st, ptr noundef nonnull %6, ptr noundef nonnull %chan_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool46.not = icmp eq i32 %call, 0
  br i1 %tobool46.not, label %if.then44.if.end49_crit_edge, label %if.then44.cleanup51_crit_edge

if.then44.cleanup51_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %entry.if.end49_crit_edge
  %7 = ptrtoint ptr %chan_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_val, align 4
  %chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %9 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan.i, align 4
  %sub.i = shl i32 %10, 2
  %add.i = add i32 %sub.i, 508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__chan_val.i) #5
  %type.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %shl.i = shl i32 %12, 27
  %or.i = or i32 %shl.i, %8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_thermocouple_assign_chan, %if.then21.i)) #5
          to label %__ltc2983_chan_assign_common.exit [label %if.then21.i], !srcloc !278

if.then21.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %13 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, ptr noundef %14, ptr noundef nonnull @.str.68, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %__ltc2983_chan_assign_common.exit

__ltc2983_chan_assign_common.exit:                ; preds = %if.then21.i, %if.end49
  %15 = ptrtoint ptr %__chan_val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %__chan_val.i, align 4
  %16 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st, align 128
  %call25.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %add.i, ptr noundef nonnull %__chan_val.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__chan_val.i) #5
  br label %cleanup51

cleanup51:                                        ; preds = %__ltc2983_chan_assign_common.exit, %if.then44.cleanup51_crit_edge
  %retval.1 = phi i32 [ %call25.i, %__ltc2983_chan_assign_common.exit ], [ %call, %if.then44.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_val) #5
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ltc2983_chan_custom_sensor_assign(ptr nocapture noundef %st, ptr nocapture noundef %custom, ptr nocapture noundef %chan_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_steinhart = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %custom, i32 0, i32 3
  %0 = ptrtoint ptr %is_steinhart to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_steinhart, align 1, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv = select i1 %tobool.not, i32 6, i32 4
  %spi = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %custom, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %div = udiv i32 %5, 6
  %phi.cast = add nuw nsw i32 %div, 63
  %phi.bo = and i32 %phi.cast, 63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond5 = phi i32 [ %phi.bo, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %offset = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %custom, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp slt i8 %7, 0
  br i1 %cmp, label %if.then, label %cond.end.if.end27_crit_edge

cond.end.if.end27_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %cond.end
  %custom_table_size = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 8
  %8 = ptrtoint ptr %custom_table_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %custom_table_size, align 4
  %conv9 = zext i16 %9 to i32
  %size10 = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %custom, i32 0, i32 1
  %10 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size10, align 4
  %add = add i32 %11, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %add)
  %cmp11 = icmp ugt i32 %add, 384
  br i1 %cmp11, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %conv9, i32 noundef %11) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %div19 = udiv i16 %9, 6
  %conv20 = trunc i16 %div19 to i8
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv20, ptr %offset, align 4
  %13 = ptrtoint ptr %custom_table_size to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %custom_table_size, align 4
  %15 = trunc i32 %11 to i16
  %conv26 = add i16 %14, %15
  store i16 %conv26, ptr %custom_table_size, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end, %cond.end.if.end27_crit_edge
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset, align 4
  %conv29 = sext i8 %17 to i32
  %mul = mul nsw i32 %conv, %conv29
  %add31 = add nsw i32 %mul, 592
  %18 = ptrtoint ptr %chan_val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chan_val, align 4
  %or = or i32 %19, %cond5
  store i32 %or, ptr %chan_val, align 4
  %20 = load i8, ptr %offset, align 4
  %conv81 = sext i8 %20 to i32
  %shl82 = shl nsw i32 %conv81, 6
  %and83 = and i32 %shl82, 4032
  %or84 = or i32 %and83, %or
  store i32 %or84, ptr %chan_val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_custom_sensor_assign.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ltc2983_chan_custom_sensor_assign, %if.then90)) #5
          to label %do.end96 [label %if.then90], !srcloc !278

if.then90:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %offset, align 4
  %conv92 = sext i8 %22 to i32
  %size93 = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %custom, i32 0, i32 1
  %23 = ptrtoint ptr %size93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size93, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_custom_sensor_assign.__UNIQUE_ID_ddebug250, ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %add31, i32 noundef %conv92, i32 noundef %24) #5
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %if.end27
  %25 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %st, align 128
  %27 = ptrtoint ptr %custom to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %custom, align 4
  %size97 = getelementptr inbounds %struct.ltc2983_custom_sensor, ptr %custom, i32 0, i32 1
  %29 = ptrtoint ptr %size97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size97, align 4
  %call98 = tail call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %add31, ptr noundef %28, i32 noundef %30) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call98, %do.end96 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_common_fault_handler(ptr nocapture noundef readonly %st, i32 noundef %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %result)
  %tobool.not.i = icmp ult i32 %result, 1073741824
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.58) #8
  br label %__ltc2983_fault_handler.exit

if.else.i:                                        ; preds = %entry
  %and2.i = and i32 %result, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.__ltc2983_fault_handler.exit_crit_edge, label %do.end7.i

if.else.i.__ltc2983_fault_handler.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ltc2983_fault_handler.exit

do.end7.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.61) #8
  br label %__ltc2983_fault_handler.exit

__ltc2983_fault_handler.exit:                     ; preds = %do.end7.i, %if.else.i.__ltc2983_fault_handler.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %if.else.i.__ltc2983_fault_handler.exit_crit_edge ], [ 0, %do.end7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_rtd_assign_chan(ptr nocapture noundef %st, ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  %__chan_val.i = alloca i32, align 4
  %chan_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_val) #5
  %r_sense_chan = getelementptr inbounds %struct.ltc2983_rtd, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %r_sense_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_sense_chan, align 4
  %sensor_config = getelementptr inbounds %struct.ltc2983_rtd, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_config, align 4
  %excitation_current = getelementptr inbounds %struct.ltc2983_rtd, ptr %sensor, i32 0, i32 4
  %4 = ptrtoint ptr %excitation_current to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %excitation_current, align 4
  %rtd_curve = getelementptr inbounds %struct.ltc2983_rtd, ptr %sensor, i32 0, i32 5
  %6 = ptrtoint ptr %rtd_curve to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtd_curve, align 4
  %shl67 = shl i32 %5, 14
  %and68 = and i32 %shl67, 245760
  %shl41 = shl i32 %3, 18
  %and42 = and i32 %shl41, 3932160
  %shl = shl i32 %1, 22
  %and16 = and i32 %shl, 130023424
  %or = or i32 %and42, %and16
  %or69 = or i32 %and68, %or
  %shl94 = shl i32 %7, 12
  %and95 = and i32 %shl94, 12288
  %or96 = or i32 %and95, %or69
  %8 = ptrtoint ptr %chan_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or96, ptr %chan_val, align 4
  %custom = getelementptr inbounds %struct.ltc2983_rtd, ptr %sensor, i32 0, i32 1
  %9 = ptrtoint ptr %custom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %custom, align 4
  %tobool97.not = icmp eq ptr %10, null
  br i1 %tobool97.not, label %entry.if.end103_crit_edge, label %if.then98

entry.if.end103_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then98:                                        ; preds = %entry
  %call = call fastcc i32 @__ltc2983_chan_custom_sensor_assign(ptr noundef %st, ptr noundef nonnull %10, ptr noundef nonnull %chan_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool100.not = icmp eq i32 %call, 0
  br i1 %tobool100.not, label %if.then98.if.end103_crit_edge, label %if.then98.cleanup105_crit_edge

if.then98.cleanup105_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup105

if.then98.if.end103_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.end103:                                        ; preds = %if.then98.if.end103_crit_edge, %entry.if.end103_crit_edge
  %11 = ptrtoint ptr %chan_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan_val, align 4
  %chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %13 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan.i, align 4
  %sub.i = shl i32 %14, 2
  %add.i = add i32 %sub.i, 508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__chan_val.i) #5
  %type.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %shl.i = shl i32 %16, 27
  %or.i = or i32 %shl.i, %12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_rtd_assign_chan, %if.then21.i)) #5
          to label %__ltc2983_chan_assign_common.exit [label %if.then21.i], !srcloc !278

if.then21.i:                                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %17 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, ptr noundef %18, ptr noundef nonnull @.str.68, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %__ltc2983_chan_assign_common.exit

__ltc2983_chan_assign_common.exit:                ; preds = %if.then21.i, %if.end103
  %19 = ptrtoint ptr %__chan_val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %__chan_val.i, align 4
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 128
  %call25.i = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef %add.i, ptr noundef nonnull %__chan_val.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__chan_val.i) #5
  br label %cleanup105

cleanup105:                                       ; preds = %__ltc2983_chan_assign_common.exit, %if.then98.cleanup105_crit_edge
  %retval.1 = phi i32 [ %call25.i, %__ltc2983_chan_assign_common.exit ], [ %call, %if.then98.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_val) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_thermistor_assign_chan(ptr nocapture noundef %st, ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  %__chan_val.i = alloca i32, align 4
  %chan_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan_val) #5
  %r_sense_chan = getelementptr inbounds %struct.ltc2983_thermistor, ptr %sensor, i32 0, i32 3
  %0 = ptrtoint ptr %r_sense_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_sense_chan, align 4
  %sensor_config = getelementptr inbounds %struct.ltc2983_thermistor, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_config, align 4
  %excitation_current = getelementptr inbounds %struct.ltc2983_thermistor, ptr %sensor, i32 0, i32 4
  %4 = ptrtoint ptr %excitation_current to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %excitation_current, align 4
  %shl41 = shl i32 %3, 19
  %and42 = and i32 %shl41, 3670016
  %shl = shl i32 %1, 22
  %and16 = and i32 %shl, 130023424
  %or = or i32 %and42, %and16
  %shl67 = shl i32 %5, 15
  %and68 = and i32 %shl67, 491520
  %or69 = or i32 %and68, %or
  %6 = ptrtoint ptr %chan_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or69, ptr %chan_val, align 4
  %custom = getelementptr inbounds %struct.ltc2983_thermistor, ptr %sensor, i32 0, i32 1
  %7 = ptrtoint ptr %custom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %custom, align 4
  %tobool70.not = icmp eq ptr %8, null
  br i1 %tobool70.not, label %entry.if.end76_crit_edge, label %if.then71

entry.if.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then71:                                        ; preds = %entry
  %call = call fastcc i32 @__ltc2983_chan_custom_sensor_assign(ptr noundef %st, ptr noundef nonnull %8, ptr noundef nonnull %chan_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool73.not = icmp eq i32 %call, 0
  br i1 %tobool73.not, label %if.then71.if.end76_crit_edge, label %if.then71.cleanup78_crit_edge

if.then71.cleanup78_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup78

if.then71.if.end76_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.end76:                                         ; preds = %if.then71.if.end76_crit_edge, %entry.if.end76_crit_edge
  %9 = ptrtoint ptr %chan_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan_val, align 4
  %chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan.i, align 4
  %sub.i = shl i32 %12, 2
  %add.i = add i32 %sub.i, 508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__chan_val.i) #5
  %type.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  %shl.i = shl i32 %14, 27
  %or.i = or i32 %shl.i, %10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_thermistor_assign_chan, %if.then21.i)) #5
          to label %__ltc2983_chan_assign_common.exit [label %if.then21.i], !srcloc !278

if.then21.i:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %15 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, ptr noundef %16, ptr noundef nonnull @.str.68, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %__ltc2983_chan_assign_common.exit

__ltc2983_chan_assign_common.exit:                ; preds = %if.then21.i, %if.end76
  %17 = ptrtoint ptr %__chan_val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i, ptr %__chan_val.i, align 4
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 128
  %call25.i = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef %add.i, ptr noundef nonnull %__chan_val.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__chan_val.i) #5
  br label %cleanup78

cleanup78:                                        ; preds = %__ltc2983_chan_assign_common.exit, %if.then71.cleanup78_crit_edge
  %retval.1 = phi i32 [ %call25.i, %__ltc2983_chan_assign_common.exit ], [ %call, %if.then71.cleanup78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan_val) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_diode_assign_chan(ptr nocapture noundef readonly %st, ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  %__chan_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_config = getelementptr inbounds %struct.ltc2983_diode, ptr %sensor, i32 0, i32 1
  %0 = ptrtoint ptr %sensor_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sensor_config, align 4
  %excitation_current = getelementptr inbounds %struct.ltc2983_diode, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %excitation_current to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %excitation_current, align 4
  %ideal_factor_value = getelementptr inbounds %struct.ltc2983_diode, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %ideal_factor_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ideal_factor_value, align 4
  %chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan.i, align 4
  %sub.i = shl i32 %7, 2
  %add.i = add i32 %sub.i, 508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__chan_val.i) #5
  %type.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %shl = shl i32 %1, 24
  %and16 = and i32 %shl, 117440512
  %shl41 = shl i32 %3, 22
  %and42 = and i32 %shl41, 12582912
  %or = or i32 %and42, %and16
  %and68 = and i32 %5, 4194303
  %or69 = or i32 %or, %and68
  %shl.i = shl i32 %9, 27
  %or.i = or i32 %shl.i, %or69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_diode_assign_chan, %if.then21.i)) #5
          to label %__ltc2983_chan_assign_common.exit [label %if.then21.i], !srcloc !278

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %10 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, ptr noundef %11, ptr noundef nonnull @.str.68, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %__ltc2983_chan_assign_common.exit

__ltc2983_chan_assign_common.exit:                ; preds = %if.then21.i, %entry
  %12 = ptrtoint ptr %__chan_val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %__chan_val.i, align 4
  %13 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st, align 128
  %call25.i = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef %add.i, ptr noundef nonnull %__chan_val.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__chan_val.i) #5
  ret i32 %call25.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_r_sense_assign_chan(ptr nocapture noundef readonly %st, ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  %__chan_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %r_sense_val = getelementptr inbounds %struct.ltc2983_rsense, ptr %sensor, i32 0, i32 1
  %0 = ptrtoint ptr %r_sense_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_sense_val, align 4
  %chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan.i, align 4
  %sub.i = shl i32 %3, 2
  %add.i = add i32 %sub.i, 508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__chan_val.i) #5
  %type.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %and16 = and i32 %1, 134217727
  %shl.i = shl i32 %5, 27
  %or.i = or i32 %shl.i, %and16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_r_sense_assign_chan, %if.then21.i)) #5
          to label %__ltc2983_chan_assign_common.exit [label %if.then21.i], !srcloc !278

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %6 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, ptr noundef %7, ptr noundef nonnull @.str.68, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %__ltc2983_chan_assign_common.exit

__ltc2983_chan_assign_common.exit:                ; preds = %if.then21.i, %entry
  %8 = ptrtoint ptr %__chan_val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %__chan_val.i, align 4
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st, align 128
  %call25.i = call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef %add.i, ptr noundef nonnull %__chan_val.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__chan_val.i) #5
  ret i32 %call25.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_adc_assign_chan(ptr nocapture noundef readonly %st, ptr nocapture noundef readonly %sensor) #2 align 64 {
entry:
  %__chan_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %single_ended = getelementptr inbounds %struct.ltc2983_adc, ptr %sensor, i32 0, i32 1
  %0 = ptrtoint ptr %single_ended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %single_ended, align 4, !range !282
  %chan.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan.i, align 4
  %sub.i = shl i32 %3, 2
  %add.i = add i32 %sub.i, 508
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__chan_val.i) #5
  %type.i = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %6, 26
  %shl.i = shl i32 %5, 27
  %or.i = or i32 %shl.i, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_adc_assign_chan, %if.then21.i)) #5
          to label %__ltc2983_chan_assign_common.exit [label %if.then21.i], !srcloc !278

if.then21.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %7 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, ptr noundef %8, ptr noundef nonnull @.str.68, i32 noundef %add.i, i32 noundef %or.i) #5
  br label %__ltc2983_chan_assign_common.exit

__ltc2983_chan_assign_common.exit:                ; preds = %if.then21.i, %entry
  %9 = ptrtoint ptr %__chan_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__chan_val.i, align 4
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 128
  %call25.i = call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef %add.i, ptr noundef nonnull %__chan_val.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__chan_val.i) #5
  ret i32 %call25.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %num_channels = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_channels, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spi = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.129, i32 noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %sensors = getelementptr inbounds %struct.ltc2983_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensors, align 32
  %11 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call fastcc i32 @ltc2983_chan_read(ptr noundef %1, ptr noundef %14, ptr noundef %val)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool.not, i32 1, i32 %call4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %16, label %sw.bb6.cleanup_crit_edge [
    i32 9, label %sw.bb7
    i32 0, label %sw.bb8
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1000, ptr %val, align 4
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1000, ptr %val, align 4
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2097152, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb7, %sw.bb6.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 10, %sw.bb8 ], [ 10, %sw.bb7 ], [ %., %sw.bb ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %readval) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %writeval) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2983_chan_read(ptr noundef %st, ptr nocapture noundef readonly %sensor, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.ltc2983_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  %and31 = and i32 %1, 31
  %or = or i32 %and31, 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc2983_chan_read.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ltc2983_chan_read, %if.then37)) #5
          to label %do.end41 [label %if.then37], !srcloc !278

if.then37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spi = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc2983_chan_read.__UNIQUE_ID_ddebug421, ptr noundef %3, ptr noundef nonnull @.str.132, i32 noundef %5, i32 noundef %or) #5
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %entry
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 128
  %call42 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %do.end41.cleanup_crit_edge

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %do.end41
  %completion = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 3
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion, align 4
  %call48 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %spi54 = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %9 = ptrtoint ptr %spi54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi54, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.133) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end45
  %11 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st, align 128
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  %sub = shl i32 %14, 2
  %add = add i32 %sub, 12
  %temp = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 12
  %call59 = tail call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %add, ptr noundef %temp, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp, align 128
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  %and64 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %spi70 = getelementptr inbounds %struct.ltc2983_data, ptr %st, i32 0, i32 1
  %18 = ptrtoint ptr %spi70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.135) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  %20 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sensor, align 4
  %call73 = tail call i32 %21(ptr noundef %st, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and77 = shl i32 %23, 8
  %shr.i = ashr exact i32 %and77, 8
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end72.cleanup_crit_edge, %do.end69, %if.end56.cleanup_crit_edge, %do.end53, %do.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end76 ], [ -5, %do.end69 ], [ -110, %do.end53 ], [ %call42, %do.end41.cleanup_crit_edge ], [ %call59, %if.end56.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 151) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2983_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #5
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dummy, align 4, !annotation !279
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %dummy) #5
  %call3 = call fastcc i32 @ltc2983_setup(ptr noundef %1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #5
  ret i32 %call3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !153, !155, !156, !157, !159, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !181, !183, !184, !185, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !205, !207, !208, !209, !211, !212, !214, !216, !218, !219, !220, !222, !223, !225, !227, !228, !229, !230, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275, !276}
!llvm.ident = !{!277}

!0 = !{ptr @__initcall__kmod_ltc2983__433_1575_ltc2983_driver_init6, !1, !"__initcall__kmod_ltc2983__433_1575_ltc2983_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1575, i32 1}
!2 = !{ptr @__exitcall_ltc2983_driver_exit, !1, !"__exitcall_ltc2983_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author434, !4, !"__UNIQUE_ID_author434", i1 false, i1 false}
!4 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1577, i32 1}
!5 = !{ptr @__UNIQUE_ID_description435, !6, !"__UNIQUE_ID_description435", i1 false, i1 false}
!6 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1578, i32 1}
!7 = !{ptr @__UNIQUE_ID_file436, !8, !"__UNIQUE_ID_file436", i1 false, i1 false}
!8 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1579, i32 1}
!9 = !{ptr @__UNIQUE_ID_license437, !8, !"__UNIQUE_ID_license437", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1567, i32 11}
!12 = !{ptr @ltc2983_driver, !13, !"ltc2983_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1565, i32 26}
!14 = !{ptr @ltc2983_id_table, !15, !"ltc2983_id_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1553, i32 35}
!16 = !{ptr @ltc2983_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1488, i32 15}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1490, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ltc2983_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ltc2983_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ltc2983_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1494, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1503, i32 48}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1520, i32 3}
!34 = !{ptr @ltc2983_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ltc2983_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ltc2983_regmap_config, !37, !"ltc2983_regmap_config", i1 false, i1 false}
!37 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1460, i32 35}
!38 = !{ptr @ltc2983_reg_table, !39, !"ltc2983_reg_table", i1 false, i1 false}
!39 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1451, i32 41}
!40 = !{ptr @ltc2983_reg_ranges, !41, !"ltc2983_reg_ranges", i1 false, i1 false}
!41 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1438, i32 34}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1271, i32 37}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1274, i32 37}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1279, i32 3}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ltc2983_parse_dt._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ltc2983_parse_dt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1292, i32 37}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1294, i32 4}
!58 = !{ptr @ltc2983_parse_dt._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ltc2983_parse_dt._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1302, i32 4}
!62 = !{ptr @ltc2983_parse_dt._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ltc2983_parse_dt._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1307, i32 4}
!66 = !{ptr @ltc2983_parse_dt._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ltc2983_parse_dt._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1311, i32 37}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1314, i32 4}
!72 = !{ptr @ltc2983_parse_dt._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ltc2983_parse_dt._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1319, i32 3}
!76 = !{ptr @ltc2983_parse_dt.__UNIQUE_ID_ddebug422, !75, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1345, i32 4}
!79 = !{ptr @ltc2983_parse_dt._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ltc2983_parse_dt._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1351, i32 4}
!83 = !{ptr @ltc2983_parse_dt._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ltc2983_parse_dt._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/temperature/ltc2983.c", i32 614, i32 35}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/temperature/ltc2983.c", i32 617, i32 36}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/temperature/ltc2983.c", i32 638, i32 4}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ltc2983_thermocouple_new._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ltc2983_thermocouple_new._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/temperature/ltc2983.c", i32 648, i32 3}
!96 = !{ptr @ltc2983_thermocouple_new._entry.42, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ltc2983_thermocouple_new._entry_ptr.44, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/temperature/ltc2983.c", i32 654, i32 36}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/temperature/ltc2983.c", i32 665, i32 4}
!102 = !{ptr @ltc2983_thermocouple_new._entry.46, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ltc2983_thermocouple_new._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/temperature/ltc2983.c", i32 673, i32 26}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/temperature/ltc2983.c", i32 401, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__ltc2983_custom_sensor_new._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @__ltc2983_custom_sensor_new._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/temperature/ltc2983.c", i32 412, i32 3}
!113 = !{ptr @__ltc2983_custom_sensor_new._entry.52, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @__ltc2983_custom_sensor_new._entry_ptr.54, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/temperature/ltc2983.c", i32 420, i32 3}
!117 = !{ptr @__ltc2983_custom_sensor_new._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @__ltc2983_custom_sensor_new._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/temperature/ltc2983.c", i32 302, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @__ltc2983_fault_handler._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @__ltc2983_fault_handler._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/temperature/ltc2983.c", i32 306, i32 3}
!126 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__ltc2983_fault_handler._entry.60, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @__ltc2983_fault_handler._entry_ptr.63, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/temperature/ltc2983.c", i32 357, i32 4}
!131 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @__ltc2983_chan_custom_sensor_assign._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @__ltc2983_chan_custom_sensor_assign._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/temperature/ltc2983.c", i32 373, i32 2}
!136 = !{ptr @__ltc2983_chan_custom_sensor_assign.__UNIQUE_ID_ddebug250, !135, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/temperature/ltc2983.c", i32 320, i32 2}
!139 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @__ltc2983_chan_assign_common.__UNIQUE_ID_ddebug239, !138, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/temperature/ltc2983.c", i32 706, i32 36}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/temperature/ltc2983.c", i32 708, i32 3}
!145 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ltc2983_rtd_new._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @ltc2983_rtd_new._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @ltc2983_rtd_new._entry.72, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/iio/temperature/ltc2983.c", i32 714, i32 3}
!150 = !{ptr @ltc2983_rtd_new._entry_ptr.73, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/temperature/ltc2983.c", i32 718, i32 36}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/temperature/ltc2983.c", i32 735, i32 4}
!155 = !{ptr @ltc2983_rtd_new._entry.75, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ltc2983_rtd_new._entry_ptr.77, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/temperature/ltc2983.c", i32 741, i32 35}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/temperature/ltc2983.c", i32 743, i32 36}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/iio/temperature/ltc2983.c", i32 745, i32 5}
!163 = !{ptr @ltc2983_rtd_new._entry.80, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ltc2983_rtd_new._entry_ptr.82, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/temperature/ltc2983.c", i32 774, i32 4}
!167 = !{ptr @ltc2983_rtd_new._entry.83, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ltc2983_rtd_new._entry_ptr.85, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/temperature/ltc2983.c", i32 783, i32 4}
!171 = !{ptr @ltc2983_rtd_new._entry.86, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ltc2983_rtd_new._entry_ptr.88, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/temperature/ltc2983.c", i32 792, i32 4}
!175 = !{ptr @ltc2983_rtd_new._entry.89, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ltc2983_rtd_new._entry_ptr.91, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/iio/temperature/ltc2983.c", i32 803, i32 10}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/iio/temperature/ltc2983.c", i32 815, i32 36}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/temperature/ltc2983.c", i32 847, i32 4}
!183 = !{ptr @ltc2983_rtd_new._entry.94, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @ltc2983_rtd_new._entry_ptr.96, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/temperature/ltc2983.c", i32 855, i32 30}
!187 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/temperature/ltc2983.c", i32 881, i32 3}
!189 = !{ptr @ltc2983_thermistor_new._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ltc2983_thermistor_new._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/temperature/ltc2983.c", i32 887, i32 3}
!193 = !{ptr @ltc2983_thermistor_new._entry.99, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ltc2983_thermistor_new._entry_ptr.101, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.103, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/iio/temperature/ltc2983.c", i32 905, i32 3}
!197 = !{ptr @ltc2983_thermistor_new._entry.102, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @ltc2983_thermistor_new._entry_ptr.104, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.105, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/iio/temperature/ltc2983.c", i32 919, i32 15}
!201 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/iio/temperature/ltc2983.c", i32 921, i32 15}
!203 = !{ptr @.str.107, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iio/temperature/ltc2983.c", i32 937, i32 36}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/iio/temperature/ltc2983.c", i32 953, i32 5}
!207 = !{ptr @ltc2983_thermistor_new._entry.108, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ltc2983_thermistor_new._entry_ptr.110, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @ltc2983_thermistor_new._entry.111, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/iio/temperature/ltc2983.c", i32 994, i32 4}
!211 = !{ptr @ltc2983_thermistor_new._entry_ptr.112, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.113, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1025, i32 35}
!214 = !{ptr @.str.114, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1028, i32 35}
!216 = !{ptr @.str.115, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1034, i32 3}
!218 = !{ptr @ltc2983_diode_new._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @ltc2983_diode_new._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @ltc2983_diode_new._entry.116, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1060, i32 4}
!222 = !{ptr @ltc2983_diode_new._entry_ptr.117, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1067, i32 30}
!225 = !{ptr @.str.119, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1089, i32 3}
!227 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @ltc2983_r_sense_new._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @ltc2983_r_sense_new._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1094, i32 36}
!232 = !{ptr @.str.123, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1096, i32 3}
!234 = !{ptr @ltc2983_r_sense_new._entry.122, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ltc2983_r_sense_new._entry_ptr.124, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.125, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1128, i32 3}
!238 = !{ptr @.str.126, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @ltc2983_adc_new._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @ltc2983_adc_new._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.127, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1380, i32 3}
!243 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @ltc2983_setup._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @ltc2983_setup._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @ltc2983_iio_info, !247, !"ltc2983_iio_info", i1 false, i1 false}
!247 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1469, i32 31}
!248 = !{ptr @.str.129, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1199, i32 3}
!250 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @ltc2983_read_raw._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @ltc2983_read_raw._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.131, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1148, i32 2}
!255 = !{ptr @.str.132, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @ltc2983_chan_read.__UNIQUE_ID_ddebug421, !254, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!257 = !{ptr @.str.133, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1165, i32 3}
!259 = !{ptr @ltc2983_chan_read._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @ltc2983_chan_read._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.135, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1178, i32 3}
!263 = !{ptr @ltc2983_chan_read._entry.134, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @ltc2983_chan_read._entry_ptr.136, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @ltc2983_of_match, !266, !"ltc2983_of_match", i1 false, i1 false}
!266 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1559, i32 34}
!267 = !{ptr @ltc2983_pm_ops, !268, !"ltc2983_pm_ops", i1 false, i1 false}
!268 = !{!"../drivers/iio/temperature/ltc2983.c", i32 1551, i32 8}
!269 = !{i32 1, !"wchar_size", i32 2}
!270 = !{i32 1, !"min_enum_size", i32 4}
!271 = !{i32 8, !"branch-target-enforcement", i32 0}
!272 = !{i32 8, !"sign-return-address", i32 0}
!273 = !{i32 8, !"sign-return-address-all", i32 0}
!274 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!275 = !{i32 7, !"uwtable", i32 1}
!276 = !{i32 7, !"frame-pointer", i32 2}
!277 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!278 = !{i64 2148402706, i64 2148402711, i64 2148402724, i64 2148402768, i64 2148402802, i64 2148402823}
!279 = !{!"auto-init"}
!280 = !{i64 942062, i64 942089}
!281 = !{i64 942757, i64 942784, i64 942817, i64 942838, i64 942865, i64 942891}
!282 = !{i8 0, i8 2}
