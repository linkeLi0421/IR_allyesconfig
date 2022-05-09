; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/axp288_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/axp288_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_map = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.axp288_adc_info = type { i32, ptr, i8 }

@__initcall__kmod_axp288_adc__170_302_axp288_adc_driver_init6 = internal global ptr @axp288_adc_driver_init, section ".initcall6.init", align 4
@axp288_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp288_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @axp288_adc_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp288_adc_driver_exit = internal global ptr @axp288_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [60 x i8] c"axp288_adc.author=Jacob Pan <jacob.jun.pan@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [50 x i8] c"axp288_adc.description=X-Powers AXP288 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [43 x i8] c"axp288_adc.file=drivers/iio/adc/axp288_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"axp288_adc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp288_adc\00", [21 x i8] zeroinitializer }, align 32
@axp288_adc_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"axp288_adc\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@axp288_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enable ADC device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp288_adc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/axp288_adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp288_adc_probe._entry_ptr = internal global ptr @axp288_adc_probe._entry, section ".printk_index", align 4
@axp288_adc_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 88, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.6, i8 64 }, %struct.iio_chan_spec { i32 9, i32 1, i32 0, i32 86, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 64 }, %struct.iio_chan_spec { i32 9, i32 2, i32 0, i32 90, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.8, i8 64 }, %struct.iio_chan_spec { i32 1, i32 3, i32 0, i32 122, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 1, i32 4, i32 0, i32 124, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 120, i32 0, %struct.anon.43 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }], [144 x i8] zeroinitializer }, align 32
@axp288_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @axp288_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@axp288_adc_default_maps = internal global { [7 x %struct.iio_map], [48 x i8] } { [7 x %struct.iio_map] [%struct.iio_map { ptr @.str.6, ptr @.str.17, ptr @.str.18, ptr null }, %struct.iio_map { ptr @.str.7, ptr @.str.19, ptr @.str.20, ptr null }, %struct.iio_map { ptr @.str.8, ptr @.str.21, ptr @.str.22, ptr null }, %struct.iio_map { ptr @.str.9, ptr @.str.23, ptr @.str.24, ptr null }, %struct.iio_map { ptr @.str.10, ptr @.str.23, ptr @.str.25, ptr null }, %struct.iio_map { ptr @.str.11, ptr @.str.17, ptr @.str.26, ptr null }, %struct.iio_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TS_PIN\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PMIC_TEMP\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPADC\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BATT_CHG_I\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BATT_DISCHRG_I\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BATT_V\00", [25 x i8] zeroinitializer }, align 32
@axp288_adc_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPADC mode\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axp288_adc_read_raw\00", [44 x i8] zeroinitializer }, align 32
@axp288_adc_read_raw._entry_ptr = internal global ptr @axp288_adc_read_raw._entry, section ".printk_index", align 4
@axp288_adc_read_raw._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TS pin restore\0A\00", [16 x i8] zeroinitializer }, align 32
@axp288_adc_read_raw._entry_ptr.16 = internal global ptr @axp288_adc_read_raw._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axp288-batt\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp288-batt-temp\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axp288-pmic\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp288-pmic-temp\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axp288-gpadc\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axp288-system-temp\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axp288-chrg\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp288-chrg-curr\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axp288-chrg-d-curr\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axp288-batt-volt\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"axp288_adc_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 292, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 296, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"axp288_adc_id_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 287, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 270, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"axp288_adc_channels\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 56, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"axp288_adc_iio_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 243, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"axp288_adc_default_maps\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 103, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 62, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 69, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 76, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 83, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 90, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 97, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 169, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 176, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 104, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 105, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 106, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 107, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 108, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [32 x i8] c"../drivers/iio/adc/axp288_adc.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 109, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_axp288_adc_driver_exit, ptr @__initcall__kmod_axp288_adc__170_302_axp288_adc_driver_init6, ptr @axp288_adc_driver_exit, ptr @axp288_adc_probe._entry, ptr @axp288_adc_probe._entry_ptr, ptr @axp288_adc_read_raw._entry, ptr @axp288_adc_read_raw._entry.14, ptr @axp288_adc_read_raw._entry_ptr, ptr @axp288_adc_read_raw._entry_ptr.16, ptr @axp288_adc_driver, ptr @.str, ptr @axp288_adc_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @axp288_adc_channels, ptr @axp288_adc_iio_info, ptr @axp288_adc_default_maps, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_default_maps to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp288_adc_read_raw._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp288_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp288_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp288_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp288_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp288_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %adc_enable_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %regmap9 = getelementptr inbounds %struct.axp288_adc_info, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc_enable_val.i) #5
  %10 = ptrtoint ptr %adc_enable_val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %adc_enable_val.i, align 4, !annotation !78
  %call6.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 130, ptr noundef nonnull %adc_enable_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end8.axp288_adc_initialize.exit.thread_crit_edge

if.end8.axp288_adc_initialize.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %axp288_adc_initialize.exit.thread

if.end9.i:                                        ; preds = %if.end8
  %11 = ptrtoint ptr %adc_enable_val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adc_enable_val.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  %ts_enabled14.i = getelementptr inbounds %struct.axp288_adc_info, ptr %5, i32 0, i32 2
  %not.tobool10.not.i = xor i1 %tobool10.not.i, true
  %..i = zext i1 %not.tobool10.not.i to i8
  %.40.i = select i1 %tobool10.not.i, i32 0, i32 3
  %13 = ptrtoint ptr %ts_enabled14.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %..i, ptr %ts_enabled14.i, align 4
  %14 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap9, align 4
  %call.i37.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 132, i32 noundef 3, i32 noundef %.40.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool18.not.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool18.not.i, label %axp288_adc_initialize.exit, label %if.end9.i.axp288_adc_initialize.exit.thread_crit_edge

if.end9.i.axp288_adc_initialize.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %axp288_adc_initialize.exit.thread

axp288_adc_initialize.exit.thread:                ; preds = %if.end9.i.axp288_adc_initialize.exit.thread_crit_edge, %if.end8.axp288_adc_initialize.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i37.i, %if.end9.i.axp288_adc_initialize.exit.thread_crit_edge ], [ %call6.i, %if.end8.axp288_adc_initialize.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_enable_val.i) #5
  br label %do.end

