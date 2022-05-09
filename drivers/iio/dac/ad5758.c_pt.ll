; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5758.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5758.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ad5758_range = type { i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.ad5758_state = type { ptr, %struct.mutex, ptr, %struct.ad5758_range, i32, i32, i32, i8, [3 x i32] }

@__initcall__kmod_ad5758__233_900_ad5758_driver_init6 = internal global ptr @ad5758_driver_init, section ".initcall6.init", align 4
@ad5758_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5758_id, ptr @ad5758_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad5758_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5758_driver_exit = internal global ptr @ad5758_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [51 x i8] c"ad5758.author=Stefan Popa <stefan.popa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [45 x i8] c"ad5758.description=Analog Devices AD5758 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [35 x i8] c"ad5758.file=drivers/iio/dac/ad5758\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [22 x i8] c"ad5758.license=GPL v2\00", section ".modinfo", align 1
@ad5758_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5758\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5758\00", [25 x i8] zeroinitializer }, align 32
@ad5758_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad5758\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad5758_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5758_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5758_read_raw, ptr null, ptr null, ptr @ad5758_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad5758_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5758_voltage_ch = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5758_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5758_current_ch = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5758_ext_info, ptr null, ptr null, i8 96 }], [40 x i8] zeroinitializer }, align 32
@ad5758_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 872, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AD5758 init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5758_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5758.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5758_probe._entry_ptr = internal global ptr @ad5758_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,dc-dc-ilim-microamp\00", [40 x i8] zeroinitializer }, align 32
@ad5758_parse_dt.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad5758_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Missing \22dc-dc-ilim-microamp\22 property\0A\00", [56 x i8] zeroinitializer }, align 32
@ad5758_dc_dc_ilim = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 150000, i32 200000, i32 250000, i32 300000, i32 350000, i32 400000], [40 x i8] zeroinitializer }, align 32
@ad5758_parse_dt.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.10, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dc-dc-ilim out of range\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,dc-dc-mode\00", [17 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.4, i32 720, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing \22dc-dc-mode\22 property\0A\00", [33 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry_ptr = internal global ptr @ad5758_parse_dt._entry, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adi,range-microvolt\00", [44 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.4, i32 733, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing \22range-microvolt\22 property\0A\00", [60 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry_ptr.16 = internal global ptr @ad5758_parse_dt._entry.14, section ".printk_index", align 4
@ad5758_voltage_range = internal constant { [4 x %struct.ad5758_range], [48 x i8] } { [4 x %struct.ad5758_range] [%struct.ad5758_range { i32 0, i32 0, i32 5000000 }, %struct.ad5758_range { i32 1, i32 0, i32 10000000 }, %struct.ad5758_range { i32 2, i32 -5000000, i32 5000000 }, %struct.ad5758_range { i32 3, i32 -10000000, i32 10000000 }], [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,range-microamp\00", [45 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.4, i32 744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Missing \22range-microamp\22 property\0A\00", [61 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry_ptr.20 = internal global ptr @ad5758_parse_dt._entry.18, section ".printk_index", align 4
@ad5758_current_range = internal constant { [6 x %struct.ad5758_range], [56 x i8] } { [6 x %struct.ad5758_range] [%struct.ad5758_range { i32 8, i32 0, i32 20000 }, %struct.ad5758_range { i32 9, i32 0, i32 24000 }, %struct.ad5758_range { i32 10, i32 4, i32 24000 }, %struct.ad5758_range { i32 11, i32 -20000, i32 20000 }, %struct.ad5758_range { i32 12, i32 -24000, i32 24000 }, %struct.ad5758_range { i32 13, i32 -1000, i32 22000 }], [56 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.4, i32 753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"range invalid\0A\00", [17 x i8] zeroinitializer }, align 32
@ad5758_parse_dt._entry_ptr.23 = internal global ptr @ad5758_parse_dt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adi,slew-time-us\00", [47 x i8] zeroinitializer }, align 32
@ad5758_parse_dt.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.25, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing \22slew-time-us\22 property\0A\00", [63 x i8] zeroinitializer }, align 32
@ad5758_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.26, i32 1, ptr @ad5758_read_powerdown, ptr @ad5758_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ad5758_calib_mem_refresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to initiate a calibration memory refresh\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ad5758_calib_mem_refresh\00", [39 x i8] zeroinitializer }, align 32
@ad5758_calib_mem_refresh._entry_ptr = internal global ptr @ad5758_calib_mem_refresh._entry, section ".printk_index", align 4
@ad5758_wait_for_task_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error reading bit 0x%x in 0x%x register\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ad5758_wait_for_task_complete\00", [34 x i8] zeroinitializer }, align 32
@ad5758_wait_for_task_complete._entry_ptr = internal global ptr @ad5758_wait_for_task_complete._entry, section ".printk_index", align 4
@ad5758_sr_clk = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 240000, i32 200000, i32 150000, i32 128000, i32 64000, i32 32000, i32 16000, i32 8000, i32 4000, i32 2000, i32 1000, i32 512, i32 256, i32 128, i32 64, i32 16], [32 x i8] zeroinitializer }, align 32
@ad5758_sr_step = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 12, i32 64, i32 120, i32 256, i32 500, i32 1820, i32 2048], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ad5758_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 891, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"ad5758_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 879, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 893, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"ad5758_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 885, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 854, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"ad5758_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 619, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"ad5758_voltage_ch\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 645, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"ad5758_current_ch\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 649, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 872, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 703, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 705, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"ad5758_dc_dc_ilim\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 182, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 712, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 717, i32 48 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 720, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 729, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 732, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"ad5758_voltage_range\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 157, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 740, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 743, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"ad5758_current_range\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 164, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 753, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 757, i32 48 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 759, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"ad5758_ext_info\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 625, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 627, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 576, i32 25 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 772, i32 58 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 290, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 277, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"ad5758_sr_clk\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 173, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"ad5758_sr_step\00", align 1
@___asan_gen_.172 = private constant [28 x i8] c"../drivers/iio/dac/ad5758.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 178, i32 18 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_ad5758_driver_exit, ptr @__initcall__kmod_ad5758__233_900_ad5758_driver_init6, ptr @ad5758_calib_mem_refresh._entry, ptr @ad5758_calib_mem_refresh._entry_ptr, ptr @ad5758_driver_exit, ptr @ad5758_parse_dt._entry, ptr @ad5758_parse_dt._entry.14, ptr @ad5758_parse_dt._entry.18, ptr @ad5758_parse_dt._entry.21, ptr @ad5758_parse_dt._entry_ptr, ptr @ad5758_parse_dt._entry_ptr.16, ptr @ad5758_parse_dt._entry_ptr.20, ptr @ad5758_parse_dt._entry_ptr.23, ptr @ad5758_probe._entry, ptr @ad5758_probe._entry_ptr, ptr @ad5758_wait_for_task_complete._entry, ptr @ad5758_wait_for_task_complete._entry_ptr, ptr @ad5758_driver, ptr @ad5758_id, ptr @.str, ptr @ad5758_of_match, ptr @ad5758_probe.__key, ptr @.str.1, ptr @ad5758_info, ptr @ad5758_voltage_ch, ptr @ad5758_current_ch, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ad5758_dc_dc_ilim, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @ad5758_voltage_range, ptr @.str.17, ptr @.str.19, ptr @ad5758_current_range, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @ad5758_ext_info, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ad5758_sr_clk, ptr @ad5758_sr_step], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_voltage_ch to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_current_ch to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_dc_dc_ilim to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_parse_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_voltage_range to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_current_range to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_calib_mem_refresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_wait_for_task_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_sr_clk to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5758_sr_step to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5758_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5758_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5758_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i.i.i119.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i120.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i107.i = alloca %struct.spi_message, align 4
  %t.i.i108.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i92.i = alloca %struct.spi_message, align 4
  %t.i.i93.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i5.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i6.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 140) #7
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
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %1, align 4
  %lock = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5758_probe.__key) #7
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %name4, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ad5758_info, ptr %info, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_channels, align 4
  %call5 = tail call fastcc i32 @ad5758_parse_dt(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dc_dc_mode = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dc_dc_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dc_dc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8 = icmp eq i32 %9, 2
  %spec.select = select i1 %cmp8, ptr @ad5758_voltage_ch, ptr @ad5758_current_ch
  %10 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select, ptr %10, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef 7) #7
  %gpio_reset.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %gpio_reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i to i32
  br label %ad5758_init.exit

if.end.i:                                         ; preds = %if.end7
  %d32.i.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1879024582, ptr %d32.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %19 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %d32.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %23 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.ad5758_crc_disable.exit.i_crit_edge

if.end.i.ad5758_crc_disable.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_crc_disable.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5758_crc_disable.exit.i

ad5758_crc_disable.exit.i:                        ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.ad5758_crc_disable.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i, label %ad5758_crc_disable.exit.i.do.end17_crit_edge, label %if.end7.i

ad5758_crc_disable.exit.i.do.end17_crit_edge:     ; preds = %ad5758_crc_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end7.i:                                        ; preds = %ad5758_crc_disable.exit.i
  %33 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpio_reset.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %ad5758_reset.exit.thread140.i

ad5758_reset.exit.thread140.i:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %34, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %35 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_reset.i, align 4
  call void @gpiod_set_value(ptr noundef %36, i32 noundef 1) #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  br label %if.end11.i

if.else.i.i:                                      ; preds = %if.end7.i
  %37 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -2011825664, ptr %d32.i.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #7
  %40 = getelementptr inbounds i8, ptr %t.i.i.i.i.i, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 92)
  %42 = ptrtoint ptr %t.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %d32.i.i, ptr %t.i.i.i.i.i, align 4
  %len1.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %len1.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #7
  %44 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i.i, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10
  %48 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i.i, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i.i, label %if.else.i.i.ad5758_spi_reg_write.exit.i.i.i_crit_edge

