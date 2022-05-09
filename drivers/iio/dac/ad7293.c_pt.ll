; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad7293.c_pt.bc'
source_filename = "../drivers/iio/dac/ad7293.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ad7293_state = type { ptr, %struct.mutex, ptr, ptr, ptr, i8, [19 x i8], [3 x i8], [125 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ad7293__500_930_ad7293_driver_init6 = internal global ptr @ad7293_driver_init, section ".initcall6.init", align 4
@ad7293_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7293_id, ptr @ad7293_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7293_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7293_driver_exit = internal global ptr @ad7293_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author501 = internal constant [58 x i8] c"ad7293.author=Antoniu Miclaus <antoniu.miclaus@analog.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description502 = internal constant [41 x i8] c"ad7293.description=Analog Devices AD7293\00", section ".modinfo", align 1
@__UNIQUE_ID_file503 = internal constant [35 x i8] c"ad7293.file=drivers/iio/dac/ad7293\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [22 x i8] c"ad7293.license=GPL v2\00", section ".modinfo", align 1
@ad7293_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7293\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7293\00", [25 x i8] zeroinitializer }, align 32
@ad7293_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7293\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad7293_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7293_read_raw, ptr null, ptr @ad7293_read_avail, ptr @ad7293_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7293_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7293_channels = internal constant { [19 x %struct.iio_chan_spec], [440 x i8] } { [19 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [440 x i8] zeroinitializer }, align 32
@ad7293_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@dac_offset_table = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@adc_range_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@isense_gain_table = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], [52 x i8] zeroinitializer }, align 32
@ad7293_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to enable specified AVDD Voltage!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ad7293_init\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad7293.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7293_init._entry_ptr = internal global ptr @ad7293_init._entry, section ".printk_index", align 4
@ad7293_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to enable specified VDRIVE Voltage!\0A\00", [52 x i8] zeroinitializer }, align 32
@ad7293_init._entry_ptr.9 = internal global ptr @ad7293_init._entry.7, section ".printk_index", align 4
@ad7293_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 845, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read avdd regulator: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ad7293_init._entry_ptr.12 = internal global ptr @ad7293_init._entry.10, section ".printk_index", align 4
@ad7293_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read vdrive regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ad7293_init._entry_ptr.15 = internal global ptr @ad7293_init._entry.13, section ".printk_index", align 4
@ad7293_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 867, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid Chip ID.\0A\00", [46 x i8] zeroinitializer }, align 32
@ad7293_init._entry_ptr.18 = internal global ptr @ad7293_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get the reset GPIO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get the AVDD voltage\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdrive\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get the VDRIVE voltage\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"ad7293_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 922, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"ad7293_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 910, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 924, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ad7293_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 916, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"ad7293_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 874, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"ad7293_channels\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 729, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 901, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"dac_offset_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 133, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"adc_range_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 137, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"isense_gain_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 135, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 821, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 833, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 845, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 854, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 867, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 781, i32 58 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 785, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 787, i32 47 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 790, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 792, i32 49 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [28 x i8] c"../drivers/iio/dac/ad7293.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 795, i32 10 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author501, ptr @__UNIQUE_ID_description502, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_license504, ptr @__exitcall_ad7293_driver_exit, ptr @__initcall__kmod_ad7293__500_930_ad7293_driver_init6, ptr @ad7293_driver_exit, ptr @ad7293_init._entry, ptr @ad7293_init._entry.10, ptr @ad7293_init._entry.13, ptr @ad7293_init._entry.16, ptr @ad7293_init._entry.7, ptr @ad7293_init._entry_ptr, ptr @ad7293_init._entry_ptr.12, ptr @ad7293_init._entry_ptr.15, ptr @ad7293_init._entry_ptr.18, ptr @ad7293_init._entry_ptr.9, ptr @ad7293_driver, ptr @ad7293_id, ptr @.str, ptr @ad7293_of_match, ptr @ad7293_info, ptr @ad7293_channels, ptr @ad7293_probe.__key, ptr @.str.1, ptr @dac_offset_table, ptr @adc_range_table, ptr @isense_gain_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_channels to i32), i32 1672, i32 2112, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_offset_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_range_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isense_gain_table to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7293_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7293_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7293_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7293_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7293_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7293_probe(ptr noundef %spi) #2 align 64 {
entry:
  %chip_id.i = alloca i16, align 2
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
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ad7293_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ad7293_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 19, ptr %num_channels, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %1, align 128
  %page_select = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %page_select to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %page_select, align 4
  %lock = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad7293_probe.__key) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %chip_id.i) #6
  %8 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %chip_id.i, align 2, !annotation !76
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %call.i.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef 7) #6
  %gpio_reset.i.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %gpio_reset.i.i, align 32
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.ad7293_properties_parse.exit.i_crit_edge, label %if.end.i.i

if.end.ad7293_properties_parse.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_properties_parse.exit.i

if.end.i.i:                                       ; preds = %if.end
  %call10.i.i = tail call ptr @devm_regulator_get(ptr noundef %10, ptr noundef nonnull @.str.21) #6
  %reg_avdd.i.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %reg_avdd.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10.i.i, ptr %reg_avdd.i.i, align 4
  %cmp.i43.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i.i, label %if.end.i.i.ad7293_properties_parse.exit.i_crit_edge, label %if.end18.i.i

if.end.i.i.ad7293_properties_parse.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_properties_parse.exit.i

if.end18.i.i:                                     ; preds = %if.end.i.i
  %call20.i.i = tail call ptr @devm_regulator_get(ptr noundef %10, ptr noundef nonnull @.str.23) #6
  %reg_vdrive.i.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %reg_vdrive.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20.i.i, ptr %reg_vdrive.i.i, align 8
  %cmp.i44.i.i = icmp ugt ptr %call20.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i.i, label %if.end18.i.i.ad7293_properties_parse.exit.i_crit_edge, label %if.end18.i.i.if.end.i_crit_edge

if.end18.i.i.if.end.i_crit_edge:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end18.i.i.ad7293_properties_parse.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_properties_parse.exit.i

ad7293_properties_parse.exit.i:                   ; preds = %if.end18.i.i.ad7293_properties_parse.exit.i_crit_edge, %if.end.i.i.ad7293_properties_parse.exit.i_crit_edge, %if.end.ad7293_properties_parse.exit.i_crit_edge
  %call20.sink.i.i = phi ptr [ %call.i.i, %if.end.ad7293_properties_parse.exit.i_crit_edge ], [ %call10.i.i, %if.end.i.i.ad7293_properties_parse.exit.i_crit_edge ], [ %call20.i.i, %if.end18.i.i.ad7293_properties_parse.exit.i_crit_edge ]
  %.str.24.sink.i.i = phi ptr [ @.str.20, %if.end.ad7293_properties_parse.exit.i_crit_edge ], [ @.str.22, %if.end.i.i.ad7293_properties_parse.exit.i_crit_edge ], [ @.str.24, %if.end18.i.i.ad7293_properties_parse.exit.i_crit_edge ]
  %14 = ptrtoint ptr %call20.sink.i.i to i32
  %call27.i.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %.str.24.sink.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool.not.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool.not.i, label %ad7293_properties_parse.exit.i.if.end.i_crit_edge, label %ad7293_properties_parse.exit.i.ad7293_init.exit.thread_crit_edge