axp288_adc_initialize.exit:                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap9, align 4
  %call.i38.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 130, i32 noundef 240, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc_enable_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool11.not = icmp eq i32 %call.i38.i, 0
  br i1 %tobool11.not, label %if.end14, label %axp288_adc_initialize.exit.do.end_crit_edge

axp288_adc_initialize.exit.do.end_crit_edge:      ; preds = %axp288_adc_initialize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %axp288_adc_initialize.exit.do.end_crit_edge, %axp288_adc_initialize.exit.thread
  %retval.0.i50 = phi i32 [ %retval.0.i.ph, %axp288_adc_initialize.exit.thread ], [ %call.i38.i, %axp288_adc_initialize.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end14:                                         ; preds = %axp288_adc_initialize.exit
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %name15 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %20 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %name15, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @axp288_adc_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %num_channels, align 4
  %info16 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %23 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @axp288_adc_iio_info, ptr %info16, align 8
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call2, align 8
  %call18 = call i32 @devm_iio_map_array_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef nonnull @axp288_adc_default_maps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end14.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i50, %do.end ], [ %call23, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call18, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_map_array_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp288_adc_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %ts_enabled.i = getelementptr inbounds %struct.axp288_adc_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ts_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ts_enabled.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 90
  %or.cond.i = and i1 %cmp.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end2.i, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end2.i:                                        ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.axp288_adc_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 132, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %do.end

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 10000, i32 noundef 2) #5
  br label %if.end

do.end:                                           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %sw.epilog

if.end:                                           ; preds = %if.end5.i, %sw.bb.if.end_crit_edge
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %regmap = getelementptr inbounds %struct.axp288_adc_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buf.i, align 1, !annotation !78
  %13 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !78
  %call.i = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %9, ptr noundef nonnull %buf.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %if.end.i, label %if.end.axp288_adc_read_channel.exit_crit_edge