if.else.i.i.ad5758_spi_reg_write.exit.i.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_reg_write.exit.i.i.i

if.end.i.i.i.i.i.i.i.i.i.i:                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i.i, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %msg.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i.i, align 4
  br label %ad5758_spi_reg_write.exit.i.i.i

ad5758_spi_reg_write.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i.i.i.i.i, %if.else.i.i.ad5758_spi_reg_write.exit.i.i.i_crit_edge
  %call.i.i.i.i.i.i = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %msg.i.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %ad5758_spi_reg_write.exit.i.i.i.do.end17_crit_edge, label %if.end.i.i.i

ad5758_spi_reg_write.exit.i.i.i.do.end17_crit_edge: ; preds = %ad5758_spi_reg_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end.i.i.i:                                     ; preds = %ad5758_spi_reg_write.exit.i.i.i
  %54 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -2001776384, ptr %d32.i.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i6.i.i.i) #7
  %57 = getelementptr inbounds i8, ptr %t.i.i6.i.i.i, i32 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 92)
  %59 = ptrtoint ptr %t.i.i6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %d32.i.i, ptr %t.i.i6.i.i.i, align 4
  %len1.i.i8.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i6.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %len1.i.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %len1.i.i8.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i5.i.i.i) #7
  %61 = getelementptr inbounds i8, ptr %msg.i.i.i5.i.i.i, i32 8
  %62 = call ptr @memset(ptr %61, i32 0, i32 40)
  %63 = ptrtoint ptr %msg.i.i.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %msg.i.i.i5.i.i.i, ptr %msg.i.i.i5.i.i.i, align 4
  %prev.i.i.i.i.i.i.i9.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i5.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i5.i.i.i, ptr %prev.i.i.i.i.i.i.i9.i.i.i, align 4
  %resources.i.i.i.i.i.i10.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i5.i.i.i, i32 0, i32 10
  %65 = ptrtoint ptr %resources.i.i.i.i.i.i10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %resources.i.i.i.i.i.i10.i.i.i, ptr %resources.i.i.i.i.i.i10.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i11.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i5.i.i.i, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev.i2.i.i.i.i.i.i11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %resources.i.i.i.i.i.i10.i.i.i, ptr %prev.i2.i.i.i.i.i.i11.i.i.i, align 4
  %transfer_list.i.i.i.i.i12.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i6.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i13.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i12.i.i.i, ptr noundef nonnull %msg.i.i.i5.i.i.i, ptr noundef nonnull %msg.i.i.i5.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i13.i.i.i, label %if.end.i.i.i.i.i.i.i15.i.i.i, label %if.end.i.i.i.ad5758_reset.exit.i_crit_edge

if.end.i.i.i.ad5758_reset.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_reset.exit.i

if.end.i.i.i.i.i.i.i15.i.i.i:                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.i.i.i.i12.i.i.i, ptr %prev.i.i.i.i.i.i.i9.i.i.i, align 4
  %68 = ptrtoint ptr %transfer_list.i.i.i.i.i12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i5.i.i.i, ptr %transfer_list.i.i.i.i.i12.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i14.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i6.i.i.i, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i.i.i.i14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i.i5.i.i.i, ptr %prev3.i.i.i.i.i.i.i14.i.i.i, align 4
  %70 = ptrtoint ptr %msg.i.i.i5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.i.i.i.i12.i.i.i, ptr %msg.i.i.i5.i.i.i, align 4
  br label %ad5758_reset.exit.i

ad5758_reset.exit.i:                              ; preds = %if.end.i.i.i.i.i.i.i15.i.i.i, %if.end.i.i.i.ad5758_reset.exit.i_crit_edge
  %call.i.i.i16.i.i.i = call i32 @spi_sync(ptr noundef %56, ptr noundef nonnull %msg.i.i.i5.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i5.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i6.i.i.i) #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i16.i.i.i)
  %cmp9.i = icmp slt i32 %call.i.i.i16.i.i.i, 0
  br i1 %cmp9.i, label %ad5758_reset.exit.i.do.end17_crit_edge, label %ad5758_reset.exit.i.if.end11.i_crit_edge

ad5758_reset.exit.i.if.end11.i_crit_edge:         ; preds = %ad5758_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

ad5758_reset.exit.i.do.end17_crit_edge:           ; preds = %ad5758_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end11.i:                                       ; preds = %ad5758_reset.exit.i.if.end11.i_crit_edge, %ad5758_reset.exit.thread140.i
  %71 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1879024582, ptr %d32.i.i, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i93.i) #7
  %74 = getelementptr inbounds i8, ptr %t.i.i93.i, i32 4
  %75 = call ptr @memset(ptr %74, i32 0, i32 92)
  %76 = ptrtoint ptr %t.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %d32.i.i, ptr %t.i.i93.i, align 4
  %len1.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i93.i, i32 0, i32 2
  %77 = ptrtoint ptr %len1.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %len1.i.i95.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i92.i) #7
  %78 = getelementptr inbounds i8, ptr %msg.i.i.i92.i, i32 8
  %79 = call ptr @memset(ptr %78, i32 0, i32 40)
  %80 = ptrtoint ptr %msg.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %msg.i.i.i92.i, ptr %msg.i.i.i92.i, align 4
  %prev.i.i.i.i.i.i.i96.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i92.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i.i92.i, ptr %prev.i.i.i.i.i.i.i96.i, align 4
  %resources.i.i.i.i.i.i97.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i92.i, i32 0, i32 10
  %82 = ptrtoint ptr %resources.i.i.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %resources.i.i.i.i.i.i97.i, ptr %resources.i.i.i.i.i.i97.i, align 4
  %prev.i2.i.i.i.i.i.i98.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i92.i, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %prev.i2.i.i.i.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %resources.i.i.i.i.i.i97.i, ptr %prev.i2.i.i.i.i.i.i98.i, align 4
  %transfer_list.i.i.i.i.i99.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i93.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i100.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i99.i, ptr noundef nonnull %msg.i.i.i92.i, ptr noundef nonnull %msg.i.i.i92.i) #7
  br i1 %call.i.i.i.i.i.i.i100.i, label %if.end.i.i.i.i.i.i.i102.i, label %if.end11.i.ad5758_crc_disable.exit104.i_crit_edge

if.end11.i.ad5758_crc_disable.exit104.i_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_crc_disable.exit104.i

if.end.i.i.i.i.i.i.i102.i:                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %prev.i.i.i.i.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %transfer_list.i.i.i.i.i99.i, ptr %prev.i.i.i.i.i.i.i96.i, align 4
  %85 = ptrtoint ptr %transfer_list.i.i.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i.i92.i, ptr %transfer_list.i.i.i.i.i99.i, align 4
  %prev3.i.i.i.i.i.i.i101.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i93.i, i32 0, i32 18, i32 1
  %86 = ptrtoint ptr %prev3.i.i.i.i.i.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i.i.i92.i, ptr %prev3.i.i.i.i.i.i.i101.i, align 4
  %87 = ptrtoint ptr %msg.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %transfer_list.i.i.i.i.i99.i, ptr %msg.i.i.i92.i, align 4
  br label %ad5758_crc_disable.exit104.i

ad5758_crc_disable.exit104.i:                     ; preds = %if.end.i.i.i.i.i.i.i102.i, %if.end11.i.ad5758_crc_disable.exit104.i_crit_edge
  %call.i.i.i103.i = call i32 @spi_sync(ptr noundef %73, ptr noundef nonnull %msg.i.i.i92.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i92.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i93.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i103.i)
  %cmp13.i = icmp slt i32 %call.i.i.i103.i, 0
  br i1 %cmp13.i, label %ad5758_crc_disable.exit104.i.do.end17_crit_edge, label %if.end15.i

ad5758_crc_disable.exit104.i.do.end17_crit_edge:  ; preds = %ad5758_crc_disable.exit104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end15.i:                                       ; preds = %ad5758_crc_disable.exit104.i
  %88 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1996703232, ptr %d32.i.i, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  %91 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %92 = call ptr @memset(ptr %91, i32 0, i32 92)
  %93 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %d32.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 4, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  %95 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %96 = call ptr @memset(ptr %95, i32 0, i32 40)
  %97 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %99 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %100 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.end15.i.ad5758_spi_reg_write.exit.i.i_crit_edge

if.end15.i.ad5758_spi_reg_write.exit.i.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_reg_write.exit.i.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %102 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %104 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %ad5758_spi_reg_write.exit.i.i

ad5758_spi_reg_write.exit.i.i:                    ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.end15.i.ad5758_spi_reg_write.exit.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %90, ptr noundef nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i105.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i105.i, label %ad5758_calib_mem_refresh.exit.thread.i, label %ad5758_calib_mem_refresh.exit.i

ad5758_calib_mem_refresh.exit.thread.i:           ; preds = %ad5758_spi_reg_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.29) #10
  br label %do.end17

