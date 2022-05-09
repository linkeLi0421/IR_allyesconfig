; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5421.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5421.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.ad5421_state = type { ptr, i32, i32, i32, %struct.mutex, [20 x i8], [2 x %union.anon.72], [120 x i8] }
%union.anon.72 = type { i32 }
%struct.ad5421_platform_data = type { i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad5421__234_532_ad5421_driver_init6 = internal global ptr @ad5421_driver_init, section ".initcall6.init", align 4
@ad5421_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ad5421_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5421_driver_exit = internal global ptr @ad5421_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [51 x i8] c"ad5421.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [45 x i8] c"ad5421.description=Analog Devices AD5421 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [35 x i8] c"ad5421.file=drivers/iio/dac/ad5421\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"ad5421.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [24 x i8] c"ad5421.alias=spi:ad5421\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5421\00", [25 x i8] zeroinitializer }, align 32
@ad5421_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5421_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5421.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5421_probe._entry_ptr = internal global ptr @ad5421_probe._entry, section ".printk_index", align 4
@ad5421_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5421_read_raw, ptr null, ptr null, ptr @ad5421_write_raw, ptr null, ptr null, ptr @ad5421_read_event_config, ptr @ad5421_write_event_config, ptr @ad5421_read_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5421_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 49, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad5421_current_event, i32 2, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 9, i32 -1, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ad5421_temp_event, i32 1, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@ad5421_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5421 fault\00", [19 x i8] zeroinitializer }, align 32
@ad5421_current_event = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ad5421_temp_event = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@switch.table.ad5421_read_raw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -4000, i32 -3800, i32 -3200], [20 x i8] zeroinitializer }, align 32
@switch.table.ad5421_read_raw.8 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 20000, i32 21000, i32 24000], [20 x i8] zeroinitializer }, align 32
@switch.table.ad5421_read_raw.9 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4000, i32 3800, i32 3200], [20 x i8] zeroinitializer }, align 32
@switch.table.ad5421_read_raw.10 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 20000, i32 21000, i32 24000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ad5421_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 526, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 528, i32 14 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 481, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"ad5421_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 464, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"ad5421_channels\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 107, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 496, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 517, i32 9 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"ad5421_current_event\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 84, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"ad5421_temp_event\00", align 1
@___asan_gen_.58 = private constant [28 x i8] c"../drivers/iio/dac/ad5421.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 98, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"switch.table.ad5421_read_raw\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"switch.table.ad5421_read_raw.8\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [31 x i8] c"switch.table.ad5421_read_raw.9\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"switch.table.ad5421_read_raw.10\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ad5421_driver_exit, ptr @__initcall__kmod_ad5421__234_532_ad5421_driver_init6, ptr @ad5421_driver_exit, ptr @ad5421_probe._entry, ptr @ad5421_probe._entry_ptr, ptr @ad5421_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad5421_info, ptr @ad5421_channels, ptr @ad5421_probe.__key, ptr @.str.6, ptr @.str.7, ptr @ad5421_current_event, ptr @ad5421_temp_event, ptr @switch.table.ad5421_read_raw, ptr @switch.table.ad5421_read_raw.8, ptr @switch.table.ad5421_read_raw.9, ptr @switch.table.ad5421_read_raw.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_current_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5421_temp_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad5421_read_raw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad5421_read_raw.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad5421_read_raw.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ad5421_read_raw.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5421_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5421_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5421_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #6
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %3, align 128
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ad5421_info, ptr %info, align 8
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ad5421_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %num_channels, align 4
  %lock = getelementptr inbounds %struct.ad5421_state, ptr %3, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ad5421_probe.__key) #6
  %ctrl = getelementptr inbounds %struct.ad5421_state, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6144, ptr %ctrl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %current_range = getelementptr inbounds %struct.ad5421_platform_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %current_range to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_range, align 4
  %current_range10 = getelementptr inbounds %struct.ad5421_state, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %current_range10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %current_range10, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %if.then9.if.end16_crit_edge, label %if.then12

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6208, ptr %ctrl, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %current_range15 = getelementptr inbounds %struct.ad5421_state, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %current_range15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %current_range15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12, %if.then9.if.end16_crit_edge
  tail call fastcc void @ad5421_update_ctrl(ptr noundef nonnull %call2)
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %if.end16.if.end26_crit_edge, label %if.then19

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  %call22 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %20, ptr noundef null, ptr noundef nonnull @ad5421_fault_handler, i32 noundef 8196, ptr noundef nonnull @.str.7, ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then19.if.end26_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call28 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call2, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call28, %if.end26 ], [ %call22, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad5421_update_ctrl(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %ctrl = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %or.i = or i32 %3, 131072
  %data.i = getelementptr inbounds %struct.ad5421_state, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %data.i, align 128
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 128
  %arrayidx3.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx3.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len1.i.i, align 4
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
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad5421_write_unlocked.exit_crit_edge

entry.ad5421_write_unlocked.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5421_write_unlocked.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
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
  br label %ad5421_write_unlocked.exit

ad5421_write_unlocked.exit:                       ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad5421_write_unlocked.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_fault_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @ad5421_read(ptr noundef %data, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ad5421_update_ctrl(ptr noundef %data)
  %fault_mask = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.then27, %if.end
  %fault.0 = phi i32 [ %call1, %if.end ], [ %call24, %if.then27 ]
  %old_fault.0 = phi i32 [ 0, %if.end ], [ %spec.store.select, %if.then27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %fault.0)
  %cmp = icmp eq i32 %fault.0, 65535
  %spec.store.select = select i1 %cmp, i32 0, i32 %fault.0
  %2 = xor i32 %old_fault.0, -1
  %and = and i32 %spec.store.select, %2
  %3 = ptrtoint ptr %fault_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fault_mask, align 4
  %and5 = and i32 %and, %4
  %and6 = and i32 %and5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.if.end11_crit_edge, label %if.then8

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i64 @iio_get_time_ns(ptr noundef %data) #6
  %call10 = tail call i32 @iio_push_event(ptr noundef %data, i64 noundef 281479271677952, i64 noundef %call9) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body.if.end11_crit_edge
  %and12 = and i32 %and5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i64 @iio_get_time_ns(ptr noundef %data) #6
  %call16 = tail call i32 @iio_push_event(ptr noundef %data, i64 noundef 562954248388608, i64 noundef %call15) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %and18 = and i32 %and5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i64 @iio_get_time_ns(ptr noundef %data) #6
  %call22 = tail call i32 @iio_push_event(ptr noundef %data, i64 noundef 72339107669344256, i64 noundef %call21) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %call24 = tail call fastcc i32 @ad5421_read(ptr noundef %data, i32 noundef 5)
  %and25 = and i32 %call24, 63488
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.then27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1000) #6
  br label %do.body

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 5, label %sw.bb8
    i32 4, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call fastcc i32 @ad5421_read(ptr noundef %indio_dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %current_range.i = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %current_range.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_range.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %sw.bb5.ad5421_get_current_min_max.exit_crit_edge

sw.bb5.ad5421_get_current_min_max.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5421_get_current_min_max.exit

switch.lookup:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ad5421_read_raw, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep38 = getelementptr inbounds [3 x i32], ptr @switch.table.ad5421_read_raw.8, i32 0, i32 %7
  %10 = ptrtoint ptr %switch.gep38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load39 = load i32, ptr %switch.gep38, align 4
  %11 = add nsw i32 %switch.load39, %switch.load
  br label %ad5421_get_current_min_max.exit

ad5421_get_current_min_max.exit:                  ; preds = %switch.lookup, %sw.bb5.ad5421_get_current_min_max.exit_crit_edge
  %sub = phi i32 [ %11, %switch.lookup ], [ 1, %sw.bb5.ad5421_get_current_min_max.exit_crit_edge ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %val, align 4
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536000, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %current_range.i.i = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %current_range.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_range.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup40, label %sw.bb6.ad5421_get_offset.exit_crit_edge

sw.bb6.ad5421_get_offset.exit_crit_edge:          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5421_get_offset.exit

switch.lookup40:                                  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep41 = getelementptr inbounds [3 x i32], ptr @switch.table.ad5421_read_raw.9, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  %switch.gep43 = getelementptr inbounds [3 x i32], ptr @switch.table.ad5421_read_raw.10, i32 0, i32 %15
  %18 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  br label %ad5421_get_offset.exit

ad5421_get_offset.exit:                           ; preds = %switch.lookup40, %sw.bb6.ad5421_get_offset.exit_crit_edge
  %.sink9.i.i = phi i32 [ %switch.load42, %switch.lookup40 ], [ 0, %sw.bb6.ad5421_get_offset.exit_crit_edge ]
  %.sink.i.i = phi i32 [ %switch.load44, %switch.lookup40 ], [ 1, %sw.bb6.ad5421_get_offset.exit_crit_edge ]
  %mul.i = shl nuw nsw i32 %.sink9.i.i, 16
  %sub.i = sub nsw i32 %.sink.i.i, %.sink9.i.i
  %div.i = udiv i32 %mul.i, %sub.i
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %call9 = tail call fastcc i32 @ad5421_read(ptr noundef %indio_dev, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %sub13 = add nsw i32 %call9, -32768
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub13, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %call15 = tail call fastcc i32 @ad5421_read(ptr noundef %indio_dev, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %sw.bb14.cleanup_crit_edge, label %if.end18

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call15, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %sw.bb14.cleanup_crit_edge, %if.end12, %sw.bb8.cleanup_crit_edge, %ad5421_get_offset.exit, %ad5421_get_current_min_max.exit, %if.end4, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 1, %if.end12 ], [ 1, %ad5421_get_offset.exit ], [ 10, %ad5421_get_current_min_max.exit ], [ 1, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call15, %sw.bb14.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i44 = alloca %struct.spi_message, align 4
  %t.i.i.i45 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i27 = alloca %struct.spi_message, align 4
  %t.i.i.i28 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 5, label %sw.bb2
    i32 4, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp = icmp ugt i32 %val, 65535
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5421_state, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  %or.i.i = or i32 %val, 65536
  %data.i.i = getelementptr inbounds %struct.ad5421_state, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i, ptr %data.i.i, align 128
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 128
  %arrayidx3.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #6
  %8 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx3.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.ad5421_write.exit_crit_edge

if.end.ad5421_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5421_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad5421_write.exit

ad5421_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.ad5421_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #6
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %add = add i32 %val, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp3 = icmp ugt i32 %add, 65535
  br i1 %cmp3, label %sw.bb2.cleanup_crit_edge, label %if.end7

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb2
  %priv.i.i29 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %22 = ptrtoint ptr %priv.i.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i.i29, align 8
  %lock.i30 = getelementptr inbounds %struct.ad5421_state, ptr %23, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i30, i32 noundef 0) #6
  %24 = ptrtoint ptr %priv.i.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i.i29, align 8
  %or.i.i31 = or i32 %add, 196608
  %data.i.i32 = getelementptr inbounds %struct.ad5421_state, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %data.i.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i31, ptr %data.i.i32, align 128
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %25, align 128
  %arrayidx3.i.i33 = getelementptr [4 x i8], ptr %data.i.i32, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i28) #6
  %29 = getelementptr inbounds i8, ptr %t.i.i.i28, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 92)
  %31 = ptrtoint ptr %t.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx3.i.i33, ptr %t.i.i.i28, align 4
  %len1.i.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i28, i32 0, i32 2
  %32 = ptrtoint ptr %len1.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %len1.i.i.i34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i27) #6
  %33 = getelementptr inbounds i8, ptr %msg.i.i.i.i27, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i.i.i.i27, ptr %msg.i.i.i.i27, align 4
  %prev.i.i.i.i.i.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i27, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i.i27, ptr %prev.i.i.i.i.i.i.i.i35, align 4
  %resources.i.i.i.i.i.i.i36 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i27, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i.i.i.i.i36, ptr %resources.i.i.i.i.i.i.i36, align 4
  %prev.i2.i.i.i.i.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i27, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i.i.i.i.i36, ptr %prev.i2.i.i.i.i.i.i.i37, align 4
  %transfer_list.i.i.i.i.i.i38 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i28, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i39 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i38, ptr noundef nonnull %msg.i.i.i.i27, ptr noundef nonnull %msg.i.i.i.i27) #6
  br i1 %call.i.i.i.i.i.i.i.i39, label %if.end.i.i.i.i.i.i.i.i41, label %if.end7.ad5421_write.exit43_crit_edge

if.end7.ad5421_write.exit43_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5421_write.exit43

if.end.i.i.i.i.i.i.i.i41:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i.i.i.i38, ptr %prev.i.i.i.i.i.i.i.i35, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i.i27, ptr %transfer_list.i.i.i.i.i.i38, align 4
  %prev3.i.i.i.i.i.i.i.i40 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i28, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i.i27, ptr %prev3.i.i.i.i.i.i.i.i40, align 4
  %42 = ptrtoint ptr %msg.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i.i.i.i38, ptr %msg.i.i.i.i27, align 4
  br label %ad5421_write.exit43

ad5421_write.exit43:                              ; preds = %if.end.i.i.i.i.i.i.i.i41, %if.end7.ad5421_write.exit43_crit_edge
  %call.i.i.i.i42 = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i.i.i27) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i27) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i28) #6
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp10 = icmp ugt i32 %val, 65535
  br i1 %cmp10, label %sw.bb9.cleanup_crit_edge, label %if.end14

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %sw.bb9
  %priv.i.i46 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %43 = ptrtoint ptr %priv.i.i46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i.i46, align 8
  %lock.i47 = getelementptr inbounds %struct.ad5421_state, ptr %44, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i47, i32 noundef 0) #6
  %45 = ptrtoint ptr %priv.i.i46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i.i46, align 8
  %or.i.i48 = or i32 %val, 262144
  %data.i.i49 = getelementptr inbounds %struct.ad5421_state, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %data.i.i49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i48, ptr %data.i.i49, align 128
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %46, align 128
  %arrayidx3.i.i50 = getelementptr [4 x i8], ptr %data.i.i49, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i45) #6
  %50 = getelementptr inbounds i8, ptr %t.i.i.i45, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 92)
  %52 = ptrtoint ptr %t.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx3.i.i50, ptr %t.i.i.i45, align 4
  %len1.i.i.i51 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i45, i32 0, i32 2
  %53 = ptrtoint ptr %len1.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %len1.i.i.i51, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i44) #6
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i.i44, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 40)
  %56 = ptrtoint ptr %msg.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %msg.i.i.i.i44, ptr %msg.i.i.i.i44, align 4
  %prev.i.i.i.i.i.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i44, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i.i.i44, ptr %prev.i.i.i.i.i.i.i.i52, align 4
  %resources.i.i.i.i.i.i.i53 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i44, i32 0, i32 10
  %58 = ptrtoint ptr %resources.i.i.i.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %resources.i.i.i.i.i.i.i53, ptr %resources.i.i.i.i.i.i.i53, align 4
  %prev.i2.i.i.i.i.i.i.i54 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i44, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %resources.i.i.i.i.i.i.i53, ptr %prev.i2.i.i.i.i.i.i.i54, align 4
  %transfer_list.i.i.i.i.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i45, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i55, ptr noundef nonnull %msg.i.i.i.i44, ptr noundef nonnull %msg.i.i.i.i44) #6
  br i1 %call.i.i.i.i.i.i.i.i56, label %if.end.i.i.i.i.i.i.i.i58, label %if.end14.ad5421_write.exit60_crit_edge