ad7293_properties_parse.exit.i.ad7293_init.exit.thread_crit_edge: ; preds = %ad7293_properties_parse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_init.exit.thread

ad7293_properties_parse.exit.i.if.end.i_crit_edge: ; preds = %ad7293_properties_parse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %ad7293_properties_parse.exit.i.if.end.i_crit_edge, %if.end18.i.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_reset.i.i, align 32
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i126.i, label %ad7293_reset.exit.thread.i

ad7293_reset.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %16, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #6
  %17 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_reset.i.i, align 32
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #6
  br label %if.end5.i

if.end.i126.i:                                    ; preds = %if.end.i
  %call.i.i.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131087, i16 noundef zeroext 29331) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %ad7293_reset.exit.i, label %if.end.i126.i.ad7293_init.exit.thread_crit_edge

if.end.i126.i.ad7293_init.exit.thread_crit_edge:  ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_init.exit.thread

ad7293_reset.exit.i:                              ; preds = %if.end.i126.i
  %call32.i.i.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131087, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %tobool3.not.i = icmp eq i32 %call32.i.i.i, 0
  br i1 %tobool3.not.i, label %ad7293_reset.exit.i.if.end5.i_crit_edge, label %ad7293_reset.exit.i.ad7293_init.exit.thread_crit_edge

ad7293_reset.exit.i.ad7293_init.exit.thread_crit_edge: ; preds = %ad7293_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_init.exit.thread

ad7293_reset.exit.i.if.end5.i_crit_edge:          ; preds = %ad7293_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %ad7293_reset.exit.i.if.end5.i_crit_edge, %ad7293_reset.exit.thread.i
  %reg_avdd.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %reg_avdd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_avdd.i, align 4
  %call6.i = tail call i32 @regulator_enable(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #9
  br label %ad7293_init.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %21 = ptrtoint ptr %reg_avdd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_avdd.i, align 4
  %call.i128.i = tail call i32 @devm_add_action(ptr noundef %10, ptr noundef nonnull @ad7293_reg_disable, ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %tobool.not.i129.i = icmp eq i32 %call.i128.i, 0
  br i1 %tobool.not.i129.i, label %if.end15.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i130.i = tail call i32 @regulator_disable(ptr noundef %22) #6
  br label %ad7293_init.exit.thread

if.end15.i:                                       ; preds = %if.end9.i
  %reg_vdrive.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %reg_vdrive.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_vdrive.i, align 8
  %call16.i = tail call i32 @regulator_enable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end23.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8) #9
  br label %ad7293_init.exit.thread

if.end23.i:                                       ; preds = %if.end15.i
  %25 = ptrtoint ptr %reg_vdrive.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_vdrive.i, align 8
  %call.i133.i = tail call i32 @devm_add_action(ptr noundef %10, ptr noundef nonnull @ad7293_reg_disable, ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool.not.i134.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool.not.i134.i, label %if.end29.i, label %devm_add_action_or_reset.exit138.i

devm_add_action_or_reset.exit138.i:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i135.i = tail call i32 @regulator_disable(ptr noundef %26) #6
  br label %ad7293_init.exit.thread

if.end29.i:                                       ; preds = %if.end23.i
  %27 = ptrtoint ptr %reg_avdd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_avdd.i, align 4
  %call31.i = tail call i32 @regulator_get_voltage(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp.i = icmp slt i32 %call31.i, 0
  br i1 %cmp.i, label %do.end35.i, label %if.end37.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %call31.i) #9
  br label %ad7293_init.exit.thread

if.end37.i:                                       ; preds = %if.end29.i
  %29 = add nsw i32 %call31.i, -5500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000001, i32 %29)
  %30 = icmp ult i32 %29, -1000001
  br i1 %30, label %if.end37.i.ad7293_init.exit.thread_crit_edge, label %if.end41.i

if.end37.i.ad7293_init.exit.thread_crit_edge:     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_init.exit.thread

if.end41.i:                                       ; preds = %if.end37.i
  %31 = ptrtoint ptr %reg_vdrive.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_vdrive.i, align 8
  %call43.i = tail call i32 @regulator_get_voltage(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %do.end48.i, label %if.end50.i

do.end48.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %call43.i) #9
  br label %ad7293_init.exit.thread

if.end50.i:                                       ; preds = %if.end41.i
  %33 = add nsw i32 %call43.i, -5500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3800001, i32 %33)
  %34 = icmp ult i32 %33, -3800001
  br i1 %34, label %if.end50.i.ad7293_init.exit.thread_crit_edge, label %if.end55.i

if.end50.i.ad7293_init.exit.thread_crit_edge:     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_init.exit.thread

if.end55.i:                                       ; preds = %if.end50.i
  %call72.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131084, ptr noundef nonnull %chip_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %if.end55.i.ad7293_init.exit.thread_crit_edge

if.end55.i.ad7293_init.exit.thread_crit_edge:     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_init.exit.thread

if.end75.i:                                       ; preds = %if.end55.i
  %35 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %chip_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %36)
  %cmp76.not.i = icmp eq i16 %36, 24
  br i1 %cmp76.not.i, label %if.end6, label %do.end81.i

do.end81.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17) #9
  br label %ad7293_init.exit.thread

ad7293_init.exit.thread:                          ; preds = %do.end81.i, %if.end55.i.ad7293_init.exit.thread_crit_edge, %if.end50.i.ad7293_init.exit.thread_crit_edge, %do.end48.i, %if.end37.i.ad7293_init.exit.thread_crit_edge, %do.end35.i, %devm_add_action_or_reset.exit138.i, %do.end21.i, %devm_add_action_or_reset.exit.i, %do.end.i, %ad7293_reset.exit.i.ad7293_init.exit.thread_crit_edge, %if.end.i126.i.ad7293_init.exit.thread_crit_edge, %ad7293_properties_parse.exit.i.ad7293_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %if.end.i126.i.ad7293_init.exit.thread_crit_edge ], [ %call72.i, %if.end55.i.ad7293_init.exit.thread_crit_edge ], [ -22, %if.end50.i.ad7293_init.exit.thread_crit_edge ], [ -22, %if.end37.i.ad7293_init.exit.thread_crit_edge ], [ %call.i133.i, %devm_add_action_or_reset.exit138.i ], [ %call.i128.i, %devm_add_action_or_reset.exit.i ], [ %call32.i.i.i, %ad7293_reset.exit.i.ad7293_init.exit.thread_crit_edge ], [ %call27.i.i, %ad7293_properties_parse.exit.i.ad7293_init.exit.thread_crit_edge ], [ -22, %do.end81.i ], [ %call43.i, %do.end48.i ], [ %call31.i, %do.end35.i ], [ %call16.i, %do.end21.i ], [ %call6.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chip_id.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %chip_id.i) #6
  %call8 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %ad7293_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %ad7293_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7293_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %data.i = alloca i16, align 2
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !76
  %3 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb14
    i32 2, label %sw.bb58
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb5
    i32 9, label %sw.bb8
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %output, align 4
  %8 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %channel3 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %add130.i = add i32 %10, 131120
  %lock271.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock271.i, i32 noundef 0) #6
  %call210.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %add130.i, ptr noundef nonnull %data) #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 2
  %13 = lshr i16 %12, 4
  store i16 %13, ptr %data, align 2
  tail call void @mutex_unlock(ptr noundef %lock271.i) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  %add.i = add i32 %10, 131088
  %lock259.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock259.i, i32 noundef 0) #6
  %data_wr.0260.i = shl nuw i32 1, %10
  %conv182.i = trunc i32 %data_wr.0260.i to i16
  %call183.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131856, i16 noundef zeroext %conv182.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183.i)
  %tobool184.not.i = icmp eq i32 %call183.i, 0
  br i1 %tobool184.not.i, label %if.end186.i, label %if.else.ad7293_ch_read_raw.exit_crit_edge