ad5758_calib_mem_refresh.exit.i:                  ; preds = %ad5758_spi_reg_write.exit.i.i
  %call1.i.i = call fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %1, i32 noundef 20, i32 noundef 32768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp17.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp17.i, label %ad5758_calib_mem_refresh.exit.i.do.end17_crit_edge, label %if.end19.i

ad5758_calib_mem_refresh.exit.i.do.end17_crit_edge: ; preds = %ad5758_calib_mem_refresh.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end19.i:                                       ; preds = %ad5758_calib_mem_refresh.exit.i
  %call20.i = call fastcc i32 @ad5758_spi_reg_read(ptr noundef %1, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end19.i.do.end17_crit_edge, label %if.end23.i

if.end19.i.do.end17_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end23.i:                                       ; preds = %if.end19.i
  %and1.i.i = shl i32 %call20.i, 8
  %shl2.i.i = and i32 %and1.i.i, 16776960
  %or3.i.i = or i32 %shl2.i.i, -1811939328
  %107 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or3.i.i, ptr %d32.i.i, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i108.i) #7
  %110 = getelementptr inbounds i8, ptr %t.i.i108.i, i32 4
  %111 = call ptr @memset(ptr %110, i32 0, i32 92)
  %112 = ptrtoint ptr %t.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %d32.i.i, ptr %t.i.i108.i, align 4
  %len1.i.i110.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i108.i, i32 0, i32 2
  %113 = ptrtoint ptr %len1.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4, ptr %len1.i.i110.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i107.i) #7
  %114 = getelementptr inbounds i8, ptr %msg.i.i.i107.i, i32 8
  %115 = call ptr @memset(ptr %114, i32 0, i32 40)
  %116 = ptrtoint ptr %msg.i.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %msg.i.i.i107.i, ptr %msg.i.i.i107.i, align 4
  %prev.i.i.i.i.i.i.i111.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i107.i, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i.i.i.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i.i.i107.i, ptr %prev.i.i.i.i.i.i.i111.i, align 4
  %resources.i.i.i.i.i.i112.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i107.i, i32 0, i32 10
  %118 = ptrtoint ptr %resources.i.i.i.i.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %resources.i.i.i.i.i.i112.i, ptr %resources.i.i.i.i.i.i112.i, align 4
  %prev.i2.i.i.i.i.i.i113.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i107.i, i32 0, i32 10, i32 1
  %119 = ptrtoint ptr %prev.i2.i.i.i.i.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %resources.i.i.i.i.i.i112.i, ptr %prev.i2.i.i.i.i.i.i113.i, align 4
  %transfer_list.i.i.i.i.i114.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i108.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i115.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i114.i, ptr noundef nonnull %msg.i.i.i107.i, ptr noundef nonnull %msg.i.i.i107.i) #7
  br i1 %call.i.i.i.i.i.i.i115.i, label %if.end.i.i.i.i.i.i.i117.i, label %if.end23.i.ad5758_spi_reg_write.exit.i_crit_edge

if.end23.i.ad5758_spi_reg_write.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_reg_write.exit.i

if.end.i.i.i.i.i.i.i117.i:                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %prev.i.i.i.i.i.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %transfer_list.i.i.i.i.i114.i, ptr %prev.i.i.i.i.i.i.i111.i, align 4
  %121 = ptrtoint ptr %transfer_list.i.i.i.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %msg.i.i.i107.i, ptr %transfer_list.i.i.i.i.i114.i, align 4
  %prev3.i.i.i.i.i.i.i116.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i108.i, i32 0, i32 18, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i.i.i.i.i116.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %msg.i.i.i107.i, ptr %prev3.i.i.i.i.i.i.i116.i, align 4
  %123 = ptrtoint ptr %msg.i.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %transfer_list.i.i.i.i.i114.i, ptr %msg.i.i.i107.i, align 4
  br label %ad5758_spi_reg_write.exit.i

ad5758_spi_reg_write.exit.i:                      ; preds = %if.end.i.i.i.i.i.i.i117.i, %if.end23.i.ad5758_spi_reg_write.exit.i_crit_edge
  %call.i.i.i118.i = call i32 @spi_sync(ptr noundef %109, ptr noundef nonnull %msg.i.i.i107.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i107.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i108.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i118.i)
  %cmp25.i = icmp slt i32 %call.i.i.i118.i, 0
  br i1 %cmp25.i, label %ad5758_spi_reg_write.exit.i.do.end17_crit_edge, label %if.end27.i

ad5758_spi_reg_write.exit.i.do.end17_crit_edge:   ; preds = %ad5758_spi_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end27.i:                                       ; preds = %ad5758_spi_reg_write.exit.i
  %dc_dc_ilim.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 5
  %124 = ptrtoint ptr %dc_dc_ilim.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dc_dc_ilim.i, align 4
  %call.i.i.i = call fastcc i32 @ad5758_spi_reg_read(ptr noundef %1, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i121.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i121.i, label %if.end27.i.do.end17_crit_edge, label %if.end.i.i130.i

if.end27.i.do.end17_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end.i.i130.i:                                  ; preds = %if.end27.i
  %and.i.i = shl i32 %125, 1
  %shl.i122.i = and i32 %and.i.i, 14
  %and.i.i.i = and i32 %call.i.i.i, 65521
  %or.i.i.i = or i32 %and.i.i.i, %shl.i122.i
  %and1.i.i.i.i = shl nuw nsw i32 %or.i.i.i, 8
  %or3.i.i.i.i = or i32 %and1.i.i.i.i, -1946157056
  %126 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or3.i.i.i.i, ptr %d32.i.i, align 4
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i120.i) #7
  %129 = getelementptr inbounds i8, ptr %t.i.i.i.i120.i, i32 4
  %130 = call ptr @memset(ptr %129, i32 0, i32 92)
  %131 = ptrtoint ptr %t.i.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %d32.i.i, ptr %t.i.i.i.i120.i, align 4
  %len1.i.i.i.i124.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i120.i, i32 0, i32 2
  %132 = ptrtoint ptr %len1.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 4, ptr %len1.i.i.i.i124.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i119.i) #7
  %133 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i119.i, i32 8
  %134 = call ptr @memset(ptr %133, i32 0, i32 40)
  %135 = ptrtoint ptr %msg.i.i.i.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %msg.i.i.i.i.i119.i, ptr %msg.i.i.i.i.i119.i, align 4
  %prev.i.i.i.i.i.i.i.i.i125.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i119.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %msg.i.i.i.i.i119.i, ptr %prev.i.i.i.i.i.i.i.i.i125.i, align 4
  %resources.i.i.i.i.i.i.i.i126.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i119.i, i32 0, i32 10
  %137 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %resources.i.i.i.i.i.i.i.i126.i, ptr %resources.i.i.i.i.i.i.i.i126.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i127.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i119.i, i32 0, i32 10, i32 1
  %138 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %resources.i.i.i.i.i.i.i.i126.i, ptr %prev.i2.i.i.i.i.i.i.i.i127.i, align 4
  %transfer_list.i.i.i.i.i.i.i128.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i120.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i129.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i128.i, ptr noundef nonnull %msg.i.i.i.i.i119.i, ptr noundef nonnull %msg.i.i.i.i.i119.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i129.i, label %if.end.i.i.i.i.i.i.i.i.i132.i, label %if.end.i.i130.i.ad5758_spi_write_mask.exit.i.i_crit_edge

if.end.i.i130.i.ad5758_spi_write_mask.exit.i.i_crit_edge: ; preds = %if.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit.i.i

if.end.i.i.i.i.i.i.i.i.i132.i:                    ; preds = %if.end.i.i130.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %transfer_list.i.i.i.i.i.i.i128.i, ptr %prev.i.i.i.i.i.i.i.i.i125.i, align 4
  %140 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msg.i.i.i.i.i119.i, ptr %transfer_list.i.i.i.i.i.i.i128.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i131.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i120.i, i32 0, i32 18, i32 1
  %141 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %msg.i.i.i.i.i119.i, ptr %prev3.i.i.i.i.i.i.i.i.i131.i, align 4
  %142 = ptrtoint ptr %msg.i.i.i.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i128.i, ptr %msg.i.i.i.i.i119.i, align 4
  br label %ad5758_spi_write_mask.exit.i.i

ad5758_spi_write_mask.exit.i.i:                   ; preds = %if.end.i.i.i.i.i.i.i.i.i132.i, %if.end.i.i130.i.ad5758_spi_write_mask.exit.i.i_crit_edge
  %call.i.i.i.i.i133.i = call i32 @spi_sync(ptr noundef %128, ptr noundef nonnull %msg.i.i.i.i.i119.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i119.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i120.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i133.i)
  %cmp.i134.i = icmp slt i32 %call.i.i.i.i.i133.i, 0
  br i1 %cmp.i134.i, label %ad5758_spi_write_mask.exit.i.i.do.end17_crit_edge, label %ad5758_set_dc_dc_ilim.exit.i

ad5758_spi_write_mask.exit.i.i.do.end17_crit_edge: ; preds = %ad5758_spi_write_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

ad5758_set_dc_dc_ilim.exit.i:                     ; preds = %ad5758_spi_write_mask.exit.i.i
  %call1.i135.i = call fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %1, i32 noundef 12, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135.i)
  %cmp29.i = icmp slt i32 %call1.i135.i, 0
  br i1 %cmp29.i, label %ad5758_set_dc_dc_ilim.exit.i.do.end17_crit_edge, label %if.end31.i

