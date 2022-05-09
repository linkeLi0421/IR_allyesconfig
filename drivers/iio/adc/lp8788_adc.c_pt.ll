; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/lp8788_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/lp8788_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.68, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.68 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_map = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lp8788_adc = type { ptr, ptr, %struct.mutex }

@__initcall__kmod_lp8788_adc__223_222_lp8788_adc_driver_init6 = internal global ptr @lp8788_adc_driver_init, section ".initcall6.init", align 4
@lp8788_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_adc_driver_exit = internal global ptr @lp8788_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [59 x i8] c"lp8788_adc.description=Texas Instruments LP8788 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [27 x i8] c"lp8788_adc.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [43 x i8] c"lp8788_adc.file=drivers/iio/adc/lp8788_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [23 x i8] c"lp8788_adc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [37 x i8] c"lp8788_adc.alias=platform:lp8788-adc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp8788-adc\00", [21 x i8] zeroinitializer }, align 32
@lp8788_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@lp8788_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @lp8788_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@lp8788_adc_channels = internal constant { [13 x %struct.iio_chan_spec], [264 x i8] } { [13 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 64 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 64 }, %struct.iio_chan_spec { i32 9, i32 3, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec zeroinitializer, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 0, i32 0, %struct.anon.68 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 64 }], [264 x i8] zeroinitializer }, align 32
@lp8788_default_iio_maps = internal global { [3 x %struct.iio_map], [48 x i8] } { [3 x %struct.iio_map] [%struct.iio_map { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr null }, %struct.iio_map { ptr @.str.10, ptr @.str.8, ptr @.str.11, ptr null }, %struct.iio_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp8788_iio_map_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iio map err: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lp8788_iio_map_register\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/lp8788_adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_iio_map_register._entry_ptr = internal global ptr @lp8788_iio_map_register._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBATT_5P0\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lp8788-charger\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8788_vbatt_5p0\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp8788_adc1\00", [20 x i8] zeroinitializer }, align 32
@lp8788_scale = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 1343101, i32 3052503, i32 610500, i32 61050, i32 1465201, i32 1221001, i32 610500, i32 610500, i32 1025641, i32 757020, i32 0, i32 610500, i32 610500], [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBATT_5P5\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VIN_CHG\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IBATT\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IC_TEMP\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBATT_6P0\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VDD\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCOIN\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC4\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"lp8788_adc_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 216, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 219, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 205, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"lp8788_adc_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 123, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"lp8788_adc_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 136, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"lp8788_default_iio_maps\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 152, i32 23 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 179, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 156, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 154, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 155, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 161, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 160, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"lp8788_scale\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 33, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 137, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 138, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 139, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 140, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 141, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 144, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 145, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 146, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 147, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [32 x i8] c"../drivers/iio/adc/lp8788_adc.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 148, i32 22 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_lp8788_adc_driver_exit, ptr @__initcall__kmod_lp8788_adc__223_222_lp8788_adc_driver_init6, ptr @lp8788_adc_driver_exit, ptr @lp8788_iio_map_register._entry, ptr @lp8788_iio_map_register._entry_ptr, ptr @lp8788_adc_driver, ptr @.str, ptr @lp8788_adc_probe.__key, ptr @.str.1, ptr @lp8788_adc_info, ptr @lp8788_adc_channels, ptr @lp8788_default_iio_maps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @lp8788_scale, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_adc_channels to i32), i32 1144, i32 1408, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_default_iio_maps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_iio_map_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_scale to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp8788_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp8788_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 100) #5
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %5, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.cond.end.i_crit_edge, label %lor.lhs.false.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %adc_pdata.i = getelementptr inbounds %struct.lp8788_platform_data, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %adc_pdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc_pdata.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  %spec.select.i = select i1 %tobool1.not.i, ptr @lp8788_default_iio_maps, ptr %10
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi ptr [ @lp8788_default_iio_maps, %if.end.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call.i = tail call i32 @devm_iio_map_array_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef nonnull %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.body, label %lp8788_iio_map_register.exit

lp8788_iio_map_register.exit:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.2, i32 noundef %call.i) #8
  br label %cleanup