if.else.ad7293_ch_read_raw.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_ch_read_raw.exit

if.end186.i:                                      ; preds = %if.else
  %call205.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131074, i16 noundef zeroext 130) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205.i)
  %tobool206.not.i = icmp eq i32 %call205.i, 0
  br i1 %tobool206.not.i, label %if.end209.i, label %if.end186.i.ad7293_ch_read_raw.exit_crit_edge

if.end186.i.ad7293_ch_read_raw.exit_crit_edge:    ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_ch_read_raw.exit

if.end209.i:                                      ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #8
  %call210.i113 = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %data) #6
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data, align 2
  %16 = lshr i16 %15, 4
  store i16 %16, ptr %data, align 2
  br label %ad7293_ch_read_raw.exit

ad7293_ch_read_raw.exit:                          ; preds = %if.end209.i, %if.end186.i.ad7293_ch_read_raw.exit_crit_edge, %if.else.ad7293_ch_read_raw.exit_crit_edge
  %ret.0.i = phi i32 [ %call183.i, %if.else.ad7293_ch_read_raw.exit_crit_edge ], [ %call205.i, %if.end186.i.ad7293_ch_read_raw.exit_crit_edge ], [ %call210.i113, %if.end209.i ]
  tail call void @mutex_unlock(ptr noundef %lock259.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %channel6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel6, align 4
  %call7 = call fastcc i32 @ad7293_ch_read_raw(ptr noundef %1, i32 noundef 2, i32 noundef %18, ptr noundef nonnull %data)
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %channel9 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel9, align 4
  %call10 = call fastcc i32 @ad7293_ch_read_raw(ptr noundef %1, i32 noundef 1, i32 noundef %20, ptr noundef nonnull %data)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %ad7293_ch_read_raw.exit, %if.then
  %ret.0 = phi i32 [ %call10, %sw.bb8 ], [ %call7, %sw.bb5 ], [ %call210.i, %if.then ], [ %ret.0.i, %ad7293_ch_read_raw.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end13, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 2
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %25, label %sw.bb14.cleanup_crit_edge [
    i32 0, label %sw.bb16
    i32 1, label %sw.bb44
    i32 9, label %sw.bb48
  ]

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb14
  %output17 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %27 = ptrtoint ptr %output17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load18 = load i8, ptr %output17, align 4
  %28 = and i8 %bf.load18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool22.not = icmp eq i8 %28, 0
  %channel41 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %29 = ptrtoint ptr %channel41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel41, align 4
  br i1 %tobool22.not, label %if.else40, label %if.then23

if.then23:                                        ; preds = %sw.bb16
  %add = add i32 %30, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp.i = icmp ult i32 %add, 4
  br i1 %cmp.i, label %if.then23.return.sink.split.i_crit_edge, label %if.else.i

if.then23.return.sink.split.i_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.else.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add)
  %cmp10.i = icmp ult i32 %add, 7
  br i1 %cmp10.i, label %if.else.i.return.sink.split.i_crit_edge, label %if.else27.i

if.else.i.return.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %30)
  %cmp28.i = icmp ugt i32 %30, -12
  br i1 %cmp28.i, label %if.else27.i.return.sink.split.i_crit_edge, label %if.else46.i

if.else27.i.return.sink.split.i_crit_edge:        ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

if.else46.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add)
  %cmp47.i = icmp ult i32 %add, 19
  br i1 %cmp47.i, label %if.else46.i.return.sink.split.i_crit_edge, label %if.else46.i.ad7293_get_offset.exit_crit_edge

if.else46.i.ad7293_get_offset.exit_crit_edge:     ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_get_offset.exit

if.else46.i.return.sink.split.i_crit_edge:        ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.else46.i.return.sink.split.i_crit_edge, %if.else27.i.return.sink.split.i_crit_edge, %if.else.i.return.sink.split.i_crit_edge, %if.then23.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 69136, %if.then23.return.sink.split.i_crit_edge ], [ 69148, %if.else.i.return.sink.split.i_crit_edge ], [ 69153, %if.else27.i.return.sink.split.i_crit_edge ], [ 69157, %if.else46.i.return.sink.split.i_crit_edge ]
  %add.i114 = add nuw nsw i32 %.sink.i, %add
  %lock.i.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %call.i86.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %add.i114, ptr noundef nonnull %data) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  br label %ad7293_get_offset.exit

ad7293_get_offset.exit:                           ; preds = %return.sink.split.i, %if.else46.i.ad7293_get_offset.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.else46.i.ad7293_get_offset.exit_crit_edge ], [ %call.i86.i, %return.sink.split.i ]
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 2
  %33 = lshr i16 %32, 4
  %34 = and i16 %33, 3
  store i16 %34, ptr %data, align 2
  br label %sw.epilog53

if.else40:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.i115 = icmp ult i32 %30, 4
  br i1 %cmp.i115, label %if.else40.return.sink.split.i126_crit_edge, label %if.else.i117

if.else40.return.sink.split.i126_crit_edge:       ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i126

if.else.i117:                                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp10.i116 = icmp ult i32 %30, 7
  br i1 %cmp10.i116, label %if.else.i117.return.sink.split.i126_crit_edge, label %if.else27.i119

if.else.i117.return.sink.split.i126_crit_edge:    ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i126

if.else27.i119:                                   ; preds = %if.else.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %30)
  %cmp28.i118 = icmp ult i32 %30, 11
  br i1 %cmp28.i118, label %if.else27.i119.return.sink.split.i126_crit_edge, label %if.else46.i121

if.else27.i119.return.sink.split.i126_crit_edge:  ; preds = %if.else27.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i126

if.else46.i121:                                   ; preds = %if.else27.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %30)
  %cmp47.i120 = icmp ult i32 %30, 19
  br i1 %cmp47.i120, label %if.else46.i121.return.sink.split.i126_crit_edge, label %if.else46.i121.cleanup_crit_edge

if.else46.i121.cleanup_crit_edge:                 ; preds = %if.else46.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else46.i121.return.sink.split.i126_crit_edge:  ; preds = %if.else46.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i126