ad5758_set_dc_dc_ilim.exit.i.do.end17_crit_edge:  ; preds = %ad5758_set_dc_dc_ilim.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end31.i:                                       ; preds = %ad5758_set_dc_dc_ilim.exit.i
  %143 = ptrtoint ptr %dc_dc_mode to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dc_dc_mode, align 4
  %call32.i = call fastcc i32 @ad5758_set_dc_dc_conv_mode(ptr noundef %1, i32 noundef %144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end31.i.do.end17_crit_edge, label %if.end35.i

if.end31.i.do.end17_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end35.i:                                       ; preds = %if.end31.i
  %out_range.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 3
  %145 = ptrtoint ptr %out_range.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %out_range.i, align 4
  %call36.i = call fastcc i32 @ad5758_set_out_range(ptr noundef %1, i32 noundef %146) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end35.i.do.end17_crit_edge, label %if.end39.i

if.end35.i.do.end17_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end39.i:                                       ; preds = %if.end35.i
  %slew_time.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 6
  %147 = ptrtoint ptr %slew_time.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %slew_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i = icmp eq i32 %148, 0
  br i1 %tobool.not.i, label %if.end39.i.if.end45.i_crit_edge, label %if.then40.i

if.end39.i.if.end45.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then40.i:                                      ; preds = %if.end39.i
  %call41.i = call fastcc i32 @ad5758_slew_rate_config(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %if.then40.i.do.end17_crit_edge, label %if.then40.i.if.end45.i_crit_edge

if.then40.i.if.end45.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then40.i.do.end17_crit_edge:                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end45.i:                                       ; preds = %if.then40.i.if.end45.i_crit_edge, %if.end39.i.if.end45.i_crit_edge
  %call46.i = call fastcc i32 @ad5758_internal_buffers_en(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end45.i.do.end17_crit_edge, label %if.end49.i

if.end45.i.do.end17_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end49.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i = call fastcc i32 @ad5758_spi_write_mask(ptr noundef %1, i32 noundef 6, i32 noundef 64, i32 noundef 64) #7
  br label %ad5758_init.exit

ad5758_init.exit:                                 ; preds = %if.end49.i, %if.then.i
  %retval.0.i = phi i32 [ %15, %if.then.i ], [ %call50.i, %if.end49.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp13, label %ad5758_init.exit.do.end17_crit_edge, label %if.end19

ad5758_init.exit.do.end17_crit_edge:              ; preds = %ad5758_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %ad5758_init.exit.do.end17_crit_edge, %if.end45.i.do.end17_crit_edge, %if.then40.i.do.end17_crit_edge, %if.end35.i.do.end17_crit_edge, %if.end31.i.do.end17_crit_edge, %ad5758_set_dc_dc_ilim.exit.i.do.end17_crit_edge, %ad5758_spi_write_mask.exit.i.i.do.end17_crit_edge, %if.end27.i.do.end17_crit_edge, %ad5758_spi_reg_write.exit.i.do.end17_crit_edge, %if.end19.i.do.end17_crit_edge, %ad5758_calib_mem_refresh.exit.i.do.end17_crit_edge, %ad5758_calib_mem_refresh.exit.thread.i, %ad5758_crc_disable.exit104.i.do.end17_crit_edge, %ad5758_reset.exit.i.do.end17_crit_edge, %ad5758_spi_reg_write.exit.i.i.i.do.end17_crit_edge, %ad5758_crc_disable.exit.i.do.end17_crit_edge
  %retval.0.i48 = phi i32 [ %retval.0.i, %ad5758_init.exit.do.end17_crit_edge ], [ %call.i.i.i.i.i133.i, %ad5758_spi_write_mask.exit.i.i.do.end17_crit_edge ], [ %call.i.i.i, %if.end27.i.do.end17_crit_edge ], [ %call.i.i.i.i.i.i, %ad5758_spi_reg_write.exit.i.i.i.do.end17_crit_edge ], [ %call.i.i.i.i.i, %ad5758_calib_mem_refresh.exit.thread.i ], [ %call46.i, %if.end45.i.do.end17_crit_edge ], [ %call41.i, %if.then40.i.do.end17_crit_edge ], [ %call36.i, %if.end35.i.do.end17_crit_edge ], [ %call32.i, %if.end31.i.do.end17_crit_edge ], [ %call1.i135.i, %ad5758_set_dc_dc_ilim.exit.i.do.end17_crit_edge ], [ %call.i.i.i118.i, %ad5758_spi_reg_write.exit.i.do.end17_crit_edge ], [ %call20.i, %if.end19.i.do.end17_crit_edge ], [ %call1.i.i, %ad5758_calib_mem_refresh.exit.i.do.end17_crit_edge ], [ %call.i.i.i103.i, %ad5758_crc_disable.exit104.i.do.end17_crit_edge ], [ %call.i.i.i16.i.i.i, %ad5758_reset.exit.i.do.end17_crit_edge ], [ %call.i.i.i.i, %ad5758_crc_disable.exit.i.do.end17_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end19:                                         ; preds = %ad5758_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %call22 = call i32 @__devm_iio_device_register(ptr noundef %150, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %do.end17 ], [ %call22, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_parse_dt(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  %tmparray = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmparray) #7
  %1 = ptrtoint ptr %tmparray to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmparray, align 4, !annotation !108
  %2 = getelementptr inbounds [2 x i32], ptr %tmparray, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !108
  %dc_dc_ilim = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 5
  %4 = ptrtoint ptr %dc_dc_ilim to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dc_dc_ilim, align 4
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %tmp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad5758_parse_dt.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad5758_parse_dt, %if.then6)) #7
          to label %if.end33 [label %if.then6], !srcloc !109

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad5758_parse_dt.__UNIQUE_ID_ddebug230, ptr noundef %8, ptr noundef nonnull @.str.9) #7
  br label %if.end33

if.else:                                          ; preds = %entry
  %call9 = call ptr @bsearch(ptr noundef nonnull %tmp, ptr noundef nonnull @ad5758_dc_dc_ilim, i32 noundef 6, i32 noundef 4, ptr noundef nonnull @cmpfunc) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.body12, label %if.else30

do.body12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad5758_parse_dt.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad5758_parse_dt, %if.then24)) #7
          to label %if.end33 [label %if.then24], !srcloc !109

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad5758_parse_dt.__UNIQUE_ID_ddebug231, ptr noundef %10, ptr noundef nonnull @.str.10) #7
  br label %if.end33

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub.ptr.lhs.cast = ptrtoint ptr %call9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @ad5758_dc_dc_ilim to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %11 = ptrtoint ptr %dc_dc_ilim to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.ptr.div, ptr %dc_dc_ilim, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then24, %do.body12, %if.then6, %do.body
  %12 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %st, align 4
  %dc_dc_mode = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 4
  %call.i152 = call i32 @device_property_read_u32_array(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %dc_dc_mode, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool37.not = icmp eq i32 %call.i152, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %dc_dc_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dc_dc_mode, align 4
  %mode.off.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode.off.i)
  %switch.i = icmp ult i32 %mode.off.i, 3
  br i1 %switch.i, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 4
  br i1 %cmp, label %if.then50, label %if.else62

if.then50:                                        ; preds = %if.end48
  %call53 = call i32 @device_property_read_u32_array(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef nonnull %tmparray, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then50.if.end75_crit_edge, label %do.end58

if.then50.if.end75_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.end58:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.else62:                                        ; preds = %if.end48
  %call66 = call i32 @device_property_read_u32_array(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef nonnull %tmparray, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else62.if.end75_crit_edge, label %do.end71

if.else62.if.end75_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.end71:                                         ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end75:                                         ; preds = %if.else62.if.end75_crit_edge, %if.then50.if.end75_crit_edge
  %range.0 = phi ptr [ @ad5758_voltage_range, %if.then50.if.end75_crit_edge ], [ @ad5758_current_range, %if.else62.if.end75_crit_edge ]
  %24 = ptrtoint ptr %tmparray to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmparray, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %2, align 4
  %min1.i = getelementptr %struct.ad5758_range, ptr %range.0, i32 0, i32 1
  %28 = ptrtoint ptr %min1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %25)
  %cmp2.i = icmp eq i32 %29, %25
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end75.for.body.i.1_crit_edge

if.end75.for.body.i.1_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1

land.lhs.true.i:                                  ; preds = %if.end75
  %max4.i = getelementptr %struct.ad5758_range, ptr %range.0, i32 0, i32 2
  %30 = ptrtoint ptr %max4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %27)
  %cmp5.i = icmp eq i32 %31, %27
  br i1 %cmp5.i, label %land.lhs.true.i.if.end85_crit_edge, label %land.lhs.true.i.for.body.i.1_crit_edge

land.lhs.true.i.for.body.i.1_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1

land.lhs.true.i.if.end85_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

for.body.i.1:                                     ; preds = %land.lhs.true.i.for.body.i.1_crit_edge, %if.end75.for.body.i.1_crit_edge
  %min1.i.1 = getelementptr %struct.ad5758_range, ptr %range.0, i32 1, i32 1
  %32 = ptrtoint ptr %min1.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min1.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %25)
  %cmp2.i.1 = icmp eq i32 %33, %25
  br i1 %cmp2.i.1, label %land.lhs.true.i.1, label %for.body.i.1.for.body.i.2_crit_edge