if.end14.ad5421_write.exit60_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5421_write.exit60

if.end.i.i.i.i.i.i.i.i58:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %transfer_list.i.i.i.i.i.i55, ptr %prev.i.i.i.i.i.i.i.i52, align 4
  %61 = ptrtoint ptr %transfer_list.i.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i.i.i44, ptr %transfer_list.i.i.i.i.i.i55, align 4
  %prev3.i.i.i.i.i.i.i.i57 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i45, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i.i44, ptr %prev3.i.i.i.i.i.i.i.i57, align 4
  %63 = ptrtoint ptr %msg.i.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %transfer_list.i.i.i.i.i.i55, ptr %msg.i.i.i.i44, align 4
  br label %ad5421_write.exit60

ad5421_write.exit60:                              ; preds = %if.end.i.i.i.i.i.i.i.i58, %if.end14.ad5421_write.exit60_crit_edge
  %call.i.i.i.i59 = call i32 @spi_sync(ptr noundef %49, ptr noundef nonnull %msg.i.i.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i45) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ad5421_write.exit60, %ad5421_write.exit43, %ad5421_write.exit
  %lock.i47.sink = phi ptr [ %lock.i47, %ad5421_write.exit60 ], [ %lock.i30, %ad5421_write.exit43 ], [ %lock.i, %ad5421_write.exit ]
  %retval.0.ph = phi i32 [ %call.i.i.i.i59, %ad5421_write.exit60 ], [ %call.i.i.i.i42, %ad5421_write.exit43 ], [ %call.i.i.i.i, %ad5421_write.exit ]
  call void @mutex_unlock(ptr noundef %lock.i47.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb9.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5421_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 8192, i32 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ %., %sw.bb ], [ 2048, %entry.sw.epilog_crit_edge ]
  %fault_mask = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %fault_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fault_mask, align 4
  %and = and i32 %6, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %conv = zext i1 %tobool to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %. = select i1 %cmp, i32 8192, i32 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ %., %sw.bb ], [ 2048, %entry.sw.epilog_crit_edge ]
  %lock = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %fault_mask = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %fault_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fault_mask, align 4
  %or = or i32 %6, %mask.0
  store i32 %or, ptr %fault_mask, align 4
  br label %if.end6