return.sink.split.i126:                           ; preds = %if.else46.i121.return.sink.split.i126_crit_edge, %if.else27.i119.return.sink.split.i126_crit_edge, %if.else.i117.return.sink.split.i126_crit_edge, %if.else40.return.sink.split.i126_crit_edge
  %.sink.i122 = phi i32 [ 69136, %if.else40.return.sink.split.i126_crit_edge ], [ 69148, %if.else.i117.return.sink.split.i126_crit_edge ], [ 69153, %if.else27.i119.return.sink.split.i126_crit_edge ], [ 69157, %if.else46.i121.return.sink.split.i126_crit_edge ]
  %add.i123 = add nuw nsw i32 %.sink.i122, %30
  %lock.i.i124 = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i124, i32 noundef 0) #6
  %call.i86.i125 = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %add.i123, ptr noundef nonnull %data) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i124) #6
  br label %sw.epilog53

sw.bb44:                                          ; preds = %sw.bb14
  %channel45 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %35 = ptrtoint ptr %channel45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel45, align 4
  %add46 = add i32 %36, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add46)
  %cmp.i129 = icmp ult i32 %add46, 4
  br i1 %cmp.i129, label %sw.bb44.return.sink.split.i140_crit_edge, label %if.else.i131

sw.bb44.return.sink.split.i140_crit_edge:         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i140

if.else.i131:                                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %36)
  %cmp10.i130 = icmp ugt i32 %36, -8
  br i1 %cmp10.i130, label %if.else.i131.return.sink.split.i140_crit_edge, label %if.else27.i133

if.else.i131.return.sink.split.i140_crit_edge:    ; preds = %if.else.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i140

if.else27.i133:                                   ; preds = %if.else.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add46)
  %cmp28.i132 = icmp ult i32 %add46, 11
  br i1 %cmp28.i132, label %if.else27.i133.return.sink.split.i140_crit_edge, label %if.else46.i135

if.else27.i133.return.sink.split.i140_crit_edge:  ; preds = %if.else27.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i140

if.else46.i135:                                   ; preds = %if.else27.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add46)
  %cmp47.i134 = icmp ult i32 %add46, 19
  br i1 %cmp47.i134, label %if.else46.i135.return.sink.split.i140_crit_edge, label %if.else46.i135.cleanup_crit_edge

if.else46.i135.cleanup_crit_edge:                 ; preds = %if.else46.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else46.i135.return.sink.split.i140_crit_edge:  ; preds = %if.else46.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i140

return.sink.split.i140:                           ; preds = %if.else46.i135.return.sink.split.i140_crit_edge, %if.else27.i133.return.sink.split.i140_crit_edge, %if.else.i131.return.sink.split.i140_crit_edge, %sw.bb44.return.sink.split.i140_crit_edge
  %.sink.i136 = phi i32 [ 69136, %sw.bb44.return.sink.split.i140_crit_edge ], [ 69148, %if.else.i131.return.sink.split.i140_crit_edge ], [ 69153, %if.else27.i133.return.sink.split.i140_crit_edge ], [ 69157, %if.else46.i135.return.sink.split.i140_crit_edge ]
  %add.i137 = add nuw nsw i32 %.sink.i136, %add46
  %lock.i.i138 = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i138, i32 noundef 0) #6
  %call.i86.i139 = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %add.i137, ptr noundef nonnull %data) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i138) #6
  br label %sw.epilog53

sw.bb48:                                          ; preds = %sw.bb14
  %channel49 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %37 = ptrtoint ptr %channel49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel49, align 4
  %add50 = add i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %38)
  %cmp.i143 = icmp ugt i32 %38, -5
  br i1 %cmp.i143, label %sw.bb48.return.sink.split.i154_crit_edge, label %if.else.i145

sw.bb48.return.sink.split.i154_crit_edge:         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i154

if.else.i145:                                     ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add50)
  %cmp10.i144 = icmp ult i32 %add50, 7
  br i1 %cmp10.i144, label %if.else.i145.return.sink.split.i154_crit_edge, label %if.else27.i147

if.else.i145.return.sink.split.i154_crit_edge:    ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i154

if.else27.i147:                                   ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add50)
  %cmp28.i146 = icmp ult i32 %add50, 11
  br i1 %cmp28.i146, label %if.else27.i147.return.sink.split.i154_crit_edge, label %if.else46.i149

if.else27.i147.return.sink.split.i154_crit_edge:  ; preds = %if.else27.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i154

if.else46.i149:                                   ; preds = %if.else27.i147
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add50)
  %cmp47.i148 = icmp ult i32 %add50, 19
  br i1 %cmp47.i148, label %if.else46.i149.return.sink.split.i154_crit_edge, label %if.else46.i149.cleanup_crit_edge

if.else46.i149.cleanup_crit_edge:                 ; preds = %if.else46.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else46.i149.return.sink.split.i154_crit_edge:  ; preds = %if.else46.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i154

