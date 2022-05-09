; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5761.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5761.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.ad5761_chip_info = type { i32, %struct.iio_chan_spec }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad5761_range_params = type { i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad5761_state = type { ptr, ptr, %struct.mutex, i8, i32, i32, [16 x i8], [3 x %union.anon.85], [116 x i8] }
%union.anon.85 = type { i32 }

@__initcall__kmod_ad5761__290_427_ad5761_driver_init6 = internal global ptr @ad5761_driver_init, section ".initcall6.init", align 4
@ad5761_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5761_id, ptr @ad5761_probe, ptr @ad5761_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5761_driver_exit = internal global ptr @ad5761_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad5761.author=Ricardo Ribalda <ribalda@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [74 x i8] c"ad5761.description=Analog Devices AD5721, AD5721R, AD5761, AD5761R driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5761.file=drivers/iio/dac/ad5761\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5761.license=GPL v2\00", section ".modinfo", align 1
@ad5761_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5721\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5721r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5761\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5761r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5761\00", [25 x i8] zeroinitializer }, align 32
@ad5761_chip_infos = internal constant { [4 x %struct.ad5761_chip_info], [80 x i8] } { [4 x %struct.ad5761_chip_info] [%struct.ad5761_chip_info { i32 0, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 } }, %struct.ad5761_chip_info { i32 2500, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 } }, %struct.ad5761_chip_info { i32 0, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 } }, %struct.ad5761_chip_info { i32 2500, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 } }], [80 x i8] zeroinitializer }, align 32
@ad5761_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5761_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5761_read_raw, ptr null, ptr null, ptr @ad5761_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad5761_get_vref._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Voltage reference not found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad5761_get_vref\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5761.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5761_get_vref._entry_ptr = internal global ptr @ad5761_get_vref._entry, section ".printk_index", align 4
@ad5761_get_vref._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error getting voltage reference regulator\0A\00", [53 x i8] zeroinitializer }, align 32
@ad5761_get_vref._entry_ptr.10 = internal global ptr @ad5761_get_vref._entry.8, section ".printk_index", align 4
@ad5761_get_vref._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 318, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable voltage reference\0A\00", [60 x i8] zeroinitializer }, align 32
@ad5761_get_vref._entry_ptr.13 = internal global ptr @ad5761_get_vref._entry.11, section ".printk_index", align 4
@ad5761_get_vref._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get voltage reference value\0A\00", [57 x i8] zeroinitializer }, align 32
@ad5761_get_vref._entry_ptr.16 = internal global ptr @ad5761_get_vref._entry.14, section ".printk_index", align 4
@ad5761_get_vref._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 331, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid external voltage ref. value %d uV\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad5761_get_vref._entry_ptr.20 = internal global ptr @ad5761_get_vref._entry.17, section ".printk_index", align 4
@ad5761_range_params = internal constant { [8 x %struct.ad5761_range_params], [32 x i8] } { [8 x %struct.ad5761_range_params] [%struct.ad5761_range_params { i32 80, i32 40 }, %struct.ad5761_range_params { i32 40, i32 0 }, %struct.ad5761_range_params { i32 40, i32 20 }, %struct.ad5761_range_params { i32 20, i32 0 }, %struct.ad5761_range_params { i32 40, i32 10 }, %struct.ad5761_range_params { i32 24, i32 12 }, %struct.ad5761_range_params { i32 64, i32 0 }, %struct.ad5761_range_params { i32 80, i32 0 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"ad5761_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 419, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"ad5761_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 410, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 421, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"ad5761_chip_infos\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 271, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 373, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"ad5761_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 252, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 295, i32 60 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 299, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 310, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 317, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 324, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 330, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c"ad5761_range_params\00", align 1
@___asan_gen_.91 = private constant [28 x i8] c"../drivers/iio/dac/ad5761.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 82, i32 41 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5761_driver_exit, ptr @__initcall__kmod_ad5761__290_427_ad5761_driver_init6, ptr @ad5761_driver_exit, ptr @ad5761_get_vref._entry, ptr @ad5761_get_vref._entry.11, ptr @ad5761_get_vref._entry.14, ptr @ad5761_get_vref._entry.17, ptr @ad5761_get_vref._entry.8, ptr @ad5761_get_vref._entry_ptr, ptr @ad5761_get_vref._entry_ptr.10, ptr @ad5761_get_vref._entry_ptr.13, ptr @ad5761_get_vref._entry_ptr.16, ptr @ad5761_get_vref._entry_ptr.20, ptr @ad5761_driver, ptr @ad5761_id, ptr @.str, ptr @ad5761_chip_infos, ptr @ad5761_probe.__key, ptr @.str.1, ptr @ad5761_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @ad5761_range_params], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_chip_infos to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_get_vref._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_get_vref._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_get_vref._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_get_vref._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_get_vref._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5761_range_params to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5761_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5761_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5761_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5761_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5761_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i21.i = alloca %struct.spi_message, align 4
  %t.i.i22.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %5, align 128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %8 = load ptr, ptr %5, align 128
  %call.i = tail call ptr @devm_regulator_get_optional(ptr noundef %8, ptr noundef nonnull @.str.2) #5
  %vref_reg.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %vref_reg.i, align 4
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %arrayidx = getelementptr [4 x %struct.ad5761_chip_info], ptr @ad5761_chip_infos, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %use_intref.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %use_intref.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %use_intref.i, align 4
  %vref.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %vref.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %vref.i, align 8
  br label %if.end9

if.end7.i:                                        ; preds = %if.end
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ad5761_get_vref.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end7.i
  %call20.i = tail call i32 @regulator_enable(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end28.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end28.i:                                       ; preds = %if.end18.i
  %18 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vref_reg.i, align 4
  %call30.i = tail call i32 @regulator_get_voltage(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end35.i, label %if.end38.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15) #8
  br label %disable_regulator_vref.i

if.end38.i:                                       ; preds = %if.end28.i
  %22 = add nsw i32 %call30.i, -3000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1000001, i32 %22)
  %23 = icmp ult i32 %22, -1000001
  br i1 %23, label %do.end44.i, label %if.end47.i

do.end44.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.18, i32 noundef %call30.i) #8
  br label %disable_regulator_vref.i

if.end47.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %div78.i = udiv i32 %call30.i, 1000
  %vref48.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %vref48.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div78.i, ptr %vref48.i, align 8
  %use_intref49.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %use_intref49.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %use_intref49.i, align 4
  br label %if.end9

disable_regulator_vref.i:                         ; preds = %do.end44.i, %do.end35.i
  %ret.0.i = phi i32 [ %call30.i, %do.end35.i ], [ -5, %do.end44.i ]
  %28 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vref_reg.i, align 4
  %call51.i = tail call i32 @regulator_disable(ptr noundef %29) #5
  %30 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %vref_reg.i, align 4
  br label %cleanup

ad5761_get_vref.exit:                             ; preds = %if.end7.i
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.9) #8
  %33 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vref_reg.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %tobool7.not = icmp eq ptr %34, null
  br i1 %tobool7.not, label %ad5761_get_vref.exit.if.end9_crit_edge, label %ad5761_get_vref.exit.cleanup_crit_edge

ad5761_get_vref.exit.cleanup_crit_edge:           ; preds = %ad5761_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad5761_get_vref.exit.if.end9_crit_edge:           ; preds = %ad5761_get_vref.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %ad5761_get_vref.exit.if.end9_crit_edge, %if.end47.i, %if.end.i
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.end9.do.body_crit_edge, label %if.then11

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  br label %do.body

do.body:                                          ; preds = %if.then11, %if.end9.do.body_crit_edge
  %voltage_range.0 = phi i32 [ %37, %if.then11 ], [ 3, %if.end9.do.body_crit_edge ]
  %lock = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5761_probe.__key) #5
  %38 = and i32 %voltage_range.0, 7
  %use_intref.i59 = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 3
  %39 = ptrtoint ptr %use_intref.i59 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %use_intref.i59, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i60 = icmp eq i8 %40, 0
  %spec.select.v.i = select i1 %tobool.not.i60, i32 64, i32 96
  %data.i.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 7
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 983040, ptr %data.i.i, align 128
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 128
  %arrayidx4.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %44 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 92)
  %46 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx4.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %48 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %49 = call ptr @memset(ptr %48, i32 0, i32 40)
  %50 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %do.body._ad5761_spi_write.exit.i_crit_edge