if.else4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %mask.0, -1
  %fault_mask5 = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %fault_mask5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fault_mask5, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %fault_mask5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then3
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5421_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @ad5421_read(ptr noundef %indio_dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %storemerge = phi i32 [ %call, %sw.bb.sw.epilog_crit_edge ], [ 140000, %entry.sw.epilog_crit_edge ]
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ %call, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad5421_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #6
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %data = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 6
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
  %arrayidx4 = getelementptr %struct.ad5421_state, ptr %1, i32 0, i32 6, i32 1
  %arrayidx5 = getelementptr [4 x i8], ptr %arrayidx4, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx5, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %8 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len6, align 4
  %lock = getelementptr inbounds %struct.ad5421_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %shl = shl i32 %reg, 16
  %or = or i32 %shl, 8388608
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %data, align 128
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
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
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %23, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then, label %spi_message_add_tail.exit.i.i.1.if.end_crit_edge

spi_message_add_tail.exit.i.i.1.if.end_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %29, 65535
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_message_add_tail.exit.i.i.1.if.end_crit_edge
  %ret.0 = phi i32 [ %and, %if.then ], [ %call.i, %spi_message_add_tail.exit.i.i.1.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ad5421__234_532_ad5421_driver_init6, !1, !"__initcall__kmod_ad5421__234_532_ad5421_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5421.c", i32 532, i32 1}
!2 = !{ptr @__exitcall_ad5421_driver_exit, !1, !"__exitcall_ad5421_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5421.c", i32 534, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5421.c", i32 535, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5421.c", i32 536, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5421.c", i32 537, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5421.c", i32 528, i32 14}
!14 = !{ptr @ad5421_driver, !15, !"ad5421_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5421.c", i32 526, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5421.c", i32 481, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad5421_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad5421_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ad5421_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/dac/ad5421.c", i32 496, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5421.c", i32 517, i32 9}
!29 = !{ptr @ad5421_info, !30, !"ad5421_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad5421.c", i32 464, i32 30}
!31 = !{ptr @ad5421_channels, !32, !"ad5421_channels", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ad5421.c", i32 107, i32 35}
!33 = !{ptr @ad5421_current_event, !34, !"ad5421_current_event", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ad5421.c", i32 84, i32 36}
!35 = !{ptr @ad5421_temp_event, !36, !"ad5421_temp_event", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/ad5421.c", i32 98, i32 36}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
