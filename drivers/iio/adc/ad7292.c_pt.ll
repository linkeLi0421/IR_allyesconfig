; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7292.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7292.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ad7292_state = type { ptr, ptr, i16, [118 x i8], i16, [2 x i8], [124 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_ad7292__295_348_ad7292_driver_init6 = internal global ptr @ad7292_driver_init, section ".initcall6.init", align 4
@ad7292_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7292_id_table, ptr @ad7292_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7292_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7292_driver_exit = internal global ptr @ad7292_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [59 x i8] c"ad7292.author=Marcelo Schmitt <marcelo.schmitt1@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [52 x i8] c"ad7292.description=Analog Devices AD7292 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [35 x i8] c"ad7292.file=drivers/iio/adc/ad7292\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [22 x i8] c"ad7292.license=GPL v2\00", section ".modinfo", align 1
@ad7292_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7292\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7292\00", [25 x i8] zeroinitializer }, align 32
@ad7292_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7292\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad7292_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wrong vendor id 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7292_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7292.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7292_probe._entry_ptr = internal global ptr @ad7292_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7292_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable external vref supply\0A\00", [57 x i8] zeroinitializer }, align 32
@ad7292_probe._entry_ptr.9 = internal global ptr @ad7292_probe._entry.7, section ".printk_index", align 4
@ad7292_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7292_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"diff-channels\00", [18 x i8] zeroinitializer }, align 32
@ad7292_channels_diff = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [152 x i8] zeroinitializer }, align 32
@ad7292_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"ad7292_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 340, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"ad7292_id_table\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 328, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 342, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"ad7292_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 334, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 275, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 279, i32 51 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 283, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"ad7292_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 247, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 310, i32 48 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"ad7292_channels_diff\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 61, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"ad7292_channels\00", align 1
@___asan_gen_.60 = private constant [28 x i8] c"../drivers/iio/adc/ad7292.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 50, i32 35 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ad7292_driver_exit, ptr @__initcall__kmod_ad7292__295_348_ad7292_driver_init6, ptr @ad7292_driver_exit, ptr @ad7292_probe._entry, ptr @ad7292_probe._entry.7, ptr @ad7292_probe._entry_ptr, ptr @ad7292_probe._entry_ptr.9, ptr @ad7292_driver, ptr @ad7292_id_table, ptr @.str, ptr @ad7292_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ad7292_info, ptr @.str.10, ptr @ad7292_channels_diff, ptr @ad7292_channels], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_channels_diff to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7292_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7292_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7292_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7292_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7292_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7292_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %d8.i = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %d8.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %d8.i, align 2
  %d16.i = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef %d8.i, i32 noundef 1, ptr noundef %d16.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %ad7292_spi_reg_read.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

ad7292_spi_reg_read.exit:                         ; preds = %if.end
  %4 = ptrtoint ptr %d16.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %d16.i, align 128
  %conv4.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %5)
  %cmp.not = icmp eq i16 %5, 24
  br i1 %cmp.not, label %if.end6, label %ad7292_spi_reg_read.exit.do.end_crit_edge

ad7292_spi_reg_read.exit.do.end_crit_edge:        ; preds = %ad7292_spi_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %ad7292_spi_reg_read.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i107 = phi i32 [ %conv4.i, %ad7292_spi_reg_read.exit.do.end_crit_edge ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i107) #8
  br label %cleanup

if.end6:                                          ; preds = %ad7292_spi_reg_read.exit
  %call8 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.6) #5
  %reg = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %reg, align 4
  %cmp.i101 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.end6.if.end34_crit_edge, label %if.then11