for.body.i.1.for.body.i.2_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.2

land.lhs.true.i.1:                                ; preds = %for.body.i.1
  %max4.i.1 = getelementptr %struct.ad5758_range, ptr %range.0, i32 1, i32 2
  %34 = ptrtoint ptr %max4.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max4.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %27)
  %cmp5.i.1 = icmp eq i32 %35, %27
  br i1 %cmp5.i.1, label %land.lhs.true.i.1.if.end85_crit_edge, label %land.lhs.true.i.1.for.body.i.2_crit_edge

land.lhs.true.i.1.for.body.i.2_crit_edge:         ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.2

land.lhs.true.i.1.if.end85_crit_edge:             ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

for.body.i.2:                                     ; preds = %land.lhs.true.i.1.for.body.i.2_crit_edge, %for.body.i.1.for.body.i.2_crit_edge
  %min1.i.2 = getelementptr %struct.ad5758_range, ptr %range.0, i32 2, i32 1
  %36 = ptrtoint ptr %min1.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min1.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %25)
  %cmp2.i.2 = icmp eq i32 %37, %25
  br i1 %cmp2.i.2, label %land.lhs.true.i.2, label %for.body.i.2.for.body.i.3_crit_edge

for.body.i.2.for.body.i.3_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.3

land.lhs.true.i.2:                                ; preds = %for.body.i.2
  %max4.i.2 = getelementptr %struct.ad5758_range, ptr %range.0, i32 2, i32 2
  %38 = ptrtoint ptr %max4.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max4.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %27)
  %cmp5.i.2 = icmp eq i32 %39, %27
  br i1 %cmp5.i.2, label %land.lhs.true.i.2.if.end85_crit_edge, label %land.lhs.true.i.2.for.body.i.3_crit_edge

land.lhs.true.i.2.for.body.i.3_crit_edge:         ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.3

land.lhs.true.i.2.if.end85_crit_edge:             ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

for.body.i.3:                                     ; preds = %land.lhs.true.i.2.for.body.i.3_crit_edge, %for.body.i.2.for.body.i.3_crit_edge
  %min1.i.3 = getelementptr %struct.ad5758_range, ptr %range.0, i32 3, i32 1
  %40 = ptrtoint ptr %min1.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min1.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %25)
  %cmp2.i.3 = icmp eq i32 %41, %25
  br i1 %cmp2.i.3, label %land.lhs.true.i.3, label %for.body.i.3.for.inc.i.3_crit_edge

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

land.lhs.true.i.3:                                ; preds = %for.body.i.3
  %max4.i.3 = getelementptr %struct.ad5758_range, ptr %range.0, i32 3, i32 2
  %42 = ptrtoint ptr %max4.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max4.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %27)
  %cmp5.i.3 = icmp eq i32 %43, %27
  br i1 %cmp5.i.3, label %land.lhs.true.i.3.if.end85_crit_edge, label %land.lhs.true.i.3.for.inc.i.3_crit_edge

land.lhs.true.i.3.for.inc.i.3_crit_edge:          ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

land.lhs.true.i.3.if.end85_crit_edge:             ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

for.inc.i.3:                                      ; preds = %land.lhs.true.i.3.for.inc.i.3_crit_edge, %for.body.i.3.for.inc.i.3_crit_edge
  br i1 %cmp, label %for.inc.i.3.do.end82_crit_edge, label %for.body.i.4

for.inc.i.3.do.end82_crit_edge:                   ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

for.body.i.4:                                     ; preds = %for.inc.i.3
  %min1.i.4 = getelementptr %struct.ad5758_range, ptr %range.0, i32 4, i32 1
  %44 = ptrtoint ptr %min1.i.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min1.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %25)
  %cmp2.i.4 = icmp eq i32 %45, %25
  br i1 %cmp2.i.4, label %land.lhs.true.i.4, label %for.body.i.4.for.body.i.5_crit_edge

for.body.i.4.for.body.i.5_crit_edge:              ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.5

land.lhs.true.i.4:                                ; preds = %for.body.i.4
  %max4.i.4 = getelementptr %struct.ad5758_range, ptr %range.0, i32 4, i32 2
  %46 = ptrtoint ptr %max4.i.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max4.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %27)
  %cmp5.i.4 = icmp eq i32 %47, %27
  br i1 %cmp5.i.4, label %land.lhs.true.i.4.if.end85_crit_edge, label %land.lhs.true.i.4.for.body.i.5_crit_edge

land.lhs.true.i.4.for.body.i.5_crit_edge:         ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.5

land.lhs.true.i.4.if.end85_crit_edge:             ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

for.body.i.5:                                     ; preds = %land.lhs.true.i.4.for.body.i.5_crit_edge, %for.body.i.4.for.body.i.5_crit_edge
  %min1.i.5 = getelementptr %struct.ad5758_range, ptr %range.0, i32 5, i32 1
  %48 = ptrtoint ptr %min1.i.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min1.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %25)
  %cmp2.i.5 = icmp eq i32 %49, %25
  br i1 %cmp2.i.5, label %land.lhs.true.i.5, label %for.body.i.5.do.end82_crit_edge

for.body.i.5.do.end82_crit_edge:                  ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

land.lhs.true.i.5:                                ; preds = %for.body.i.5
  %max4.i.5 = getelementptr %struct.ad5758_range, ptr %range.0, i32 5, i32 2
  %50 = ptrtoint ptr %max4.i.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max4.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %27)
  %cmp5.i.5 = icmp eq i32 %51, %27
  br i1 %cmp5.i.5, label %land.lhs.true.i.5.if.end85_crit_edge, label %land.lhs.true.i.5.do.end82_crit_edge

land.lhs.true.i.5.do.end82_crit_edge:             ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82

land.lhs.true.i.5.if.end85_crit_edge:             ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end82:                                         ; preds = %land.lhs.true.i.5.do.end82_crit_edge, %for.body.i.5.do.end82_crit_edge, %for.inc.i.3.do.end82_crit_edge
  %52 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true.i.5.if.end85_crit_edge, %land.lhs.true.i.4.if.end85_crit_edge, %land.lhs.true.i.3.if.end85_crit_edge, %land.lhs.true.i.2.if.end85_crit_edge, %land.lhs.true.i.1.if.end85_crit_edge, %land.lhs.true.i.if.end85_crit_edge
  %i.029.i.lcssa = phi i32 [ 0, %land.lhs.true.i.if.end85_crit_edge ], [ 1, %land.lhs.true.i.1.if.end85_crit_edge ], [ 2, %land.lhs.true.i.2.if.end85_crit_edge ], [ 3, %land.lhs.true.i.3.if.end85_crit_edge ], [ 4, %land.lhs.true.i.4.if.end85_crit_edge ], [ 5, %land.lhs.true.i.5.if.end85_crit_edge ]
  %arrayidx.le.i = getelementptr %struct.ad5758_range, ptr %range.0, i32 %i.029.i.lcssa
  %54 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.le.i, align 4
  %out_range.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 3
  %56 = ptrtoint ptr %out_range.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %out_range.i, align 4
  %min11.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %min11.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %25, ptr %min11.i, align 4
  %max15.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %max15.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %27, ptr %max15.i, align 4
  %59 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %st, align 4
  %call.i154 = call i32 @device_property_read_u32_array(ptr noundef %60, ptr noundef nonnull @.str.24, ptr noundef nonnull %tmp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool89.not = icmp eq i32 %call.i154, 0
  br i1 %tobool89.not, label %if.else109, label %do.body91

do.body91:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad5758_parse_dt.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad5758_parse_dt, %if.then103)) #7
          to label %do.end108 [label %if.then103], !srcloc !109

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %st, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad5758_parse_dt.__UNIQUE_ID_ddebug232, ptr noundef %62, ptr noundef nonnull @.str.25) #7
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %do.body91
  %slew_time = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 6
  %63 = ptrtoint ptr %slew_time to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %slew_time, align 4
  br label %cleanup

if.else109:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tmp, align 4
  %slew_time110 = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 6
  %66 = ptrtoint ptr %slew_time110 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %slew_time110, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else109, %do.end108, %do.end82, %do.end71, %do.end58, %if.end44.cleanup_crit_edge, %do.end41
  %retval.0 = phi i32 [ %call.i152, %do.end41 ], [ %call53, %do.end58 ], [ -22, %do.end82 ], [ %call66, %do.end71 ], [ -22, %if.end44.cleanup_crit_edge ], [ 0, %if.else109 ], [ 0, %do.end108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmparray) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %1, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %min4 = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %min4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min4, align 4
  %max6 = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %max6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max6, align 4
  %sub = sub i32 %7, %5
  %div = sdiv i32 %sub, 1000
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %min9 = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %min9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min9, align 4
  %max11 = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %max11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max11, align 4
  %mul = shl i32 %11, 16
  %sub12 = sub i32 %13, %11
  %div13 = sdiv i32 %mul, %sub12
  %div14 = sdiv i32 %div13, 1000
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div14, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb3, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb7 ], [ 11, %sw.bb3 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info)
  %cond = icmp eq i32 %info, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %and1.i = shl i32 %val, 8
  %shl2.i = and i32 %and1.i, 16776960
  %or3.i = or i32 %shl2.i, -2130706432
  %d32.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %d32.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or3.i, ptr %d32.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %d32.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.ad5758_spi_reg_write.exit_crit_edge