do.body._ad5761_spi_write.exit.i_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %_ad5761_spi_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %_ad5761_spi_write.exit.i

_ad5761_spi_write.exit.i:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %do.body._ad5761_spi_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %43, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %_ad5761_spi_write.exit.i.disable_regulator_err_crit_edge

_ad5761_spi_write.exit.i.disable_regulator_err_crit_edge: ; preds = %_ad5761_spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_regulator_err

if.end6.i:                                        ; preds = %_ad5761_spi_write.exit.i
  %spec.select.i = or i32 %38, %spec.select.v.i
  %or.i.i = or i32 %spec.select.i, 262144
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i.i, ptr %data.i.i, align 128
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i22.i) #5
  %61 = getelementptr inbounds i8, ptr %t.i.i22.i, i32 4
  %62 = call ptr @memset(ptr %61, i32 0, i32 92)
  %63 = ptrtoint ptr %t.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx4.i.i, ptr %t.i.i22.i, align 4
  %len1.i.i25.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22.i, i32 0, i32 2
  %64 = ptrtoint ptr %len1.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3, ptr %len1.i.i25.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i21.i) #5
  %65 = getelementptr inbounds i8, ptr %msg.i.i.i21.i, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %msg.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %msg.i.i.i21.i, ptr %msg.i.i.i21.i, align 4
  %prev.i.i.i.i.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i21.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i21.i, ptr %prev.i.i.i.i.i.i.i26.i, align 4
  %resources.i.i.i.i.i.i27.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i21.i, i32 0, i32 10
  %69 = ptrtoint ptr %resources.i.i.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i.i.i.i27.i, ptr %resources.i.i.i.i.i.i27.i, align 4
  %prev.i2.i.i.i.i.i.i28.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i21.i, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i.i.i.i27.i, ptr %prev.i2.i.i.i.i.i.i28.i, align 4
  %transfer_list.i.i.i.i.i29.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i29.i, ptr noundef nonnull %msg.i.i.i21.i, ptr noundef nonnull %msg.i.i.i21.i) #5
  br i1 %call.i.i.i.i.i.i.i30.i, label %if.end.i.i.i.i.i.i.i32.i, label %if.end6.i._ad5761_spi_write.exit34.i_crit_edge