return.sink.split.i154:                           ; preds = %if.else46.i149.return.sink.split.i154_crit_edge, %if.else27.i147.return.sink.split.i154_crit_edge, %if.else.i145.return.sink.split.i154_crit_edge, %sw.bb48.return.sink.split.i154_crit_edge
  %.sink.i150 = phi i32 [ 69136, %sw.bb48.return.sink.split.i154_crit_edge ], [ 69148, %if.else.i145.return.sink.split.i154_crit_edge ], [ 69153, %if.else27.i147.return.sink.split.i154_crit_edge ], [ 69157, %if.else46.i149.return.sink.split.i154_crit_edge ]
  %add.i151 = add nuw nsw i32 %.sink.i150, %add50
  %lock.i.i152 = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i152, i32 noundef 0) #6
  %call.i86.i153 = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %add.i151, ptr noundef nonnull %data) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i152) #6
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %return.sink.split.i154, %return.sink.split.i140, %return.sink.split.i126, %ad7293_get_offset.exit
  %ret.1 = phi i32 [ %retval.0.i, %ad7293_get_offset.exit ], [ %call.i86.i125, %return.sink.split.i126 ], [ %call.i86.i139, %return.sink.split.i140 ], [ %call.i86.i153, %return.sink.split.i154 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool54.not = icmp eq i32 %ret.1, 0
  br i1 %tobool54.not, label %if.end56, label %sw.epilog53.cleanup_crit_edge

sw.epilog53.cleanup_crit_edge:                    ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data, align 2
  %conv57 = zext i16 %40 to i32
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv57, ptr %val, align 4
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  %42 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chan, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %43, label %sw.bb58.cleanup_crit_edge [
    i32 0, label %sw.bb60
    i32 1, label %sw.bb67
    i32 9, label %sw.bb74
  ]

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb60:                                          ; preds = %sw.bb58
  %channel61 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %45 = ptrtoint ptr %channel61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel61, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %data.i, align 2, !annotation !76
  %lock.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131606, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb60.ad7293_adc_get_scale.exit.thread_crit_edge

sw.bb60.ad7293_adc_get_scale.exit.thread_crit_edge: ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_adc_get_scale.exit.thread

if.end.i:                                         ; preds = %sw.bb60
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %data.i, align 2
  %conv.i = zext i16 %49 to i32
  %shr.i = lshr i32 %conv.i, %46
  %50 = trunc i32 %shr.i to i16
  %conv14.i = and i16 %50, 1
  %51 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv14.i, ptr %data, align 2
  %call33.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131605, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end65, label %if.end.i.ad7293_adc_get_scale.exit.thread_crit_edge

if.end.i.ad7293_adc_get_scale.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_adc_get_scale.exit.thread

ad7293_adc_get_scale.exit.thread:                 ; preds = %if.end.i.ad7293_adc_get_scale.exit.thread_crit_edge, %sw.bb60.ad7293_adc_get_scale.exit.thread_crit_edge
  %ret.0.i157.ph = phi i32 [ %call33.i, %if.end.i.ad7293_adc_get_scale.exit.thread_crit_edge ], [ %call.i, %sw.bb60.ad7293_adc_get_scale.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %cleanup

if.end65:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %data.i, align 2
  %conv37.i = zext i16 %53 to i32
  %shr38.i = lshr i32 %conv37.i, %46
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %data, align 2
  %shr38.tr.i = trunc i32 %shr38.i to i16
  %56 = shl i16 %shr38.tr.i, 1
  %57 = and i16 %56, 2
  %conv42.i = or i16 %57, %55
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %conv66 = zext i16 %conv42.i to i32
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv66, ptr %val, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %sw.bb58
  %channel68 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %59 = ptrtoint ptr %channel68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel68, align 4
  %lock.i.i158 = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i158, i32 noundef 0) #6
  %call.i.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131613, ptr noundef nonnull %data) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i158) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i159 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i159, label %if.end72, label %sw.bb67.cleanup_crit_edge

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %data, align 2
  %conv.i160 = zext i16 %62 to i32
  %mul.i = shl i32 %60, 2
  %shr.i161 = lshr i32 %conv.i160, %mul.i
  %63 = trunc i32 %shr.i161 to i16
  %conv14.i162 = and i16 %63, 15
  store i16 %conv14.i162, ptr %data, align 2
  %conv73 = zext i16 %conv14.i162 to i32
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv73, ptr %val, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %val, align 4
  %66 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb74, %if.end72, %sw.bb67.cleanup_crit_edge, %if.end65, %ad7293_adc_get_scale.exit.thread, %sw.bb58.cleanup_crit_edge, %if.end56, %sw.epilog53.cleanup_crit_edge, %if.else46.i149.cleanup_crit_edge, %if.else46.i135.cleanup_crit_edge, %if.else46.i121.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end13, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %sw.bb74 ], [ 1, %if.end72 ], [ 1, %if.end65 ], [ 1, %if.end56 ], [ 1, %if.end13 ], [ -22, %sw.bb.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ %ret.1, %sw.epilog53.cleanup_crit_edge ], [ -22, %sw.bb58.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i157.ph, %ad7293_adc_get_scale.exit.thread ], [ %call.i.i, %sw.bb67.cleanup_crit_edge ], [ -22, %if.else46.i121.cleanup_crit_edge ], [ -22, %if.else46.i135.cleanup_crit_edge ], [ -22, %if.else46.i149.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7293_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %info, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dac_offset_table, ptr %vals, align 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %sw.bb1.return_crit_edge [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb4
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb3:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @adc_range_table, ptr %vals, align 4
  br label %return.sink.split

sw.bb4:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @isense_gain_table, ptr %vals, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb4, %sw.bb3, %sw.bb
  %.sink = phi i32 [ 11, %sw.bb4 ], [ 4, %sw.bb3 ], [ 3, %sw.bb ]
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb1.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7293_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %data.i.i.i = alloca i16, align 2
  %data.i50.i = alloca i16, align 2
  %data.i.i65 = alloca i16, align 2
  %data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cond = icmp eq i32 %4, 0
  br i1 %cond, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %output = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %5 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %output, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %conv = trunc i32 %val to i16
  %lock.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #6
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data.i.i, align 2, !annotation !76
  %call.i.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 65540, ptr noundef nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__ad7293_spi_update_bits.exit.i, label %__ad7293_spi_update_bits.exit.thread.i

__ad7293_spi_update_bits.exit.thread.i:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  br label %ad7293_dac_write_raw.exit

__ad7293_spi_update_bits.exit.i:                  ; preds = %if.end
  %shl.i = shl nuw i32 1, %8
  %conv.i = trunc i32 %shl.i to i16
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.i.i, align 2
  %or.i.i = or i16 %11, %conv.i
  %call6.i.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 65540, i16 noundef zeroext %or.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i, label %do.end52.i, label %__ad7293_spi_update_bits.exit.i.ad7293_dac_write_raw.exit_crit_edge

__ad7293_spi_update_bits.exit.i.ad7293_dac_write_raw.exit_crit_edge: ; preds = %__ad7293_spi_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_dac_write_raw.exit

do.end52.i:                                       ; preds = %__ad7293_spi_update_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %8, 131120
  %shl55.i = shl i16 %conv, 4
  %call58.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef %add.i, i16 noundef zeroext %shl55.i) #6
  br label %ad7293_dac_write_raw.exit

ad7293_dac_write_raw.exit:                        ; preds = %do.end52.i, %__ad7293_spi_update_bits.exit.i.ad7293_dac_write_raw.exit_crit_edge, %__ad7293_spi_update_bits.exit.thread.i
  %ret.0.i = phi i32 [ %call6.i.i, %__ad7293_spi_update_bits.exit.i.ad7293_dac_write_raw.exit_crit_edge ], [ %call58.i, %do.end52.i ], [ %call.i.i, %__ad7293_spi_update_bits.exit.thread.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %13, label %sw.bb3.cleanup_crit_edge [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb19
    i32 9, label %sw.bb24
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb3
  %output6 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 19
  %15 = ptrtoint ptr %output6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load7 = load i8, ptr %output6, align 4
  %16 = and i8 %bf.load7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  %channel16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel16, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %18, 11
  %conv14 = trunc i32 %val to i16
  %call15 = tail call fastcc i32 @ad7293_set_offset(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %conv14)
  br label %cleanup

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = trunc i32 %val to i16
  %call18 = tail call fastcc i32 @ad7293_set_offset(ptr noundef %1, i32 noundef %18, i16 noundef zeroext %conv17)
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %channel20 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel20, align 4
  %add21 = add i32 %20, 7
  %conv22 = trunc i32 %val to i16
  %call23 = tail call fastcc i32 @ad7293_set_offset(ptr noundef %1, i32 noundef %add21, i16 noundef zeroext %conv22)
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %channel25 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %21 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel25, align 4
  %add26 = add i32 %22, 4
  %conv27 = trunc i32 %val to i16
  %call28 = tail call fastcc i32 @ad7293_set_offset(ptr noundef %1, i32 noundef %add26, i16 noundef zeroext %conv27)
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %24, label %sw.bb30.cleanup_crit_edge [
    i32 0, label %sw.bb32
    i32 1, label %sw.bb36
  ]

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb30
  %channel33 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %26 = ptrtoint ptr %channel33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel33, align 4
  %lock.i66 = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i66, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i65) #6
  %28 = ptrtoint ptr %data.i.i65 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %data.i.i65, align 2, !annotation !76
  %call.i.i67 = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131606, ptr noundef nonnull %data.i.i65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i.i68, label %__ad7293_spi_update_bits.exit.i75, label %__ad7293_spi_update_bits.exit.thread.i69

__ad7293_spi_update_bits.exit.thread.i69:         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i65) #6
  br label %ad7293_adc_set_scale.exit

__ad7293_spi_update_bits.exit.i75:                ; preds = %sw.bb32
  %shl.i70 = shl nuw i32 1, %27
  %conv.i71 = trunc i32 %shl.i70 to i16
  %and.i = and i32 %val, 1
  %29 = ptrtoint ptr %data.i.i65 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data.i.i65, align 2
  %neg.i.i = xor i16 %conv.i71, -1
  %and.i.i = and i16 %30, %neg.i.i
  %and413.i63.i = shl nuw i32 %and.i, %27
  %and413.i.i = trunc i32 %and413.i63.i to i16
  %or.i.i72 = or i16 %and.i.i, %and413.i.i
  %call6.i.i73 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131606, i16 noundef zeroext %or.i.i72) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i73)
  %tobool.not.i74 = icmp eq i32 %call6.i.i73, 0
  br i1 %tobool.not.i74, label %if.end.i76, label %__ad7293_spi_update_bits.exit.i75.ad7293_adc_set_scale.exit_crit_edge