do.body:                                          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %map5.i = getelementptr inbounds %struct.lp8788_adc, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %map5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cond.i, ptr %map5.i, align 4
  %lock = getelementptr inbounds %struct.lp8788_adc, ptr %5, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lp8788_adc_probe.__key) #5
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %name10 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %14 = ptrtoint ptr %name10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name10, align 8
  %15 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call2, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lp8788_adc_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lp8788_adc_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13, ptr %num_channels, align 4
  %call12 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %lp8788_iio_map_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.body ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %lp8788_iio_map_register.exit ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_map_array_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_adc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %rawdata.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %lock = getelementptr inbounds %struct.lp8788_adc, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rawdata.i) #5
  %5 = ptrtoint ptr %rawdata.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rawdata.i, align 1, !annotation !74
  %6 = getelementptr inbounds [2 x i8], ptr %rawdata.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !74
  %id.tr.i = trunc i32 %3 to i8
  %8 = shl i8 %id.tr.i, 1
  %conv.i = or i8 %8, 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @lp8788_write_byte(ptr noundef %10, i8 noundef zeroext 96, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.lp8788_get_adc_result.exit.thread_crit_edge

sw.bb.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %data.i, align 1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call3.i = call i32 @lp8788_read_byte(ptr noundef %13, i8 noundef zeroext 99, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.lp8788_get_adc_result.exit.thread_crit_edge

if.end.i.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not.i = icmp eq i8 %15, 0
  br i1 %tobool7.not.i, label %while.cond.1.i, label %if.end6.i.while.end.i_crit_edge

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.1.i:                                   ; preds = %if.end6.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call3.1.i = call i32 @lp8788_read_byte(ptr noundef %17, i8 noundef zeroext 99, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %tobool4.not.1.i = icmp eq i32 %call3.1.i, 0
  br i1 %tobool4.not.1.i, label %if.end6.1.i, label %while.cond.1.i.lp8788_get_adc_result.exit.thread_crit_edge

while.cond.1.i.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

if.end6.1.i:                                      ; preds = %while.cond.1.i
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not.1.i = icmp eq i8 %19, 0
  br i1 %tobool7.not.1.i, label %while.cond.2.i, label %if.end6.1.i.while.end.i_crit_edge

if.end6.1.i.while.end.i_crit_edge:                ; preds = %if.end6.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.2.i:                                   ; preds = %if.end6.1.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call3.2.i = call i32 @lp8788_read_byte(ptr noundef %21, i8 noundef zeroext 99, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %tobool4.not.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %tobool4.not.2.i, label %if.end6.2.i, label %while.cond.2.i.lp8788_get_adc_result.exit.thread_crit_edge

while.cond.2.i.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

if.end6.2.i:                                      ; preds = %while.cond.2.i
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not.2.i = icmp eq i8 %23, 0
  br i1 %tobool7.not.2.i, label %while.cond.3.i, label %if.end6.2.i.while.end.i_crit_edge

if.end6.2.i.while.end.i_crit_edge:                ; preds = %if.end6.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.3.i:                                   ; preds = %if.end6.2.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call3.3.i = call i32 @lp8788_read_byte(ptr noundef %25, i8 noundef zeroext 99, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %tobool4.not.3.i = icmp eq i32 %call3.3.i, 0
  br i1 %tobool4.not.3.i, label %if.end6.3.i, label %while.cond.3.i.lp8788_get_adc_result.exit.thread_crit_edge

while.cond.3.i.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

if.end6.3.i:                                      ; preds = %while.cond.3.i
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.3.i = icmp eq i8 %27, 0
  br i1 %tobool7.not.3.i, label %while.cond.4.i, label %if.end6.3.i.while.end.i_crit_edge

if.end6.3.i.while.end.i_crit_edge:                ; preds = %if.end6.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.4.i:                                   ; preds = %if.end6.3.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call3.4.i = call i32 @lp8788_read_byte(ptr noundef %29, i8 noundef zeroext 99, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4.i)
  %tobool4.not.4.i = icmp eq i32 %call3.4.i, 0
  br i1 %tobool4.not.4.i, label %while.cond.4.i.while.end.i_crit_edge, label %while.cond.4.i.lp8788_get_adc_result.exit.thread_crit_edge

while.cond.4.i.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

while.cond.4.i.while.end.i_crit_edge:             ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.4.i.while.end.i_crit_edge, %if.end6.3.i.while.end.i_crit_edge, %if.end6.2.i.while.end.i_crit_edge, %if.end6.1.i.while.end.i_crit_edge, %if.end6.i.while.end.i_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call11.i = call i32 @lp8788_read_multi_bytes(ptr noundef %31, i8 noundef zeroext 97, ptr noundef nonnull %rawdata.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %32, label %while.end.i.lp8788_get_adc_result.exit.thread_crit_edge

while.end.i.lp8788_get_adc_result.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_adc_result.exit.thread

lp8788_get_adc_result.exit.thread:                ; preds = %while.end.i.lp8788_get_adc_result.exit.thread_crit_edge, %while.cond.4.i.lp8788_get_adc_result.exit.thread_crit_edge, %while.cond.3.i.lp8788_get_adc_result.exit.thread_crit_edge, %while.cond.2.i.lp8788_get_adc_result.exit.thread_crit_edge, %while.cond.1.i.lp8788_get_adc_result.exit.thread_crit_edge, %if.end.i.lp8788_get_adc_result.exit.thread_crit_edge, %sw.bb.lp8788_get_adc_result.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rawdata.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %sw.epilog

32:                                               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %rawdata.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rawdata.i, align 1
  %conv15.i = zext i8 %34 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %6, align 1
  %37 = lshr i8 %36, 4
  %38 = zext i8 %37 to i32
  %or20.i = or i32 %shl16.i, %38
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or20.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rawdata.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [13 x i32], ptr @lp8788_scale, i32 0, i32 %3
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %.frozen = freeze i32 %41
  %div = sdiv i32 %.frozen, 1000000
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div, ptr %val, align 4
  %43 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %.frozen, %43
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %32, %lp8788_get_adc_result.exit.thread, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb2 ], [ -22, %entry.sw.epilog_crit_edge ], [ 1, %32 ], [ -5, %lp8788_get_adc_result.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_write_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_read_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_read_multi_bytes(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_lp8788_adc__223_222_lp8788_adc_driver_init6, !1, !"__initcall__kmod_lp8788_adc__223_222_lp8788_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 222, i32 1}
!2 = !{ptr @__exitcall_lp8788_adc_driver_exit, !1, !"__exitcall_lp8788_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 224, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 227, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 219, i32 11}
!14 = !{ptr @lp8788_adc_driver, !15, !"lp8788_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 216, i32 31}
!16 = !{ptr @lp8788_adc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 205, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 179, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lp8788_iio_map_register._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @lp8788_iio_map_register._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 156, i32 24}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 154, i32 24}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 155, i32 23}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 161, i32 24}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 160, i32 23}
!37 = !{ptr @lp8788_default_iio_maps, !38, !"lp8788_default_iio_maps", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 152, i32 23}
!39 = !{ptr @lp8788_adc_info, !40, !"lp8788_adc_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 123, i32 30}
!41 = !{ptr @lp8788_scale, !42, !"lp8788_scale", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 33, i32 18}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 137, i32 22}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 138, i32 22}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 139, i32 22}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 140, i32 22}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 141, i32 22}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 144, i32 22}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 145, i32 22}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 146, i32 22}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 147, i32 22}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 148, i32 22}
!63 = !{ptr @lp8788_adc_channels, !64, !"lp8788_adc_channels", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/lp8788_adc.c", i32 136, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