if.end6.i._ad5761_spi_write.exit34.i_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_ad5761_spi_write.exit34.i

if.end.i.i.i.i.i.i.i32.i:                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transfer_list.i.i.i.i.i29.i, ptr %prev.i.i.i.i.i.i.i26.i, align 4
  %72 = ptrtoint ptr %transfer_list.i.i.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i21.i, ptr %transfer_list.i.i.i.i.i29.i, align 4
  %prev3.i.i.i.i.i.i.i31.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i22.i, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i21.i, ptr %prev3.i.i.i.i.i.i.i31.i, align 4
  %74 = ptrtoint ptr %msg.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %transfer_list.i.i.i.i.i29.i, ptr %msg.i.i.i21.i, align 4
  br label %_ad5761_spi_write.exit34.i

_ad5761_spi_write.exit34.i:                       ; preds = %if.end.i.i.i.i.i.i.i32.i, %if.end6.i._ad5761_spi_write.exit34.i_crit_edge
  %call.i.i.i33.i = call i32 @spi_sync(ptr noundef %60, ptr noundef nonnull %msg.i.i.i21.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i21.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i22.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33.i)
  %tobool8.not.i = icmp eq i32 %call.i.i.i33.i, 0
  br i1 %tobool8.not.i, label %if.end17, label %_ad5761_spi_write.exit34.i.disable_regulator_err_crit_edge

_ad5761_spi_write.exit34.i.disable_regulator_err_crit_edge: ; preds = %_ad5761_spi_write.exit34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_regulator_err