__ad7293_spi_update_bits.exit.i75.ad7293_adc_set_scale.exit_crit_edge: ; preds = %__ad7293_spi_update_bits.exit.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_adc_set_scale.exit

if.end.i76:                                       ; preds = %__ad7293_spi_update_bits.exit.i75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i50.i) #6
  %31 = ptrtoint ptr %data.i50.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %data.i50.i, align 2, !annotation !76
  %call.i51.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131605, ptr noundef nonnull %data.i50.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.end.i58.i, label %if.end.i76.__ad7293_spi_update_bits.exit60.i_crit_edge

if.end.i76.__ad7293_spi_update_bits.exit60.i_crit_edge: ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ad7293_spi_update_bits.exit60.i

if.end.i58.i:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i = lshr i32 %val, 1
  %and37.i = and i32 %conv14.i, 1
  %32 = ptrtoint ptr %data.i50.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.i50.i, align 2
  %and.i54.i = and i16 %33, %neg.i.i
  %and413.i5564.i = shl nuw i32 %and37.i, %27
  %and413.i55.i = trunc i32 %and413.i5564.i to i16
  %or.i56.i = or i16 %and.i54.i, %and413.i55.i
  %call6.i57.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131605, i16 noundef zeroext %or.i56.i) #6
  br label %__ad7293_spi_update_bits.exit60.i

__ad7293_spi_update_bits.exit60.i:                ; preds = %if.end.i58.i, %if.end.i76.__ad7293_spi_update_bits.exit60.i_crit_edge
  %retval.0.i59.i = phi i32 [ %call6.i57.i, %if.end.i58.i ], [ %call.i51.i, %if.end.i76.__ad7293_spi_update_bits.exit60.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i50.i) #6
  br label %ad7293_adc_set_scale.exit

ad7293_adc_set_scale.exit:                        ; preds = %__ad7293_spi_update_bits.exit60.i, %__ad7293_spi_update_bits.exit.i75.ad7293_adc_set_scale.exit_crit_edge, %__ad7293_spi_update_bits.exit.thread.i69
  %ret.0.i77 = phi i32 [ %call6.i.i73, %__ad7293_spi_update_bits.exit.i75.ad7293_adc_set_scale.exit_crit_edge ], [ %retval.0.i59.i, %__ad7293_spi_update_bits.exit60.i ], [ %call.i.i67, %__ad7293_spi_update_bits.exit.thread.i69 ]
  tail call void @mutex_unlock(ptr noundef %lock.i66) #6
  br label %cleanup

sw.bb36:                                          ; preds = %sw.bb30
  %channel37 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %34 = ptrtoint ptr %channel37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel37, align 4
  %lock.i.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i) #6
  %36 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %data.i.i.i, align 2, !annotation !76
  %call.i.i.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef 131613, ptr noundef nonnull %data.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb36.ad7293_isense_set_scale.exit_crit_edge

sw.bb36.ad7293_isense_set_scale.exit_crit_edge:   ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_isense_set_scale.exit

if.end.i.i.i:                                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %35, 2
  %shl16.i = shl i32 %val, %mul.i
  %shl.i79 = shl i32 15, %mul.i
  %conv.i80 = trunc i32 %shl.i79 to i16
  %37 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data.i.i.i, align 2
  %neg.i.i.i = xor i16 %conv.i80, -1
  %and.i.i.i = and i16 %38, %neg.i.i.i
  %and413.i.i19.i = and i32 %shl16.i, %shl.i79
  %and413.i.i.i = trunc i32 %and413.i.i19.i to i16
  %or.i.i.i = or i16 %and.i.i.i, %and413.i.i.i
  %call6.i.i.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef 131613, i16 noundef zeroext %or.i.i.i) #6
  br label %ad7293_isense_set_scale.exit

ad7293_isense_set_scale.exit:                     ; preds = %if.end.i.i.i, %sw.bb36.ad7293_isense_set_scale.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call6.i.i.i, %if.end.i.i.i ], [ %call.i.i.i, %sw.bb36.ad7293_isense_set_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ad7293_isense_set_scale.exit, %ad7293_adc_set_scale.exit, %sw.bb30.cleanup_crit_edge, %sw.bb24, %sw.bb19, %if.else, %if.then12, %sw.bb3.cleanup_crit_edge, %ad7293_dac_write_raw.exit, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i.i, %ad7293_isense_set_scale.exit ], [ %ret.0.i77, %ad7293_adc_set_scale.exit ], [ %call28, %sw.bb24 ], [ %call23, %sw.bb19 ], [ %call15, %if.then12 ], [ %call18, %if.else ], [ %ret.0.i, %ad7293_dac_write_raw.exit ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7293_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %write_val, ptr noundef writeonly %read_val) #2 align 64 {
entry:
  %temp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %read_val, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %temp, align 2, !annotation !76
  %lock.i = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %1, i32 noundef %reg, ptr noundef nonnull %temp) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %temp, align 2
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %read_val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = trunc i32 %write_val to i16
  %lock.i7 = getelementptr inbounds %struct.ad7293_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i7, i32 noundef 0) #6
  %call.i8 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %1, i32 noundef %reg, i16 noundef zeroext %conv2) #6
  tail call void @mutex_unlock(ptr noundef %lock.i7) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %call.i8, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7293_ch_read_raw(ptr noundef %st, i32 noundef %type, i32 noundef %ch, ptr nocapture noundef %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.epilog.thread
    i32 1, label %if.then132
    i32 2, label %if.then155
    i32 3, label %sw.epilog.thread267
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %ch, 131088
  %lock259 = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock259, i32 noundef 0) #6
  br label %if.end181