if.end6.if.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then11:                                        ; preds = %if.end6
  %call13 = tail call i32 @regulator_enable(ptr noundef %call8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end20:                                         ; preds = %if.then11
  %call.i102 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7292_regulator_disable, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i = icmp eq i32 %call.i102, 0
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  br i1 %tobool.not.i, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %8) #5
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %call26 = tail call i32 @regulator_disable(ptr noundef %10) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %call29 = tail call i32 @regulator_get_voltage(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %div109 = udiv i32 %call29, 1000
  %conv = trunc i32 %div109 to i16
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end6.if.end34_crit_edge
  %.sink = phi i16 [ %conv, %if.end32 ], [ 1250, %if.end6.if.end34_crit_edge ]
  %vref_mv33 = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vref_mv33 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %vref_mv33, align 8
  %call35 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name36 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %12 = ptrtoint ptr %name36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call35, ptr %name36, align 8
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ad7292_info, ptr %info, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call38 = tail call ptr @of_get_next_available_child(ptr noundef %16, ptr noundef null) #5
  %cmp39.not111 = icmp eq ptr %call38, null
  br i1 %cmp39.not111, label %if.end34.if.end53_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34.for.body_crit_edge
  %child.0112 = phi ptr [ %call47, %for.inc.for.body_crit_edge ], [ %call38, %if.end34.for.body_crit_edge ]
  %call.i104 = tail call ptr @of_find_property(ptr noundef nonnull %child.0112, ptr noundef nonnull @.str.10, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i104, null
  br i1 %tobool.i.not, label %for.inc, label %if.then49

for.inc:                                          ; preds = %for.body
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call47 = tail call ptr @of_get_next_available_child(ptr noundef %18, ptr noundef nonnull %child.0112) #5
  %cmp39.not = icmp eq ptr %call47, null
  br i1 %cmp39.not, label %for.inc.if.end53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %child.0112) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %for.inc.if.end53_crit_edge, %if.end34.if.end53_crit_edge
  %.sink115 = phi i32 [ 7, %if.then49 ], [ 8, %if.end34.if.end53_crit_edge ], [ 8, %for.inc.if.end53_crit_edge ]
  %ad7292_channels.sink = phi ptr [ @ad7292_channels_diff, %if.then49 ], [ @ad7292_channels, %if.end34.if.end53_crit_edge ], [ @ad7292_channels, %for.inc.if.end53_crit_edge ]
  %num_channels51 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink115, ptr %num_channels51, align 4
  %channels52 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %20 = ptrtoint ptr %channels52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ad7292_channels.sink, ptr %channels52, align 8
  %call55 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end27.cleanup_crit_edge, %if.then24, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call55, %if.end53 ], [ %call13, %do.end18 ], [ %call.i102, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7292_regulator_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.ad7292_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7292_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #5
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 188)
  %d8.i = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %d8.i, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len.i, align 4
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 9
  %9 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 6, ptr %delay.i, align 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 1
  %d16.i = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %d16.i, ptr %rx_buf.i, align 4
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 2
  %11 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len2.i, align 4
  %12 = trunc i32 %4 to i8
  %conv.i = add i8 %12, 16
  %13 = ptrtoint ptr %d8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %d8.i, align 2
  %arrayidx10.i = getelementptr %struct.ad7292_state, ptr %1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -114, ptr %arrayidx10.i, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %17 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.bb.spi_message_add_tail.exit.i.i.i_crit_edge

sw.bb.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %sw.bb.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 18
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i.i, ptr noundef %28, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.1.i.i.i, label %if.end.i.i.i.1.i.i.i, label %spi_message_add_tail.exit.i.i.i.spi_sync_transfer.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.spi_sync_transfer.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.1.i.i.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.1.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i, ptr %transfer_list.i.1.i.i.i, align 4
  %prev3.i.i.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.1.i.i.i, ptr %28, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.1.i.i.i, %spi_message_add_tail.exit.i.i.i.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad7292_single_conversion.exit.thread, label %ad7292_single_conversion.exit

ad7292_single_conversion.exit.thread:             ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #5
  br label %cleanup