sw.bb.ad5758_spi_reg_write.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5758_spi_reg_write.exit

ad5758_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.ad5758_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %ad5758_spi_reg_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ad5758_spi_reg_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %readval, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %1, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %readval, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %and.i = shl i32 %reg, 24
  %or.i = and i32 %and.i, 520093696
  %and1.i = shl i32 %writeval, 8
  %shl2.i = and i32 %and1.i, 16776960
  %shl.i = or i32 %or.i, %shl2.i
  %or3.i = or i32 %shl.i, -2147483648
  %d32.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %d32.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or3.i, ptr %d32.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %6 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %d32.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.else.ad5758_spi_reg_write.exit_crit_edge

if.else.ad5758_spi_reg_write.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5758_spi_reg_write.exit

ad5758_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.else.ad5758_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  br label %if.end5

if.end5:                                          ; preds = %ad5758_spi_reg_write.exit, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ %call.i.i.i, %ad5758_spi_reg_write.exit ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %ret.0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  %0 = getelementptr inbounds i8, ptr %t, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %d32 = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %d32, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %4 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %cs_change, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %arrayidx3 = getelementptr %struct.ad5758_state, ptr %st, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx3, ptr %arrayinit.element, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %arrayidx5 = getelementptr %struct.ad5758_state, ptr %st, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx5, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %len6, align 4
  %shl = shl i32 %addr, 8
  %or = or i32 %shl, -1828716544
  %8 = ptrtoint ptr %d32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %d32, align 4
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %arrayidx3, align 4
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5, align 4
  %shr = lshr i32 %29, 8
  %and = and i32 %shr, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmpfunc(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_read_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr_down, align 4, !range !110
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %4) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5758_write_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #7
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pwr_down, align 1, !annotation !108
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !110
  %call.i = call fastcc i32 @ad5758_spi_reg_read(ptr noundef %1, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.err_unlock_crit_edge, label %if.end.i

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end.i:                                         ; preds = %if.end
  %5 = xor i8 %4, 1
  %narrow = mul nuw i8 %5, 96
  %or = zext i8 %narrow to i32
  %and.i = and i32 %call.i, 65439
  %or.i = or i32 %and.i, %or
  %and1.i.i = shl nuw nsw i32 %or.i, 8
  %or3.i.i = or i32 %and1.i.i, -2046820352
  %d32.i.i = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3.i.i, ptr %d32.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %d32.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.ad5758_spi_write_mask.exit_crit_edge

if.end.i.ad5758_spi_write_mask.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5758_spi_write_mask.exit

ad5758_spi_write_mask.exit:                       ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.ad5758_spi_write_mask.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp, label %ad5758_spi_write_mask.exit.err_unlock_crit_edge, label %if.end9

ad5758_spi_write_mask.exit.err_unlock_crit_edge:  ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end9:                                          ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pwr_down, align 1, !range !110
  %pwr_down11 = getelementptr inbounds %struct.ad5758_state, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %pwr_down11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %pwr_down11, align 4
  br label %err_unlock

err_unlock:                                       ; preds = %if.end9, %ad5758_spi_write_mask.exit.err_unlock_crit_edge, %if.end.err_unlock_crit_edge
  %retval.0.i29 = phi i32 [ %call.i.i.i.i, %ad5758_spi_write_mask.exit.err_unlock_crit_edge ], [ %call.i.i.i.i, %if.end9 ], [ %call.i, %if.end.err_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i29)
  %tobool13.not = icmp eq i32 %retval.0.i29, 0
  %len.call7 = select i1 %tobool13.not, i32 %len, i32 %retval.0.i29
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call7, %err_unlock ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_spi_write_mask(ptr noundef %st, i32 noundef %addr, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i32 %mask, -1
  %and = and i32 %call, %neg
  %or = or i32 %and, %val
  %and.i = shl i32 %addr, 24
  %or.i = and i32 %and.i, 520093696
  %and1.i = shl i32 %or, 8
  %shl2.i = and i32 %and1.i, 16776960
  %shl.i = or i32 %or.i, %shl2.i
  %or3.i = or i32 %shl.i, -2147483648
  %d32.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %0 = ptrtoint ptr %d32.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or3.i, ptr %d32.i, align 4
  %1 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %d32.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.ad5758_spi_reg_write.exit_crit_edge

if.end.ad5758_spi_reg_write.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5758_spi_reg_write.exit

ad5758_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.end.ad5758_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ad5758_spi_reg_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ad5758_spi_reg_write.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_set_dc_dc_conv_mode(ptr noundef %st, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i23 = alloca %struct.spi_message, align 4
  %t.i.i.i24 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp = icmp eq i32 %mode, 3
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %or.i = shl i32 %call.i, 8
  %and1.i.i = and i32 %or.i, 16252672
  %or3.i.i = or i32 %and1.i.i, -1861746688
  %d32.i.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %0 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or3.i.i, ptr %d32.i.i, align 4
  %1 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %3 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %d32.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.ad5758_spi_write_mask.exit_crit_edge

if.end.i.ad5758_spi_write_mask.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5758_spi_write_mask.exit

ad5758_spi_write_mask.exit:                       ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.ad5758_spi_write_mask.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1 = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp1, label %ad5758_spi_write_mask.exit.cleanup_crit_edge, label %ad5758_spi_write_mask.exit.if.end3_crit_edge

ad5758_spi_write_mask.exit.if.end3_crit_edge:     ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

ad5758_spi_write_mask.exit.cleanup_crit_edge:     ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %ad5758_spi_write_mask.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call.i25 = call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %if.end3.cleanup_crit_edge, label %if.end.i40

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i40:                                       ; preds = %if.end3
  %and = shl i32 %mode, 5
  %shl = and i32 %and, 96
  %and.i27 = and i32 %call.i25, 65439
  %or.i28 = or i32 %and.i27, %shl
  %and1.i.i29 = shl nuw nsw i32 %or.i28, 8
  %or3.i.i32 = or i32 %and1.i.i29, -1962934272
  %d32.i.i33 = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %17 = ptrtoint ptr %d32.i.i33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or3.i.i32, ptr %d32.i.i33, align 4
  %18 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i24) #7
  %20 = getelementptr inbounds i8, ptr %t.i.i.i24, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = ptrtoint ptr %t.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %d32.i.i33, ptr %t.i.i.i24, align 4
  %len1.i.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i24, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %len1.i.i.i34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i23) #7
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i.i23, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i.i.i23, ptr %msg.i.i.i.i23, align 4
  %prev.i.i.i.i.i.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i23, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i23, ptr %prev.i.i.i.i.i.i.i.i35, align 4
  %resources.i.i.i.i.i.i.i36 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i23, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i.i.i36, ptr %resources.i.i.i.i.i.i.i36, align 4
  %prev.i2.i.i.i.i.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i23, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i.i.i36, ptr %prev.i2.i.i.i.i.i.i.i37, align 4
  %transfer_list.i.i.i.i.i.i38 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i24, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i39 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i38, ptr noundef nonnull %msg.i.i.i.i23, ptr noundef nonnull %msg.i.i.i.i23) #7
  br i1 %call.i.i.i.i.i.i.i.i39, label %if.end.i.i.i.i.i.i.i.i42, label %if.end.i40.ad5758_spi_write_mask.exit46_crit_edge

if.end.i40.ad5758_spi_write_mask.exit46_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit46

if.end.i.i.i.i.i.i.i.i42:                         ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i.i.i38, ptr %prev.i.i.i.i.i.i.i.i35, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i.i23, ptr %transfer_list.i.i.i.i.i.i38, align 4
  %prev3.i.i.i.i.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i24, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i.i23, ptr %prev3.i.i.i.i.i.i.i.i41, align 4
  %33 = ptrtoint ptr %msg.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i.i.i38, ptr %msg.i.i.i.i23, align 4
  br label %ad5758_spi_write_mask.exit46

ad5758_spi_write_mask.exit46:                     ; preds = %if.end.i.i.i.i.i.i.i.i42, %if.end.i40.ad5758_spi_write_mask.exit46_crit_edge
  %call.i.i.i.i43 = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i.i.i23) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i23) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i43)
  %cmp5 = icmp slt i32 %call.i.i.i.i43, 0
  br i1 %cmp5, label %ad5758_spi_write_mask.exit46.cleanup_crit_edge, label %if.end7