if.end17:                                         ; preds = %_ad5761_spi_write.exit34.i
  %range11.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 5
  %75 = ptrtoint ptr %range11.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %voltage_range.0, ptr %range11.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %76 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @ad5761_info, ptr %info, align 8
  %77 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %call3, align 8
  %channel = getelementptr [4 x %struct.ad5761_chip_info], ptr @ad5761_chip_infos, i32 0, i32 %1, i32 1
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %78 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %channel, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %79 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %num_channels, align 4
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %5, align 128
  %call19 = call ptr @spi_get_device_id(ptr noundef %81) #5
  %name20 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %82 = ptrtoint ptr %name20 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call19, ptr %name20, align 8
  %call21 = call i32 @__iio_device_register(ptr noundef nonnull %call3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end17.cleanup_crit_edge, label %if.end17.disable_regulator_err_crit_edge

if.end17.disable_regulator_err_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_regulator_err

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

disable_regulator_err:                            ; preds = %if.end17.disable_regulator_err_crit_edge, %_ad5761_spi_write.exit34.i.disable_regulator_err_crit_edge, %_ad5761_spi_write.exit.i.disable_regulator_err_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end17.disable_regulator_err_crit_edge ], [ %call.i.i.i33.i, %_ad5761_spi_write.exit34.i.disable_regulator_err_crit_edge ], [ %call.i.i.i.i, %_ad5761_spi_write.exit.i.disable_regulator_err_crit_edge ]
  %83 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vref_reg.i, align 4
  %tobool.not.i62 = icmp eq ptr %84, null
  %cmp.i63 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %spec.select.i64 = or i1 %tobool.not.i62, %cmp.i63
  br i1 %spec.select.i64, label %disable_regulator_err.cleanup_crit_edge, label %if.then26

disable_regulator_err.cleanup_crit_edge:          ; preds = %disable_regulator_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %disable_regulator_err
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call i32 @regulator_disable(ptr noundef nonnull %84) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %disable_regulator_err.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %ad5761_get_vref.exit.cleanup_crit_edge, %disable_regulator_vref.i, %do.end25.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %35, %ad5761_get_vref.exit.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %ret.0, %if.then26 ], [ %ret.0, %disable_regulator_err.cleanup_crit_edge ], [ %ret.0.i, %disable_regulator_vref.i ], [ %call20.i, %do.end25.i ], [ -5, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5761_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %vref_reg = getelementptr inbounds %struct.ad5761_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref_reg, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5761_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfers.i.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5761_state, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers.i.i) #5
  %3 = getelementptr inbounds i8, ptr %xfers.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 188)
  %data.i.i = getelementptr inbounds %struct.ad5761_state, ptr %2, i32 0, i32 7
  %arrayidx1.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %xfers.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx1.i.i, ptr %xfers.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %len.i.i, align 4
  %cs_change.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %cs_change.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %cs_change.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %bits_per_word.i.i, align 1
  %arrayinit.element.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1
  %arrayidx4.i.i = getelementptr %struct.ad5761_state, ptr %2, i32 0, i32 7, i32 1
  %arrayidx5.i.i = getelementptr [4 x i8], ptr %arrayidx4.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx5.i.i, ptr %arrayinit.element.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 1
  %arrayidx7.i.i = getelementptr %struct.ad5761_state, ptr %2, i32 0, i32 7, i32 2
  %arrayidx8.i.i = getelementptr [4 x i8], ptr %arrayidx7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx8.i.i, ptr %rx_buf.i.i, align 4
  %len9.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %len9.i.i, align 4
  %bits_per_word14.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 8
  %12 = ptrtoint ptr %bits_per_word14.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %bits_per_word14.i.i, align 1
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 720896, ptr %data.i.i, align 128
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx4.i.i, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge

sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 18
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %28, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.ad5761_spi_read.exit_crit_edge

spi_message_add_tail.exit.i.i.i.i.ad5761_spi_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5761_spi_read.exit

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 1, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %28, align 4
  br label %ad5761_spi_read.exit

ad5761_spi_read.exit:                             ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.ad5761_spi_read.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %33 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %ad5761_spi_read.exit.cleanup_crit_edge