sw.epilog.thread267:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add130 = add i32 %ch, 131120
  %lock271 = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock271, i32 noundef 0) #6
  br label %if.end209

if.then132:                                       ; preds = %entry
  %lock276 = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock276, i32 noundef 0) #6
  %shl151 = shl nuw i32 1, %ch
  %conv = trunc i32 %shl151 to i16
  %call = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef 131611, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then132.exit_crit_edge

if.then132.exit_crit_edge:                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  %add69 = add i32 %ch, 131104
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 9900, i32 noundef 2) #6
  br label %if.end181

if.then155:                                       ; preds = %entry
  %lock = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %shl174 = shl nuw i32 1, %ch
  %conv175 = trunc i32 %shl174 to i16
  %call176 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef 131612, i16 noundef zeroext %conv175)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.then155.exit_crit_edge

if.then155.exit_crit_edge:                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end179:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  %add108 = add i32 %ch, 131112
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 7000, i32 noundef 2) #6
  br label %if.end181

if.end181:                                        ; preds = %if.end179, %if.end, %sw.epilog.thread
  %lock266 = phi ptr [ %lock259, %sw.epilog.thread ], [ %lock, %if.end179 ], [ %lock276, %if.end ]
  %reg_wr.0263 = phi i32 [ 131856, %sw.epilog.thread ], [ 131857, %if.end179 ], [ 131857, %if.end ]
  %reg_rd.0262 = phi i32 [ %add, %sw.epilog.thread ], [ %add108, %if.end179 ], [ %add69, %if.end ]
  %.pn = phi i32 [ 1, %sw.epilog.thread ], [ 256, %if.end179 ], [ 1, %if.end ]
  %data_wr.0260 = shl i32 %.pn, %ch
  %conv182 = trunc i32 %data_wr.0260 to i16
  %call183 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef %reg_wr.0263, i16 noundef zeroext %conv182)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end186, label %if.end181.exit_crit_edge

if.end181.exit_crit_edge:                         ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end186:                                        ; preds = %if.end181
  %call205 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef 131074, i16 noundef zeroext 130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end186.if.end209_crit_edge, label %if.end186.exit_crit_edge

if.end186.exit_crit_edge:                         ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end186.if.end209_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.end209:                                        ; preds = %if.end186.if.end209_crit_edge, %sw.epilog.thread267
  %lock265 = phi ptr [ %lock266, %if.end186.if.end209_crit_edge ], [ %lock271, %sw.epilog.thread267 ]
  %reg_rd.0261 = phi i32 [ %reg_rd.0262, %if.end186.if.end209_crit_edge ], [ %add130, %sw.epilog.thread267 ]
  %call210 = tail call fastcc i32 @__ad7293_spi_read(ptr noundef %st, i32 noundef %reg_rd.0261, ptr noundef %raw)
  %1 = ptrtoint ptr %raw to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %raw, align 2
  %3 = lshr i16 %2, 4
  store i16 %3, ptr %raw, align 2
  br label %exit

exit:                                             ; preds = %if.end209, %if.end186.exit_crit_edge, %if.end181.exit_crit_edge, %if.then155.exit_crit_edge, %if.then132.exit_crit_edge
  %lock264 = phi ptr [ %lock276, %if.then132.exit_crit_edge ], [ %lock266, %if.end181.exit_crit_edge ], [ %lock266, %if.end186.exit_crit_edge ], [ %lock265, %if.end209 ], [ %lock, %if.then155.exit_crit_edge ]
  %ret.0 = phi i32 [ %call, %if.then132.exit_crit_edge ], [ %call183, %if.end181.exit_crit_edge ], [ %call205, %if.end186.exit_crit_edge ], [ %call210, %if.end209 ], [ %call176, %if.then155.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock264) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %reg, 16
  %shr = and i32 %and, 3
  %page_select.i = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 5
  %0 = ptrtoint ptr %page_select.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_select.i, align 4
  %and.i = lshr i32 %reg, 8
  %2 = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp.not.i = icmp eq i8 %1, %2
  br i1 %cmp.not.i, label %entry.do.end27_crit_edge, label %do.end44.i

entry.do.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end44.i:                                       ; preds = %entry
  %data.i = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 7
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %data.i, align 128
  %arrayidx70.i = getelementptr %struct.ad7293_state, ptr %st, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %2, ptr %arrayidx70.i, align 1
  %5 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end44.i.spi_write.exit.i_crit_edge

do.end44.i.spi_write.exit.i_crit_edge:            ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %do.end44.i.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.end88.i, label %spi_write.exit.i.cleanup_crit_edge

spi_write.exit.i.cleanup_crit_edge:               ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end88.i:                                       ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %page_select.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %2, ptr %page_select.i, align 4
  br label %do.end27

do.end27:                                         ; preds = %do.end88.i, %entry.do.end27_crit_edge
  %conv = trunc i32 %reg to i8
  %data = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %data, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  br i1 %cmp, label %if.then32, label %if.else

if.then32:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = trunc i16 %val to i8
  %arrayidx35 = getelementptr %struct.ad7293_state, ptr %st, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv33, ptr %arrayidx35, align 1
  br label %if.end38

if.else:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx37 = getelementptr %struct.ad7293_state, ptr %st, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %val, ptr %arrayidx37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then32
  %25 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %st, align 128
  %add = add nuw nsw i32 %shr, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %27 = getelementptr inbounds i8, ptr %t.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 92)
  %29 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %30 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %31 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end38.spi_write.exit_crit_edge