ad7292_single_conversion.exit:                    ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %d16.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %d16.i, align 128
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #5
  %35 = lshr i16 %34, 6
  %and = zext i16 %35 to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %channel15 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %37 = ptrtoint ptr %channel15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel15, align 4
  %d8.i.i = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %d8.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -123, ptr %d8.i.i, align 2
  %arrayidx3.i.i = getelementptr %struct.ad7292_state, ptr %1, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 18, ptr %arrayidx3.i.i, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 128
  %d16.i.i = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 4
  %call.i.i31 = tail call i32 @spi_write_then_read(ptr noundef %42, ptr noundef %d8.i.i, i32 noundef 2, ptr noundef %d16.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp.i.i = icmp slt i32 %call.i.i31, 0
  br i1 %cmp.i.i, label %sw.bb14.cleanup_crit_edge, label %ad7292_spi_subreg_read.exit.i

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad7292_spi_subreg_read.exit.i:                    ; preds = %sw.bb14
  %43 = ptrtoint ptr %d16.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %d16.i.i, align 128
  %45 = ptrtoint ptr %d8.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -123, ptr %d8.i.i, align 2
  %46 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 16, ptr %arrayidx3.i.i, align 1
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 128
  %call.i53.i = tail call i32 @spi_write_then_read(ptr noundef %48, ptr noundef %d8.i.i, i32 noundef 2, ptr noundef %d16.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %cmp.i54.i = icmp slt i32 %call.i53.i, 0
  br i1 %cmp.i54.i, label %ad7292_spi_subreg_read.exit.i.cleanup_crit_edge, label %ad7292_spi_subreg_read.exit58.i

ad7292_spi_subreg_read.exit.i.cleanup_crit_edge:  ; preds = %ad7292_spi_subreg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad7292_spi_subreg_read.exit58.i:                  ; preds = %ad7292_spi_subreg_read.exit.i
  %49 = ptrtoint ptr %d16.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %d16.i.i, align 128
  %51 = ptrtoint ptr %d8.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -123, ptr %d8.i.i, align 2
  %52 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 17, ptr %arrayidx3.i.i, align 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 128
  %call.i62.i = tail call i32 @spi_write_then_read(ptr noundef %54, ptr noundef %d8.i.i, i32 noundef 2, ptr noundef %d16.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %cmp.i63.i = icmp slt i32 %call.i62.i, 0
  br i1 %cmp.i63.i, label %ad7292_spi_subreg_read.exit58.i.cleanup_crit_edge, label %ad7292_spi_subreg_read.exit67.i

ad7292_spi_subreg_read.exit58.i.cleanup_crit_edge: ; preds = %ad7292_spi_subreg_read.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad7292_spi_subreg_read.exit67.i:                  ; preds = %ad7292_spi_subreg_read.exit58.i
  %conv7.i55.i = zext i16 %50 to i32
  %55 = ptrtoint ptr %d16.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %d16.i.i, align 128
  %conv7.i64.i = zext i16 %56 to i32
  %57 = lshr i16 %44, 8
  %shr74.i = zext i16 %57 to i32
  %shl.i = shl nuw i32 1, %38
  %and.i = and i32 %shl.i, %shr74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and22.i = and i32 %shl.i, %conv7.i55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %ad7292_spi_subreg_read.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select.i = select i1 %tobool23.not.i, i32 2, i32 1
  %58 = xor i32 %conv7.i64.i, -1
  %59 = lshr i32 %58, %38
  %60 = and i32 %59, 1
  %spec.select49.i = shl nuw nsw i32 %spec.select.i, %60
  br label %if.end19

if.else.i:                                        ; preds = %ad7292_spi_subreg_read.exit67.i
  %and25.i = and i32 %shl.i, %conv7.i64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i.if.end19_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i.if.end19_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %if.else.i.if.end19_crit_edge, %if.then9.i
  %factor.1.i = phi i32 [ 4, %if.else.i.if.end19_crit_edge ], [ %spec.select49.i, %if.then9.i ]
  %vref_mv = getelementptr inbounds %struct.ad7292_state, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vref_mv, align 8
  %conv = zext i16 %62 to i32
  %mul = mul nuw nsw i32 %factor.1.i, %conv
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul, ptr %val, align 4
  %64 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.else.i.cleanup_crit_edge, %ad7292_spi_subreg_read.exit58.i.cleanup_crit_edge, %ad7292_spi_subreg_read.exit.i.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %ad7292_single_conversion.exit, %ad7292_single_conversion.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end19 ], [ 1, %ad7292_single_conversion.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ad7292_single_conversion.exit.thread ], [ %call.i62.i, %ad7292_spi_subreg_read.exit58.i.cleanup_crit_edge ], [ %call.i53.i, %ad7292_spi_subreg_read.exit.i.cleanup_crit_edge ], [ %call.i.i31, %sw.bb14.cleanup_crit_edge ], [ -1, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_ad7292__295_348_ad7292_driver_init6, !1, !"__initcall__kmod_ad7292__295_348_ad7292_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7292.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_ad7292_driver_exit, !1, !"__exitcall_ad7292_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7292.c", i32 350, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7292.c", i32 351, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7292.c", i32 352, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7292.c", i32 342, i32 11}
!12 = !{ptr @ad7292_driver, !13, !"ad7292_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7292.c", i32 340, i32 26}
!14 = !{ptr @ad7292_id_table, !15, !"ad7292_id_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7292.c", i32 328, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7292.c", i32 275, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad7292_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad7292_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7292.c", i32 279, i32 51}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7292.c", i32 283, i32 4}
!28 = !{ptr @ad7292_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ad7292_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7292.c", i32 310, i32 48}
!32 = !{ptr @ad7292_info, !33, !"ad7292_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7292.c", i32 247, i32 30}
!34 = !{ptr @ad7292_channels_diff, !35, !"ad7292_channels_diff", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7292.c", i32 61, i32 35}
!36 = !{ptr @ad7292_channels, !37, !"ad7292_channels", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad7292.c", i32 50, i32 35}
!38 = !{ptr @ad7292_of_match, !39, !"ad7292_of_match", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ad7292.c", i32 334, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