ad5761_spi_read.exit.cleanup_crit_edge:           ; preds = %ad5761_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ad5761_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv = and i32 %34, 65535
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %shift, align 1
  %conv1 = zext i8 %36 to i32
  %shr = lshr i32 %conv, %conv1
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 8
  %vref = getelementptr inbounds %struct.ad5761_state, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vref, align 8
  %range = getelementptr inbounds %struct.ad5761_state, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %range, align 4
  %arrayidx = getelementptr [8 x %struct.ad5761_range_params], ptr @ad5761_range_params, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %45, %41
  %div = sdiv i32 %mul, 10
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %realbits, align 1
  %conv5 = zext i8 %48 to i32
  %49 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv5, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i33 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %50 = ptrtoint ptr %priv.i33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv.i33, align 8
  %realbits9 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %realbits9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %realbits9, align 1
  %conv10 = zext i8 %53 to i32
  %shl.neg = shl nsw i32 -1, %conv10
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl.neg, ptr %val, align 4
  %range11 = getelementptr inbounds %struct.ad5761_state, ptr %51, i32 0, i32 5
  %55 = ptrtoint ptr %range11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %range11, align 4
  %c = getelementptr [8 x %struct.ad5761_range_params], ptr @ad5761_range_params, i32 0, i32 %56, i32 1
  %57 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %c, align 4
  %mul13 = mul i32 %58, %shl.neg
  store i32 %mul13, ptr %val, align 4
  %59 = load i32, ptr %range11, align 4
  %arrayidx15 = getelementptr [8 x %struct.ad5761_range_params], ptr @ad5761_range_params, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx15, align 4
  %div17 = sdiv i32 %mul13, %61
  store i32 %div17, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb2, %if.end, %ad5761_spi_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb6 ], [ 11, %sw.bb2 ], [ 1, %if.end ], [ %call.i.i.i, %ad5761_spi_read.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5761_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %mask, %val2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 1
  %conv = zext i8 %3 to i32
  %shl = shl i32 %val, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shl)
  %cmp1 = icmp sgt i32 %shl, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp4 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp4, %cmp1
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %conv1.i.i = and i32 %shl, 65535
  %or.i.i = or i32 %conv1.i.i, 196608
  %data.i.i = getelementptr inbounds %struct.ad5761_state, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i, ptr %data.i.i, align 128
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 128
  %arrayidx4.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %9 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx4.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
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
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end7.ad5761_spi_write.exit_crit_edge

if.end7.ad5761_spi_write.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad5761_spi_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
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
  br label %ad5761_spi_write.exit

ad5761_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end7.ad5761_spi_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ad5761_spi_write.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i.i, %ad5761_spi_write.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_ad5761__290_427_ad5761_driver_init6, !1, !"__initcall__kmod_ad5761__290_427_ad5761_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5761.c", i32 427, i32 1}
!2 = !{ptr @__exitcall_ad5761_driver_exit, !1, !"__exitcall_ad5761_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5761.c", i32 429, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5761.c", i32 430, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5761.c", i32 431, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5761.c", i32 421, i32 14}
!12 = !{ptr @ad5761_driver, !13, !"ad5761_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5761.c", i32 419, i32 26}
!14 = !{ptr @ad5761_id, !15, !"ad5761_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5761.c", i32 410, i32 35}
!16 = !{ptr @ad5761_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5761.c", i32 373, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ad5761_chip_infos, !20, !"ad5761_chip_infos", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad5761.c", i32 271, i32 38}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/ad5761.c", i32 295, i32 60}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/dac/ad5761.c", i32 299, i32 4}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ad5761_get_vref._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @ad5761_get_vref._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ad5761.c", i32 310, i32 3}
!33 = !{ptr @ad5761_get_vref._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ad5761_get_vref._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/ad5761.c", i32 317, i32 3}
!37 = !{ptr @ad5761_get_vref._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ad5761_get_vref._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/ad5761.c", i32 324, i32 3}
!41 = !{ptr @ad5761_get_vref._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ad5761_get_vref._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/ad5761.c", i32 330, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ad5761_get_vref._entry.17, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ad5761_get_vref._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ad5761_info, !49, !"ad5761_info", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ad5761.c", i32 252, i32 30}
!50 = !{ptr @ad5761_range_params, !51, !"ad5761_range_params", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5761.c", i32 82, i32 41}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