if.end38.spi_write.exit_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end38.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %spi_write.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ %call.i.i.i, %spi_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ad7293_spi_read(ptr noundef %st, i32 noundef %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %t = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #6
  %0 = getelementptr inbounds i8, ptr %t, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %and = lshr i32 %reg, 16
  %shr = and i32 %and, 3
  %page_select.i = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 5
  %2 = ptrtoint ptr %page_select.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page_select.i, align 4
  %and.i = lshr i32 %reg, 8
  %4 = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp.not.i = icmp eq i8 %3, %4
  br i1 %cmp.not.i, label %entry.do.end27_crit_edge, label %do.end44.i

entry.do.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end44.i:                                       ; preds = %entry
  %data.i = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 7
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %data.i, align 128
  %arrayidx70.i = getelementptr %struct.ad7293_state, ptr %st, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %arrayidx70.i, align 1
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
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
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end44.i.spi_write.exit.i_crit_edge

do.end44.i.spi_write.exit.i_crit_edge:            ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
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
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %do.end44.i.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.end88.i, label %spi_write.exit.i.cleanup_crit_edge

spi_write.exit.i.cleanup_crit_edge:               ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end88.i:                                       ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %page_select.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %4, ptr %page_select.i, align 4
  br label %do.end27

do.end27:                                         ; preds = %do.end88.i, %entry.do.end27_crit_edge
  %24 = trunc i32 %reg to i8
  %conv = or i8 %24, -128
  %data = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 7
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %data, align 128
  %arrayidx32 = getelementptr %struct.ad7293_state, ptr %st, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx32, align 1
  %arrayidx34 = getelementptr %struct.ad7293_state, ptr %st, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx34, align 2
  %28 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data, ptr %t, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %29 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data, ptr %rx_buf, align 4
  %add = add nuw nsw i32 %shr, 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %30 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %len, align 4
  %31 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %33 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.end27.spi_sync_transfer.exit_crit_edge

do.end27.spi_sync_transfer.exit_crit_edge:        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %do.end27.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end42, label %spi_sync_transfer.exit.cleanup_crit_edge

spi_sync_transfer.exit.cleanup_crit_edge:         ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  br i1 %cmp, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx32, align 1
  %conv47 = zext i8 %44 to i16
  br label %if.end51

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx32, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then44
  %storemerge = phi i16 [ %46, %if.else ], [ %conv47, %if.then44 ]
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %storemerge, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %spi_sync_transfer.exit.cleanup_crit_edge, %spi_write.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %call.i, %spi_sync_transfer.exit.cleanup_crit_edge ], [ %call.i.i.i, %spi_write.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7293_set_offset(ptr noundef %st, i32 noundef %ch, i16 noundef zeroext %offset) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ch)
  %cmp = icmp ult i32 %ch, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %ch, 69136
  %lock.i = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef %add, i16 noundef zeroext %offset) #6
  br label %return.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ch)
  %cmp10 = icmp ult i32 %ch, 7
  br i1 %cmp10, label %if.then11, label %if.else27

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add25 = add nuw nsw i32 %ch, 69148
  %lock.i99 = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i99, i32 noundef 0) #6
  %call.i100 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef %add25, i16 noundef zeroext %offset) #6
  br label %return.sink.split

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %ch)
  %cmp28 = icmp ult i32 %ch, 11
  br i1 %cmp28, label %if.then29, label %if.else46

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %add44 = add nuw nsw i32 %ch, 69153
  %lock.i101 = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i101, i32 noundef 0) #6
  %call.i102 = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef %add44, i16 noundef zeroext %offset) #6
  br label %return.sink.split

if.else46:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %ch)
  %cmp47 = icmp ult i32 %ch, 19
  br i1 %cmp47, label %if.then48, label %if.else46.return_crit_edge

if.else46.return_crit_edge:                       ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then48:                                        ; preds = %if.else46
  %add63 = add nuw nsw i32 %ch, 69157
  %lock.i103 = getelementptr inbounds %struct.ad7293_state, ptr %st, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i103, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #6
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data.i.i, align 2, !annotation !76
  %call.i.i = call fastcc i32 @__ad7293_spi_read(ptr noundef %st, i32 noundef %add63, ptr noundef nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then48.ad7293_spi_update_bits.exit_crit_edge

if.then48.ad7293_spi_update_bits.exit_crit_edge:  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7293_spi_update_bits.exit

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i16 %offset, 4
  %and77 = and i16 %shl, 48
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data.i.i, align 2
  %and.i.i = and i16 %2, -49
  %or.i.i = or i16 %and.i.i, %and77
  %call6.i.i = tail call fastcc i32 @__ad7293_spi_write(ptr noundef %st, i32 noundef %add63, i16 noundef zeroext %or.i.i) #6
  br label %ad7293_spi_update_bits.exit

ad7293_spi_update_bits.exit:                      ; preds = %if.end.i.i, %if.then48.ad7293_spi_update_bits.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call6.i.i, %if.end.i.i ], [ %call.i.i, %if.then48.ad7293_spi_update_bits.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  br label %return.sink.split

return.sink.split:                                ; preds = %ad7293_spi_update_bits.exit, %if.then29, %if.then11, %if.then
  %lock.i103.sink = phi ptr [ %lock.i103, %ad7293_spi_update_bits.exit ], [ %lock.i101, %if.then29 ], [ %lock.i99, %if.then11 ], [ %lock.i, %if.then ]
  %retval.0.ph = phi i32 [ %retval.0.i.i, %ad7293_spi_update_bits.exit ], [ %call.i102, %if.then29 ], [ %call.i100, %if.then11 ], [ %call.i, %if.then ]
  tail call void @mutex_unlock(ptr noundef %lock.i103.sink) #6
  br label %return

return:                                           ; preds = %return.sink.split, %if.else46.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.else46.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7293_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_ad7293__500_930_ad7293_driver_init6, !1, !"__initcall__kmod_ad7293__500_930_ad7293_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad7293.c", i32 930, i32 1}
!2 = !{ptr @__exitcall_ad7293_driver_exit, !1, !"__exitcall_ad7293_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author501, !4, !"__UNIQUE_ID_author501", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad7293.c", i32 932, i32 1}
!5 = !{ptr @__UNIQUE_ID_description502, !6, !"__UNIQUE_ID_description502", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad7293.c", i32 933, i32 1}
!7 = !{ptr @__UNIQUE_ID_file503, !8, !"__UNIQUE_ID_file503", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad7293.c", i32 934, i32 1}
!9 = !{ptr @__UNIQUE_ID_license504, !8, !"__UNIQUE_ID_license504", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad7293.c", i32 924, i32 11}
!12 = !{ptr @ad7293_driver, !13, !"ad7293_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad7293.c", i32 922, i32 26}
!14 = !{ptr @ad7293_id, !15, !"ad7293_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad7293.c", i32 910, i32 35}
!16 = !{ptr @ad7293_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad7293.c", i32 901, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ad7293_info, !20, !"ad7293_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad7293.c", i32 874, i32 30}
!21 = !{ptr @dac_offset_table, !22, !"dac_offset_table", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/ad7293.c", i32 133, i32 18}
!23 = !{ptr @adc_range_table, !24, !"adc_range_table", i1 false, i1 false}
!24 = !{!"../drivers/iio/dac/ad7293.c", i32 137, i32 18}
!25 = !{ptr @isense_gain_table, !26, !"isense_gain_table", i1 false, i1 false}
!26 = !{!"../drivers/iio/dac/ad7293.c", i32 135, i32 18}
!27 = !{ptr @ad7293_channels, !28, !"ad7293_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad7293.c", i32 729, i32 35}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad7293.c", i32 821, i32 3}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ad7293_init._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @ad7293_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/ad7293.c", i32 833, i32 3}
!39 = !{ptr @ad7293_init._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ad7293_init._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/ad7293.c", i32 845, i32 3}
!43 = !{ptr @ad7293_init._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ad7293_init._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/ad7293.c", i32 854, i32 3}
!47 = !{ptr @ad7293_init._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ad7293_init._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/ad7293.c", i32 867, i32 3}
!51 = !{ptr @ad7293_init._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ad7293_init._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/ad7293.c", i32 781, i32 58}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/ad7293.c", i32 785, i32 10}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/ad7293.c", i32 787, i32 47}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/dac/ad7293.c", i32 790, i32 10}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/ad7293.c", i32 792, i32 49}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/dac/ad7293.c", i32 795, i32 10}
!65 = !{ptr @ad7293_of_match, !66, !"ad7293_of_match", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/ad7293.c", i32 916, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