if.end.axp288_adc_read_channel.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %axp288_adc_read_channel.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %16 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %13, align 1
  %19 = lshr i8 %18, 4
  %20 = zext i8 %19 to i32
  %add.i = or i32 %shl.i, %20
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %val, align 4
  br label %axp288_adc_read_channel.exit

axp288_adc_read_channel.exit:                     ; preds = %if.end.i, %if.end.axp288_adc_read_channel.exit_crit_edge
  %retval.0.i23 = phi i32 [ 1, %if.end.i ], [ -5, %if.end.axp288_adc_read_channel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %22 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address, align 4
  %24 = ptrtoint ptr %ts_enabled.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ts_enabled.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i25 = icmp ne i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %23)
  %cmp.not.i26 = icmp eq i32 %23, 90
  %or.cond.i27 = and i1 %cmp.not.i26, %tobool.not.i25
  br i1 %or.cond.i27, label %if.end2.i31, label %axp288_adc_read_channel.exit.sw.epilog_crit_edge

axp288_adc_read_channel.exit.sw.epilog_crit_edge: ; preds = %axp288_adc_read_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end2.i31:                                      ; preds = %axp288_adc_read_channel.exit
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i.i29 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 132, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool3.not.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool3.not.i30, label %if.end2.i31.sw.epilog_crit_edge, label %do.end10

if.end2.i31.sw.epilog_crit_edge:                  ; preds = %if.end2.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10:                                         ; preds = %if.end2.i31
  call void @__sanitizer_cov_trace_pc() #7
  %dev11 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.15) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %if.end2.i31.sw.epilog_crit_edge, %axp288_adc_read_channel.exit.sw.epilog_crit_edge, %do.end, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ %retval.0.i23, %do.end10 ], [ -22, %entry.sw.epilog_crit_edge ], [ %retval.0.i23, %axp288_adc_read_channel.exit.sw.epilog_crit_edge ], [ %retval.0.i23, %if.end2.i31.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %mlock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_axp288_adc__170_302_axp288_adc_driver_init6, !1, !"__initcall__kmod_axp288_adc__170_302_axp288_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/axp288_adc.c", i32 302, i32 1}
!2 = !{ptr @__exitcall_axp288_adc_driver_exit, !1, !"__exitcall_axp288_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/axp288_adc.c", i32 304, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/axp288_adc.c", i32 305, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/axp288_adc.c", i32 306, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/axp288_adc.c", i32 296, i32 11}
!12 = !{ptr @axp288_adc_driver, !13, !"axp288_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/axp288_adc.c", i32 292, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/axp288_adc.c", i32 270, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axp288_adc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axp288_adc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"axp288_adc_ts_bias_override", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/axp288_adc.c", i32 190, i32 35}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/axp288_adc.c", i32 62, i32 21}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/axp288_adc.c", i32 69, i32 21}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/axp288_adc.c", i32 76, i32 21}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/axp288_adc.c", i32 83, i32 21}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/axp288_adc.c", i32 90, i32 21}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/axp288_adc.c", i32 97, i32 21}
!36 = !{ptr @axp288_adc_channels, !37, !"axp288_adc_channels", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/axp288_adc.c", i32 56, i32 35}
!38 = !{ptr @axp288_adc_iio_info, !39, !"axp288_adc_iio_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/axp288_adc.c", i32 243, i32 30}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/axp288_adc.c", i32 169, i32 4}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @axp288_adc_read_raw._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @axp288_adc_read_raw._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/axp288_adc.c", i32 176, i32 4}
!47 = !{ptr @axp288_adc_read_raw._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @axp288_adc_read_raw._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/axp288_adc.c", i32 104, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/axp288_adc.c", i32 105, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/axp288_adc.c", i32 106, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/axp288_adc.c", i32 107, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/axp288_adc.c", i32 108, i32 2}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/axp288_adc.c", i32 109, i32 2}
!65 = !{ptr @axp288_adc_default_maps, !66, !"axp288_adc_default_maps", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/axp288_adc.c", i32 103, i32 23}
!67 = !{ptr @axp288_adc_id_table, !68, !"axp288_adc_id_table", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/axp288_adc.c", i32 287, i32 40}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i8 0, i8 2}