ad5758_spi_write_mask.exit46.cleanup_crit_edge:   ; preds = %ad5758_spi_write_mask.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %ad5758_spi_write_mask.exit46
  %call8 = call fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %st, i32 noundef 12, i32 noundef 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dc_dc_mode = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 4
  %34 = ptrtoint ptr %dc_dc_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mode, ptr %dc_dc_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %ad5758_spi_write_mask.exit46.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %ad5758_spi_write_mask.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call.i.i.i.i, %ad5758_spi_write_mask.exit.cleanup_crit_edge ], [ %call.i.i.i.i43, %ad5758_spi_write_mask.exit46.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i25, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_set_out_range(ptr noundef %st, i32 noundef %range) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and = and i32 %range, 15
  %and.i = and i32 %call.i, 65520
  %or.i = or i32 %and.i, %and
  %and1.i.i = shl nuw nsw i32 %or.i, 8
  %or3.i.i = or i32 %and1.i.i, -2046820352
  %d32.i.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %0 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or3.i.i, ptr %d32.i.i, align 4
  %1 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %3 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %d32.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.ad5758_spi_write_mask.exit_crit_edge

if.end.i.ad5758_spi_write_mask.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5758_spi_write_mask.exit

ad5758_spi_write_mask.exit:                       ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.ad5758_spi_write_mask.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp, label %ad5758_spi_write_mask.exit.cleanup_crit_edge, label %if.end

ad5758_spi_write_mask.exit.cleanup_crit_edge:     ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %st, i32 noundef 20, i32 noundef 32768)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad5758_spi_write_mask.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i.i.i.i, %ad5758_spi_write_mask.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_slew_rate_config(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slew_time = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end846.for.body_crit_edge, %entry
  %sr_clk_idx.01375 = phi i32 [ 0, %entry ], [ %sr_clk_idx.1, %if.end846.for.body_crit_edge ]
  %sr_step_idx.01374 = phi i32 [ 0, %entry ], [ %sr_step_idx.1, %if.end846.for.body_crit_edge ]
  %i.01373 = phi i32 [ 0, %entry ], [ %inc, %if.end846.for.body_crit_edge ]
  %diff_old.01372 = phi i64 [ 9223372036854775807, %entry ], [ %11, %if.end846.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr @ad5758_sr_clk, i32 0, i32 %i.01373
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 65535000000) #11, !srcloc !111
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %3 = ptrtoint ptr %slew_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slew_time, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %asmresult1.i)
  %cmp382 = icmp ult i64 %asmresult1.i, 4294967296
  br i1 %cmp382, label %if.then390, label %if.else396, !prof !112

if.then390:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv391 = trunc i64 %asmresult1.i to i32
  %div394 = udiv i32 %conv391, %4
  br label %if.end400

if.else396:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %asmresult1.i) #11, !srcloc !111
  %asmresult1.i1225 = extractvalue { i64, i64 } %5, 1
  %extract.t1370 = trunc i64 %asmresult1.i1225 to i32
  br label %if.end400

if.end400:                                        ; preds = %if.else396, %if.then390
  %sr_step.1.off0 = phi i32 [ %div394, %if.then390 ], [ %extract.t1370, %if.else396 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sr_step.1.off0)
  %cmp1.not.i = icmp sgt i32 %sr_step.1.off0, 4
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end400.if.else620_crit_edge

if.end400.if.else620_crit_edge:                   ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else620

for.inc.i:                                        ; preds = %if.end400
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sr_step.1.off0)
  %cmp1.not.1.i = icmp ugt i32 %sr_step.1.off0, 12
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.else620_crit_edge

for.inc.i.if.else620_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else620

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sr_step.1.off0)
  %cmp1.not.2.i = icmp ugt i32 %sr_step.1.off0, 64
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.else620_crit_edge

for.inc.1.i.if.else620_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else620

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %sr_step.1.off0)
  %cmp1.not.3.i = icmp ugt i32 %sr_step.1.off0, 120
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.else620_crit_edge

for.inc.2.i.if.else620_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else620

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sr_step.1.off0)
  %cmp1.not.4.i = icmp ugt i32 %sr_step.1.off0, 256
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.else620_crit_edge

for.inc.3.i.if.else620_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else620

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %sr_step.1.off0)
  %cmp1.not.5.i = icmp ugt i32 %sr_step.1.off0, 500
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.else620_crit_edge

for.inc.4.i.if.else620_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else620

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1820, i32 %sr_step.1.off0)
  %cmp1.not.6.i = icmp ugt i32 %sr_step.1.off0, 1820
  %spec.select.i = select i1 %cmp1.not.6.i, i32 7, i32 6
  br label %if.else620

if.else620:                                       ; preds = %for.inc.5.i, %for.inc.4.i.if.else620_crit_edge, %for.inc.3.i.if.else620_crit_edge, %for.inc.2.i.if.else620_crit_edge, %for.inc.1.i.if.else620_crit_edge, %for.inc.i.if.else620_crit_edge, %if.end400.if.else620_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end400.if.else620_crit_edge ], [ 1, %for.inc.i.if.else620_crit_edge ], [ 2, %for.inc.1.i.if.else620_crit_edge ], [ 3, %for.inc.2.i.if.else620_crit_edge ], [ 4, %for.inc.3.i.if.else620_crit_edge ], [ 5, %for.inc.4.i.if.else620_crit_edge ], [ %spec.select.i, %for.inc.5.i ]
  %arrayidx405 = getelementptr [8 x i32], ptr @ad5758_sr_step, i32 0, i32 %retval.0.i
  %6 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx405, align 4
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 65535000000) #11, !srcloc !111
  %asmresult1.i1250 = extractvalue { i64, i64 } %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %asmresult1.i1250)
  %cmp828 = icmp ult i64 %asmresult1.i1250, 4294967296
  br i1 %cmp828, label %if.then836, label %if.else842, !prof !112

if.then836:                                       ; preds = %if.else620
  call void @__sanitizer_cov_trace_pc() #9
  %conv837 = trunc i64 %asmresult1.i1250 to i32
  %div840 = udiv i32 %conv837, %1
  %conv841 = zext i32 %div840 to i64
  br label %if.end846

if.else842:                                       ; preds = %if.else620
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %asmresult1.i1250) #11, !srcloc !111
  %asmresult1.i1275 = extractvalue { i64, i64 } %9, 1
  br label %if.end846

if.end846:                                        ; preds = %if.else842, %if.then836
  %calc_slew_time.1 = phi i64 [ %conv841, %if.then836 ], [ %asmresult1.i1275, %if.else842 ]
  %conv849 = zext i32 %4 to i64
  %sub850 = sub i64 %conv849, %calc_slew_time.1
  %10 = tail call i64 @llvm.abs.i64(i64 %sub850, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %diff_old.01372)
  %cmp859 = icmp slt i64 %10, %diff_old.01372
  %11 = tail call i64 @llvm.smin.i64(i64 %10, i64 %diff_old.01372)
  %sr_step_idx.1 = select i1 %cmp859, i32 %retval.0.i, i32 %sr_step_idx.01374
  %sr_clk_idx.1 = select i1 %cmp859, i32 %i.01373, i32 %sr_clk_idx.01375
  %inc = add nuw nsw i32 %i.01373, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end846.for.body_crit_edge

if.end846.for.body_crit_edge:                     ; preds = %if.end846
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end846
  %call.i.i = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.end.ad5758_slew_rate_set.exit_crit_edge, label %if.end.i.i

for.end.ad5758_slew_rate_set.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_slew_rate_set.exit

if.end.i.i:                                       ; preds = %for.end
  %and.i1276 = shl i32 %sr_step_idx.1, 13
  %shl.i = and i32 %and.i1276, 57344
  %and1.i = shl i32 %sr_clk_idx.1, 9
  %shl2.i = and i32 %and1.i, 7680
  %and.i.i = and i32 %call.i.i, 255
  %or.i = or i32 %shl.i, %shl2.i
  %or3.i = or i32 %and.i.i, %or.i
  %or.i.i = shl nuw nsw i32 %or3.i, 8
  %or3.i.i.i = or i32 %or.i.i, -2046754816
  %d32.i.i.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %12 = ptrtoint ptr %d32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or3.i.i.i, ptr %d32.i.i.i, align 4
  %13 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  %15 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %d32.i.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.end.i.i.ad5758_spi_write_mask.exit.i_crit_edge

if.end.i.i.ad5758_spi_write_mask.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %ad5758_spi_write_mask.exit.i

ad5758_spi_write_mask.exit.i:                     ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.end.i.i.ad5758_spi_write_mask.exit.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i, label %ad5758_spi_write_mask.exit.i.ad5758_slew_rate_set.exit_crit_edge, label %if.end.i

ad5758_spi_write_mask.exit.i.ad5758_slew_rate_set.exit_crit_edge: ; preds = %ad5758_spi_write_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_slew_rate_set.exit

if.end.i:                                         ; preds = %ad5758_spi_write_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %st, i32 noundef 20, i32 noundef 32768) #7
  br label %ad5758_slew_rate_set.exit

ad5758_slew_rate_set.exit:                        ; preds = %if.end.i, %ad5758_spi_write_mask.exit.i.ad5758_slew_rate_set.exit_crit_edge, %for.end.ad5758_slew_rate_set.exit_crit_edge
  %retval.0.i1277 = phi i32 [ %call4.i, %if.end.i ], [ %call.i.i.i.i.i, %ad5758_spi_write_mask.exit.i.ad5758_slew_rate_set.exit_crit_edge ], [ %call.i.i, %for.end.ad5758_slew_rate_set.exit_crit_edge ]
  ret i32 %retval.0.i1277
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_internal_buffers_en(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %or.i = shl i32 %call.i, 8
  %and1.i.i = and i32 %or.i, 16768768
  %or3.i.i = or i32 %and1.i.i, -2046812160
  %d32.i.i = getelementptr inbounds %struct.ad5758_state, ptr %st, i32 0, i32 8
  %0 = ptrtoint ptr %d32.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or3.i.i, ptr %d32.i.i, align 4
  %1 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #7
  %3 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %d32.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.ad5758_spi_write_mask.exit_crit_edge

if.end.i.ad5758_spi_write_mask.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad5758_spi_write_mask.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5758_spi_write_mask.exit

ad5758_spi_write_mask.exit:                       ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.ad5758_spi_write_mask.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp, label %ad5758_spi_write_mask.exit.cleanup_crit_edge, label %if.end

ad5758_spi_write_mask.exit.cleanup_crit_edge:     ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ad5758_spi_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %st, i32 noundef 20, i32 noundef 32768)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad5758_spi_write_mask.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i.i.i.i, %ad5758_spi_write_mask.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5758_wait_for_task_complete(ptr noundef %st, i32 noundef %reg, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.1 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp.1 = icmp slt i32 %call.1, 0
  br i1 %cmp.1, label %if.end2.cleanup_crit_edge, label %if.end.1

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end2
  %and.1 = and i32 %call.1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1.cleanup_crit_edge, label %if.end2.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.1:                                        ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.2 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp.2 = icmp slt i32 %call.2, 0
  br i1 %cmp.2, label %if.end2.1.cleanup_crit_edge, label %if.end.2

if.end2.1.cleanup_crit_edge:                      ; preds = %if.end2.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end2.1
  %and.2 = and i32 %call.2, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2.cleanup_crit_edge, label %if.end2.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.2:                                        ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.3 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp.3 = icmp slt i32 %call.3, 0
  br i1 %cmp.3, label %if.end2.2.cleanup_crit_edge, label %if.end.3

if.end2.2.cleanup_crit_edge:                      ; preds = %if.end2.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end2.2
  %and.3 = and i32 %call.3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.3.cleanup_crit_edge, label %if.end2.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.3:                                        ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.4 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp.4 = icmp slt i32 %call.4, 0
  br i1 %cmp.4, label %if.end2.3.cleanup_crit_edge, label %if.end.4

if.end2.3.cleanup_crit_edge:                      ; preds = %if.end2.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end2.3
  %and.4 = and i32 %call.4, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.4.cleanup_crit_edge, label %if.end2.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.4:                                        ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.5 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp.5 = icmp slt i32 %call.5, 0
  br i1 %cmp.5, label %if.end2.4.cleanup_crit_edge, label %if.end.5

if.end2.4.cleanup_crit_edge:                      ; preds = %if.end2.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end2.4
  %and.5 = and i32 %call.5, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.5.cleanup_crit_edge, label %if.end2.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.5:                                        ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.6 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp.6 = icmp slt i32 %call.6, 0
  br i1 %cmp.6, label %if.end2.5.cleanup_crit_edge, label %if.end.6

if.end2.5.cleanup_crit_edge:                      ; preds = %if.end2.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end2.5
  %and.6 = and i32 %call.6, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.6.cleanup_crit_edge, label %if.end2.6

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.6:                                        ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.7 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp.7 = icmp slt i32 %call.7, 0
  br i1 %cmp.7, label %if.end2.6.cleanup_crit_edge, label %if.end.7

if.end2.6.cleanup_crit_edge:                      ; preds = %if.end2.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end2.6
  %and.7 = and i32 %call.7, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.7.cleanup_crit_edge, label %if.end2.7

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.7:                                        ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.8 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %cmp.8 = icmp slt i32 %call.8, 0
  br i1 %cmp.8, label %if.end2.7.cleanup_crit_edge, label %if.end.8

if.end2.7.cleanup_crit_edge:                      ; preds = %if.end2.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end2.7
  %and.8 = and i32 %call.8, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end.8.cleanup_crit_edge, label %if.end2.8

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.8:                                        ; preds = %if.end.8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %call.9 = tail call fastcc i32 @ad5758_spi_reg_read(ptr noundef %st, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %cmp.9 = icmp slt i32 %call.9, 0
  br i1 %cmp.9, label %if.end2.8.cleanup_crit_edge, label %if.end.9

if.end2.8.cleanup_crit_edge:                      ; preds = %if.end2.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9:                                         ; preds = %if.end2.8
  %and.9 = and i32 %call.9, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %if.end.9.cleanup_crit_edge, label %if.end2.9

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.9:                                        ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %mask, i32 noundef %reg) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2.9, %if.end.9.cleanup_crit_edge, %if.end2.8.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %if.end2.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end2.6.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end2.5.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end2.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end2.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end2.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end2.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end2.9 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.1, %if.end2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ %call.2, %if.end2.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ %call.3, %if.end2.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ %call.4, %if.end2.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ %call.5, %if.end2.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ %call.6, %if.end2.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ %call.7, %if.end2.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ %call.8, %if.end2.7.cleanup_crit_edge ], [ 0, %if.end.8.cleanup_crit_edge ], [ %call.9, %if.end2.8.cleanup_crit_edge ], [ 0, %if.end.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_ad5758__233_900_ad5758_driver_init6, !1, !"__initcall__kmod_ad5758__233_900_ad5758_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5758.c", i32 900, i32 1}
!2 = !{ptr @__exitcall_ad5758_driver_exit, !1, !"__exitcall_ad5758_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author234, !4, !"__UNIQUE_ID_author234", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5758.c", i32 902, i32 1}
!5 = !{ptr @__UNIQUE_ID_description235, !6, !"__UNIQUE_ID_description235", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5758.c", i32 903, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5758.c", i32 904, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5758.c", i32 893, i32 11}
!12 = !{ptr @ad5758_driver, !13, !"ad5758_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5758.c", i32 891, i32 26}
!14 = !{ptr @ad5758_id, !15, !"ad5758_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5758.c", i32 879, i32 35}
!16 = !{ptr @ad5758_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5758.c", i32 854, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad5758.c", i32 872, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ad5758_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ad5758_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ad5758_info, !28, !"ad5758_info", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5758.c", i32 619, i32 30}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad5758.c", i32 703, i32 12}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ad5758.c", i32 705, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ad5758_parse_dt.__UNIQUE_ID_ddebug230, !32, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/ad5758.c", i32 712, i32 4}
!37 = !{ptr @ad5758_parse_dt.__UNIQUE_ID_ddebug231, !36, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/ad5758.c", i32 717, i32 48}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5758.c", i32 720, i32 3}
!42 = !{ptr @ad5758_parse_dt._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ad5758_parse_dt._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5758.c", i32 729, i32 12}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/dac/ad5758.c", i32 732, i32 4}
!48 = !{ptr @ad5758_parse_dt._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ad5758_parse_dt._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5758.c", i32 740, i32 12}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/dac/ad5758.c", i32 743, i32 4}
!54 = !{ptr @ad5758_parse_dt._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ad5758_parse_dt._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/dac/ad5758.c", i32 753, i32 3}
!58 = !{ptr @ad5758_parse_dt._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ad5758_parse_dt._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/dac/ad5758.c", i32 757, i32 48}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/dac/ad5758.c", i32 759, i32 3}
!64 = !{ptr @ad5758_parse_dt.__UNIQUE_ID_ddebug232, !63, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!65 = !{ptr @ad5758_dc_dc_ilim, !66, !"ad5758_dc_dc_ilim", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/ad5758.c", i32 182, i32 18}
!67 = !{ptr @ad5758_voltage_range, !68, !"ad5758_voltage_range", i1 false, i1 false}
!68 = !{!"../drivers/iio/dac/ad5758.c", i32 157, i32 34}
!69 = !{ptr @ad5758_current_range, !70, !"ad5758_current_range", i1 false, i1 false}
!70 = !{!"../drivers/iio/dac/ad5758.c", i32 164, i32 34}
!71 = !{ptr @ad5758_voltage_ch, !72, !"ad5758_voltage_ch", i1 false, i1 false}
!72 = !{!"../drivers/iio/dac/ad5758.c", i32 645, i32 35}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/dac/ad5758.c", i32 627, i32 11}
!75 = !{ptr @ad5758_ext_info, !76, !"ad5758_ext_info", i1 false, i1 false}
!76 = !{!"../drivers/iio/dac/ad5758.c", i32 625, i32 44}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/dac/ad5758.c", i32 576, i32 25}
!79 = !{ptr @ad5758_current_ch, !80, !"ad5758_current_ch", i1 false, i1 false}
!80 = !{!"../drivers/iio/dac/ad5758.c", i32 649, i32 35}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/dac/ad5758.c", i32 772, i32 58}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/dac/ad5758.c", i32 290, i32 3}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ad5758_calib_mem_refresh._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ad5758_calib_mem_refresh._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/dac/ad5758.c", i32 277, i32 2}
!90 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ad5758_wait_for_task_complete._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ad5758_wait_for_task_complete._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ad5758_sr_clk, !94, !"ad5758_sr_clk", i1 false, i1 false}
!94 = !{!"../drivers/iio/dac/ad5758.c", i32 173, i32 18}
!95 = !{ptr @ad5758_sr_step, !96, !"ad5758_sr_step", i1 false, i1 false}
!96 = !{!"../drivers/iio/dac/ad5758.c", i32 178, i32 18}
!97 = !{ptr @ad5758_of_match, !98, !"ad5758_of_match", i1 false, i1 false}
!98 = !{!"../drivers/iio/dac/ad5758.c", i32 885, i32 34}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2148778287, i64 2148778292, i64 2148778305, i64 2148778349, i64 2148778383, i64 2148778404}
!110 = !{i8 0, i8 2}
!111 = !{i64 2148003960, i64 2148004240, i64 2148004574, i64 2148004908}
!112 = !{!"branch_weights", i32 2000, i32 1}
