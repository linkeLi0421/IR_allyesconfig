; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/cpcap-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/cpcap-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpcap_adc_phasing_tbl = type { i16, i16, i16, i16, i16 }
%struct.cpcap_adc_conversion_tbl = type { i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cpcap_adc_ato = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cpcap_adc = type { ptr, ptr, i16, i32, %struct.mutex, ptr, %struct.wait_queue_head, i8 }
%struct.cpcap_adc_request = type { i32, ptr, ptr, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_cpcap_adc__188_1026_cpcap_adc_driver_init6 = internal global ptr @cpcap_adc_driver_init, section ".initcall6.init", align 4
@cpcap_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_adc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_adc_driver_exit = internal global ptr @cpcap_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias189 = internal constant [35 x i8] c"cpcap_adc.alias=platform:cpcap_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [39 x i8] c"cpcap_adc.description=CPCAP ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [49 x i8] c"cpcap_adc.author=Tony Lindgren <tony@atomide.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [41 x i8] c"cpcap_adc.file=drivers/iio/adc/cpcap-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [25 x i8] c"cpcap_adc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpcap_adc\00", [22 x i8] zeroinitializer }, align 32
@cpcap_adc_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mapphone_adc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cpcap_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpcap_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/adc/cpcap-adc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_adc_probe._entry_ptr = internal global ptr @cpcap_adc_probe._entry, section ".printk_index", align 4
@cpcap_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ddata->lock\00", [19 x i8] zeroinitializer }, align 32
@cpcap_adc_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ddata->wq_data_avail\00", [42 x i8] zeroinitializer }, align 32
@cpcap_adc_channels = internal constant { [18 x %struct.iio_chan_spec], [400 x i8] } { [18 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 3080, i32 0, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 3084, i32 1, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 3088, i32 2, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }, %struct.iio_chan_spec { i32 9, i32 3, i32 0, i32 3092, i32 3, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.21, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 3096, i32 4, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.22, i8 64 }, %struct.iio_chan_spec { i32 1, i32 5, i32 0, i32 3100, i32 5, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.23, i8 64 }, %struct.iio_chan_spec { i32 1, i32 6, i32 0, i32 3104, i32 6, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.24, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 3108, i32 7, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.25, i8 64 }, %struct.iio_chan_spec { i32 1, i32 8, i32 0, i32 3080, i32 8, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.26, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 3084, i32 9, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.27, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 3088, i32 10, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.28, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 3092, i32 11, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.29, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 3096, i32 12, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.30, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 3100, i32 13, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.31, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 3104, i32 14, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.32, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 3108, i32 15, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.33, i8 64 }, %struct.iio_chan_spec { i32 0, i32 16, i32 0, i32 3080, i32 16, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.34, i8 64 }, %struct.iio_chan_spec { i32 1, i32 17, i32 0, i32 3084, i32 17, %struct.anon.43 { i8 117, i8 10, i8 16, i8 0, i8 0, i32 0 }, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.35, i8 64 }], [400 x i8] zeroinitializer }, align 32
@cpcap_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cpcap_adc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adcdone\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpcap-adc\00", [22 x i8] zeroinitializer }, align 32
@cpcap_adc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get irq: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@cpcap_adc_probe._entry_ptr.13 = internal global ptr @cpcap_adc_probe._entry.11, section ".printk_index", align 4
@cpcap_adc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1013, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CPCAP ADC device probed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpcap_adc_probe._entry_ptr.17 = internal global ptr @cpcap_adc_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"battdetb\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"battp\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad3\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad4\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chg_isense\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"batti\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb_id\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad8\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ad9\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"licell\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hv_battp\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tsx1_ad12\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tsx2_ad13\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tsy1_ad14\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tsy2_ad15\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chg_vsense\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batti2\00", [25 x i8] zeroinitializer }, align 32
@cpcap_adc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error reading ADC: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpcap_adc_read\00", [17 x i8] zeroinitializer }, align 32
@cpcap_adc_read._entry_ptr = internal global ptr @cpcap_adc_read._entry, section ".printk_index", align 4
@bank_phasing = internal constant { [16 x %struct.cpcap_adc_phasing_tbl], [32 x i8] } { [16 x %struct.cpcap_adc_phasing_tbl] [%struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 -512, i16 511 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 -512, i16 511 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }, %struct.cpcap_adc_phasing_tbl { i16 0, i16 128, i16 128, i16 0, i16 1023 }], [32 x i8] zeroinitializer }, align 32
@bank_conversion = internal global { [16 x %struct.cpcap_adc_conversion_tbl], [96 x i8] } { [16 x %struct.cpcap_adc_conversion_tbl] [%struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 2400, i32 0, i32 2300, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 10000, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 2400, i32 0, i32 2300, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 -512, i32 2, i32 0, i32 5000, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 -512, i32 2, i32 0, i32 5000, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 1, i32 0, i32 0, i32 0, i32 3400, i32 1023 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }, %struct.cpcap_adc_conversion_tbl { i32 0, i32 0, i32 0, i32 0, i32 1, i32 1 }], [96 x i8] zeroinitializer }, align 32
@temp_map = internal constant { [27 x [2 x i32]], [40 x i8] } { [27 x [2 x i32]] [[2 x i32] [i32 1023, i32 -40000], [2 x i32] [i32 1023, i32 -35000], [2 x i32] [i32 1007, i32 -30000], [2 x i32] [i32 946, i32 -25000], [2 x i32] [i32 876, i32 -20000], [2 x i32] [i32 800, i32 -15000], [2 x i32] [i32 720, i32 -10000], [2 x i32] [i32 639, i32 -5000], [2 x i32] [i32 559, i32 0], [2 x i32] [i32 484, i32 5000], [2 x i32] [i32 415, i32 10000], [2 x i32] [i32 353, i32 15000], [2 x i32] [i32 299, i32 20000], [2 x i32] [i32 252, i32 25000], [2 x i32] [i32 212, i32 30000], [2 x i32] [i32 178, i32 35000], [2 x i32] [i32 149, i32 40000], [2 x i32] [i32 125, i32 45000], [2 x i32] [i32 105, i32 50000], [2 x i32] [i32 89, i32 55000], [2 x i32] [i32 75, i32 60000], [2 x i32] [i32 63, i32 65000], [2 x i32] [i32 54, i32 70000], [2 x i32] [i32 46, i32 75000], [2 x i32] [i32 39, i32 80000], [2 x i32] [i32 34, i32 85000], [2 x i32] [i32 29, i32 90000]], [40 x i8] zeroinitializer }, align 32
@cpcap_get_vendor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not read vendor\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpcap_get_vendor\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/linux/mfd/motorola-cpcap.h\00", [61 x i8] zeroinitializer }, align 32
@cpcap_get_vendor._entry_ptr = internal global ptr @cpcap_get_vendor._entry, section ".printk_index", align 4
@cpcap_adc_calibrate_one.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpcap_adc_calibrate_one\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ch%i calibration complete: %i\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpcap_adc_setup_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 456, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Timeout waiting for calibration to complete\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpcap_adc_setup_calibrate\00", [38 x i8] zeroinitializer }, align 32
@cpcap_adc_setup_calibrate._entry_ptr = internal global ptr @cpcap_adc_setup_calibrate._entry, section ".printk_index", align 4
@mapphone_adc = internal constant { %struct.cpcap_adc_ato, [16 x i8] } { %struct.cpcap_adc_ato { i16 1152, i16 0, i16 512, i16 0, i16 0, i16 0, i16 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@switch.table.cpcap_adc_read = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 1, i32 6], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 16, i64 17]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"cpcap_adc_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1018, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1020, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"cpcap_adc_id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 945, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 965, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 975, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 976, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"cpcap_adc_channels\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 356, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"cpcap_adc_info\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 926, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 994, i32 45 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1001, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1003, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1013, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 358, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 359, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 360, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 361, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 362, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 363, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 364, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 365, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 368, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 369, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 370, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 371, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 372, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 373, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 374, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 375, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 378, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 379, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 921, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"bank_phasing\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 220, i32 43 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"bank_conversion\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 246, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"temp_map\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 304, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant [38 x i8] c"../include/linux/mfd/motorola-cpcap.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 284, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 502, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 455, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [13 x i8] c"mapphone_adc\00", align 1
@___asan_gen_.216 = private constant [31 x i8] c"../drivers/iio/adc/cpcap-adc.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 934, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"switch.table.cpcap_adc_read\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_cpcap_adc_driver_exit, ptr @__initcall__kmod_cpcap_adc__188_1026_cpcap_adc_driver_init6, ptr @cpcap_adc_driver_exit, ptr @cpcap_adc_probe._entry, ptr @cpcap_adc_probe._entry.11, ptr @cpcap_adc_probe._entry.14, ptr @cpcap_adc_probe._entry_ptr, ptr @cpcap_adc_probe._entry_ptr.13, ptr @cpcap_adc_probe._entry_ptr.17, ptr @cpcap_adc_read._entry, ptr @cpcap_adc_read._entry_ptr, ptr @cpcap_adc_setup_calibrate._entry, ptr @cpcap_adc_setup_calibrate._entry_ptr, ptr @cpcap_get_vendor._entry, ptr @cpcap_get_vendor._entry_ptr, ptr @cpcap_adc_driver, ptr @.str, ptr @cpcap_adc_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cpcap_adc_probe.__key, ptr @.str.6, ptr @cpcap_adc_probe.__key.7, ptr @.str.8, ptr @cpcap_adc_channels, ptr @cpcap_adc_info, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @bank_phasing, ptr @bank_conversion, ptr @temp_map, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @mapphone_adc, ptr @switch.table.cpcap_adc_read], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_channels to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_phasing to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_conversion to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_map to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_get_vendor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_adc_setup_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mapphone_adc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpcap_adc_read to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 168) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %ato = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ato to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %ato, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev10, align 4
  %lock = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @cpcap_adc_probe.__key) #5
  %wq_data_avail = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wq_data_avail, ptr noundef nonnull @.str.8, ptr noundef nonnull @cpcap_adc_probe.__key.7) #5
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cpcap_adc_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 18, ptr %num_channels, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end8.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %12 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cpcap_adc_info, ptr %info, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %call20 = tail call ptr @dev_get_regmap(ptr noundef %14, ptr noundef null) #5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %1, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %dev_name.exit.cleanup_crit_edge, label %if.end24

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %dev_name.exit
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !122
  %call.i = call i32 @regmap_read(ptr noundef nonnull %call20, i32 noundef 72, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i96 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i96, label %if.end30, label %cpcap_get_vendor.exit

cpcap_get_vendor.exit:                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.38) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %vendor = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %21 = trunc i32 %20 to i16
  %22 = lshr i16 %21, 6
  %conv.i = and i16 %22, 7
  %23 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %vendor, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call31 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #5
  %irq = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call31, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call37 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call31, ptr noundef null, ptr noundef nonnull @cpcap_adc_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.10, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call37) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call.i98 = call fastcc i32 @cpcap_adc_calibrate_one(ptr noundef %1, i32 noundef 5, i16 noundef zeroext 3112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %cpcap_adc_calibrate.exit, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cpcap_adc_calibrate.exit:                         ; preds = %if.end44
  %call1.i = call fastcc i32 @cpcap_adc_calibrate_one(ptr noundef %1, i32 noundef 6, i16 noundef zeroext 3116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool46.not = icmp eq i32 %call1.i, 0
  br i1 %tobool46.not, label %do.end51, label %cpcap_adc_calibrate.exit.cleanup_crit_edge

cpcap_adc_calibrate.exit.cleanup_crit_edge:       ; preds = %cpcap_adc_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end51:                                         ; preds = %cpcap_adc_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  %call54 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %cpcap_adc_calibrate.exit.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end42, %if.end30.cleanup_crit_edge, %cpcap_get_vendor.exit, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call37, %do.end42 ], [ %call54, %do.end51 ], [ -12, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %dev_name.exit.cleanup_crit_edge ], [ %call.i, %cpcap_get_vendor.exit ], [ -19, %if.end30.cleanup_crit_edge ], [ %call1.i, %cpcap_adc_calibrate.exit.cleanup_crit_edge ], [ %call.i98, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_adc_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %done = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %done, align 4
  %wq_data_avail = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wq_data_avail, i32 noundef 1, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_adc_read(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %calibration_data.i = alloca i32, align 4
  %req = alloca %struct.cpcap_adc_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #5
  %2 = getelementptr inbounds %struct.cpcap_adc_request, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cpcap_adc_request, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.cpcap_adc_request, ptr %req, i32 0, i32 3
  %5 = getelementptr inbounds %struct.cpcap_adc_request, ptr %req, i32 0, i32 5
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %req, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 -1, ptr %6, align 4
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %req, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bank_phasing, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bank_conversion, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %9)
  %13 = icmp ult i32 %9, 18
  br i1 %13, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [18 x i32], ptr @switch.table.cpcap_adc_read, i32 0, i32 %9
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %4, align 4
  %16 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %switch.lookup
  %lock = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call2 = call fastcc i32 @cpcap_adc_start_bank(ptr noundef %1, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb.err_unlock_crit_edge

sw.bb.err_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end5:                                          ; preds = %sw.bb
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %address, align 4
  %call6 = tail call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_unlock_crit_edge

if.end5.err_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end9:                                          ; preds = %if.end5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 3072, i32 noundef 65535, i32 noundef 36868, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %cpcap_adc_stop_bank.exit, label %if.end9.err_unlock_crit_edge

if.end9.err_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

cpcap_adc_stop_bank.exit:                         ; preds = %if.end9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3076, i32 noundef 65535, i32 noundef 310, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool11.not = icmp eq i32 %call.i5.i, 0
  br i1 %tobool11.not, label %if.end13, label %cpcap_adc_stop_bank.exit.err_unlock_crit_edge

cpcap_adc_stop_bank.exit.err_unlock_crit_edge:    ; preds = %cpcap_adc_stop_bank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end13:                                         ; preds = %cpcap_adc_stop_bank.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

sw.bb15:                                          ; preds = %switch.lookup
  %lock16 = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock16, i32 noundef 0) #5
  %call17 = call fastcc i32 @cpcap_adc_start_bank(ptr noundef %1, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb15.err_unlock_crit_edge

sw.bb15.err_unlock_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end20:                                         ; preds = %sw.bb15
  %vendor = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp = icmp eq i16 %26, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp23 = icmp eq i32 %28, 3
  br i1 %cmp23, label %if.then25, label %if.else.thread

if.else.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calibration_data.i) #5
  %29 = ptrtoint ptr %calibration_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %calibration_data.i, align 4, !annotation !122
  br label %if.end14.i

if.then25:                                        ; preds = %land.lhs.true
  %address26 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %30 = ptrtoint ptr %address26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %address26, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %31, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i73 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i73, label %cpcap_adc_read_st_die_temp.exit.thread, label %if.then25.err_unlock_crit_edge

if.then25.err_unlock_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

cpcap_adc_read_st_die_temp.exit.thread:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 4
  %36 = mul i32 %35, 114
  %add.i = add i32 %36, -7148
  store i32 %add.i, ptr %5, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %calibration_data.i) #5
  %37 = ptrtoint ptr %calibration_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %calibration_data.i, align 4, !annotation !122
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp.i = icmp eq i16 %26, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end14.i_crit_edge

if.else.if.end14.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then.i:                                        ; preds = %if.else
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i75 = call i32 @regmap_read(ptr noundef %39, i32 noundef 3112, ptr noundef nonnull %calibration_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %if.end.i78, label %if.then.i.cpcap_adc_read_bank_scaled.exit_crit_edge

if.then.i.cpcap_adc_read_bank_scaled.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_read_bank_scaled.exit

if.end.i78:                                       ; preds = %if.then.i
  %40 = ptrtoint ptr %calibration_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %calibration_data.i, align 4
  %sext.i = shl i32 %41, 16
  %conv4.i = ashr exact i32 %sext.i, 16
  %add.i77 = sub nsw i32 512, %conv4.i
  store i32 %add.i77, ptr getelementptr inbounds ([16 x %struct.cpcap_adc_conversion_tbl], ptr @bank_conversion, i32 0, i32 5, i32 3), align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 3116, ptr noundef nonnull %calibration_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i78.cpcap_adc_read_bank_scaled.exit_crit_edge

if.end.i78.cpcap_adc_read_bank_scaled.exit_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_read_bank_scaled.exit

if.end9.i:                                        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %calibration_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %calibration_data.i, align 4
  %sext37.i = shl i32 %45, 16
  %conv11.i = ashr exact i32 %sext37.i, 16
  %add13.i = sub nsw i32 512, %conv11.i
  store i32 %add13.i, ptr getelementptr inbounds ([16 x %struct.cpcap_adc_conversion_tbl], ptr @bank_conversion, i32 0, i32 6, i32 3), align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end9.i, %if.else.if.end14.i_crit_edge, %if.else.thread
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %4, align 4
  %mul15.i = shl i32 %47, 2
  %add16.i = add i32 %mul15.i, 3080
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %49, i32 noundef %add16.i, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end14.i.cpcap_adc_read_bank_scaled.exit_crit_edge

if.end14.i.cpcap_adc_read_bank_scaled.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_read_bank_scaled.exit

if.end21.i:                                       ; preds = %if.end14.i
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %and.i = and i32 %51, 1023
  store i32 %and.i, ptr %5, align 4
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 4
  %56 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %req, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %57, label %if.end21.i.sw.default.i.i_crit_edge [
    i32 1, label %if.end21.i.sw.bb.i.i_crit_edge
    i32 16, label %if.end21.i.sw.bb.i.i_crit_edge120
    i32 17, label %sw.bb17.i.i
  ]

if.end21.i.sw.bb.i.i_crit_edge120:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.end21.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.end21.i.sw.default.i.i_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end21.i.sw.bb.i.i_crit_edge, %if.end21.i.sw.bb.i.i_crit_edge120
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %4, align 4
  %arrayidx.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = sext i16 %62 to i32
  %sub.i.i = sub nsw i32 %and.i, %conv.i.i
  %sub5.i.i = add nsw i32 %sub.i.i, -801
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub5.i.i, ptr %5, align 4
  %multiplier.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %60, i32 1
  %64 = ptrtoint ptr %multiplier.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %multiplier.i.i, align 2
  %conv7.i.i = zext i16 %65 to i32
  %mul.i.i = mul i32 %sub5.i.i, %conv7.i.i
  store i32 %mul.i.i, ptr %5, align 4
  %divider.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %60, i32 2
  %66 = ptrtoint ptr %divider.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %divider.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i.i = icmp eq i16 %67, 0
  br i1 %cmp.i.i, label %sw.bb.i.i.cpcap_adc_phase.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.i.cpcap_adc_phase.exit.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_phase.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv10.i.i = zext i16 %67 to i32
  %div.i.i = sdiv i32 %mul.i.i, %conv10.i.i
  %add.i.i = add i32 %div.i.i, 801
  br label %sw.epilog.i.i

sw.bb17.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %4, align 4
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %sw.bb17.i.i, %if.end21.i.sw.default.i.i_crit_edge
  %index.0.i.i = phi i32 [ %57, %if.end21.i.sw.default.i.i_crit_edge ], [ %69, %sw.bb17.i.i ]
  %cal_offset.i.i = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %53, i32 %index.0.i.i, i32 3
  %70 = ptrtoint ptr %cal_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cal_offset.i.i, align 4
  %add21.i.i = add i32 %71, %and.i
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add21.i.i, ptr %5, align 4
  %align_offset.i.i = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %53, i32 %index.0.i.i, i32 1
  %73 = ptrtoint ptr %align_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %align_offset.i.i, align 4
  %add24.i.i = add i32 %74, %add21.i.i
  store i32 %add24.i.i, ptr %5, align 4
  %multiplier26.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %index.0.i.i, i32 1
  %75 = ptrtoint ptr %multiplier26.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %multiplier26.i.i, align 2
  %conv27.i.i = zext i16 %76 to i32
  %mul29.i.i = mul i32 %add24.i.i, %conv27.i.i
  store i32 %mul29.i.i, ptr %5, align 4
  %divider31.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %index.0.i.i, i32 2
  %77 = ptrtoint ptr %divider31.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %divider31.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp33.i.i = icmp eq i16 %78, 0
  br i1 %cmp33.i.i, label %sw.default.i.i.cpcap_adc_phase.exit.i_crit_edge, label %if.end36.i.i

sw.default.i.i.cpcap_adc_phase.exit.i_crit_edge:  ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_phase.exit.i

if.end36.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv32.i.i = zext i16 %78 to i32
  %arrayidx25.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %index.0.i.i
  %div41.i.i = sdiv i32 %mul29.i.i, %conv32.i.i
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div41.i.i, ptr %5, align 4
  %80 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx25.i.i, align 2
  %conv44.i.i = sext i16 %81 to i32
  %add46.i.i = add i32 %div41.i.i, %conv44.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end36.i.i, %if.end.i.i
  %storemerge.i = phi i32 [ %add46.i.i, %if.end36.i.i ], [ %add.i.i, %if.end.i.i ]
  %index.1.i.i = phi i32 [ %index.0.i.i, %if.end36.i.i ], [ %60, %if.end.i.i ]
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge.i, ptr %5, align 4
  %min.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %index.1.i.i, i32 3
  %83 = ptrtoint ptr %min.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %min.i.i, align 2
  %conv49.i.i = sext i16 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %conv49.i.i)
  %cmp50.i.i = icmp slt i32 %storemerge.i, %conv49.i.i
  br i1 %cmp50.i.i, label %sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else.i.i

sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.else.i.i:                                      ; preds = %sw.epilog.i.i
  %max.i.i = getelementptr %struct.cpcap_adc_phasing_tbl, ptr %55, i32 %index.1.i.i, i32 4
  %85 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %max.i.i, align 2
  %conv59.i.i = sext i16 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %conv59.i.i)
  %cmp60.i.i = icmp sgt i32 %storemerge.i, %conv59.i.i
  br i1 %cmp60.i.i, label %if.else.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else.i.i.cpcap_adc_phase.exit.i_crit_edge

if.else.i.i.cpcap_adc_phase.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_phase.exit.i

if.else.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else.i.i.cleanup.sink.split.i.i_crit_edge, %sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge
  %conv49.sink.i.i = phi i32 [ %conv49.i.i, %sw.epilog.i.i.cleanup.sink.split.i.i_crit_edge ], [ %conv59.i.i, %if.else.i.i.cleanup.sink.split.i.i_crit_edge ]
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv49.sink.i.i, ptr %5, align 4
  br label %cpcap_adc_phase.exit.i

cpcap_adc_phase.exit.i:                           ; preds = %cleanup.sink.split.i.i, %if.else.i.i.cpcap_adc_phase.exit.i_crit_edge, %sw.default.i.i.cpcap_adc_phase.exit.i_crit_edge, %sw.bb.i.i.cpcap_adc_phase.exit.i_crit_edge
  %88 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %57, label %cpcap_adc_phase.exit.i.sw.epilog.i43.i_crit_edge [
    i32 16, label %sw.bb.i39.i
    i32 17, label %sw.bb3.i.i
  ]

cpcap_adc_phase.exit.i.sw.epilog.i43.i_crit_edge: ; preds = %cpcap_adc_phase.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i43.i

sw.bb.i39.i:                                      ; preds = %cpcap_adc_phase.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i43.i

sw.bb3.i.i:                                       ; preds = %cpcap_adc_phase.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i43.i

sw.epilog.i43.i:                                  ; preds = %sw.bb3.i.i, %sw.bb.i39.i, %cpcap_adc_phase.exit.i.sw.epilog.i43.i_crit_edge
  %index.0.i40.i = phi i32 [ %57, %cpcap_adc_phase.exit.i.sw.epilog.i43.i_crit_edge ], [ 6, %sw.bb3.i.i ], [ 1, %sw.bb.i39.i ]
  %arrayidx.i41.i = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %53, i32 %index.0.i40.i
  %89 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i42.i = icmp eq i32 %90, 0
  br i1 %cmp.i42.i, label %sw.epilog.i43.i.cpcap_adc_read_bank_scaled.exit.thread_crit_edge, label %if.end.i44.i

sw.epilog.i43.i.cpcap_adc_read_bank_scaled.exit.thread_crit_edge: ; preds = %sw.epilog.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_read_bank_scaled.exit.thread

if.end.i44.i:                                     ; preds = %sw.epilog.i43.i
  %91 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %57, label %if.end10.i.i [
    i32 0, label %if.end.i44.i.if.then8.i.i_crit_edge
    i32 3, label %if.end.i44.i.if.then8.i.i_crit_edge121
  ]

if.end.i44.i.if.then8.i.i_crit_edge121:           ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i.i

if.end.i44.i.if.then8.i.i_crit_edge:              ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i44.i.if.then8.i.i_crit_edge, %if.end.i44.i.if.then8.i.i_crit_edge121
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %5, align 4
  %conv.i46.i = trunc i32 %93 to i16
  %conv.i.i.i = and i32 %93, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %conv.i46.i)
  %cmp.i.i.i = icmp ult i16 %conv.i46.i, 30
  br i1 %cmp.i.i.i, label %if.then8.i.i.cleanup.sink.split.i_crit_edge, label %if.end.i.i.i

if.then8.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1022, i16 %conv.i46.i)
  %cmp3.i.i.i = icmp ugt i16 %conv.i46.i, 1022
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.cleanup.sink.split.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %i.085.i.i.i = phi i32 [ %.pre.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %i.085.i.i.i
  %94 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %95)
  %cmp11.not.i.i.i = icmp sgt i32 %conv.i.i.i, %95
  %.pre.i.i.i = add nuw nsw i32 %i.085.i.i.i, 1
  br i1 %cmp11.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %arrayidx14.i.i.i = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %.pre.i.i.i
  %96 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx14.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %conv.i.i.i)
  %cmp16.not.i.i.i = icmp sgt i32 %97, %conv.i.i.i
  br i1 %cmp16.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %if.then18.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.then18.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %95)
  %cmp22.i.i.i = icmp eq i32 %conv.i.i.i, %95
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %if.else.i.i.i

if.then24.i.i.i:                                  ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx26.i.i.i = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %i.085.i.i.i, i32 1
  %98 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx26.i.i.i, align 4
  br label %cleanup.sink.split.i

if.else.i.i.i:                                    ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %conv.i.i.i)
  %cmp31.i.i.i = icmp eq i32 %97, %conv.i.i.i
  br i1 %cmp31.i.i.i, label %if.then33.i.i.i, label %if.else37.i.i.i

if.then33.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx36.i.i.i = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %.pre.i.i.i, i32 1
  %100 = ptrtoint ptr %arrayidx36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx36.i.i.i, align 4
  br label %cleanup.sink.split.i

if.else37.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = sub i32 %conv.i.i.i, %95
  %mul.i.i.i = mul i32 %sub.i.i.i, 1000
  %sub46.i.i.i = sub i32 %97, %95
  %div.i.i.i = sdiv i32 %mul.i.i.i, %sub46.i.i.i
  %arrayidx48.i.i.i = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %i.085.i.i.i, i32 1
  %102 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx48.i.i.i, align 4
  %arrayidx51.i.i.i = getelementptr [27 x [2 x i32]], ptr @temp_map, i32 0, i32 %.pre.i.i.i, i32 1
  %104 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx51.i.i.i, align 4
  %sub54.i.i.i = sub i32 %105, %103
  %mul55.i.i.i = mul i32 %sub54.i.i.i, %div.i.i.i
  %div56.i.i.i = sdiv i32 %mul55.i.i.i, 1000
  %add57.i.i.i = add i32 %div56.i.i.i, %103
  br label %cleanup.sink.split.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %exitcond.not.i.i.i = icmp eq i32 %.pre.i.i.i, 26
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.cleanup.sink.split.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end10.i.i:                                     ; preds = %if.end.i44.i
  %multiplier.i47.i = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %53, i32 %index.0.i40.i, i32 4
  %106 = ptrtoint ptr %multiplier.i47.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %multiplier.i47.i, align 4
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %5, align 4
  %mul.i48.i = mul i32 %109, %107
  store i32 %mul.i48.i, ptr %5, align 4
  %divider.i49.i = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %53, i32 %index.0.i40.i, i32 5
  %110 = ptrtoint ptr %divider.i49.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %divider.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp14.i.i = icmp eq i32 %111, 0
  br i1 %cmp14.i.i, label %if.end10.i.i.cpcap_adc_read_bank_scaled.exit.thread_crit_edge, label %if.end17.i.i

if.end10.i.i.cpcap_adc_read_bank_scaled.exit.thread_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_read_bank_scaled.exit.thread

if.end17.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.i50.i = sdiv i32 %mul.i48.i, %111
  %112 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div.i50.i, ptr %5, align 4
  %conv_offset.i.i = getelementptr %struct.cpcap_adc_conversion_tbl, ptr %53, i32 %index.0.i40.i, i32 2
  %113 = ptrtoint ptr %conv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %conv_offset.i.i, align 4
  %add.i51.i = add i32 %114, %div.i50.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end17.i.i, %for.inc.i.i.i.cleanup.sink.split.i_crit_edge, %if.else37.i.i.i, %if.then33.i.i.i, %if.then24.i.i.i, %if.end.i.i.i.cleanup.sink.split.i_crit_edge, %if.then8.i.i.cleanup.sink.split.i_crit_edge
  %add.i51.sink.i = phi i32 [ %add.i51.i, %if.end17.i.i ], [ 90000, %if.then8.i.i.cleanup.sink.split.i_crit_edge ], [ -40000, %if.end.i.i.i.cleanup.sink.split.i_crit_edge ], [ %99, %if.then24.i.i.i ], [ %101, %if.then33.i.i.i ], [ %add57.i.i.i, %if.else37.i.i.i ], [ 0, %for.inc.i.i.i.cleanup.sink.split.i_crit_edge ]
  %115 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add.i51.sink.i, ptr %5, align 4
  br label %cpcap_adc_read_bank_scaled.exit.thread

cpcap_adc_read_bank_scaled.exit.thread:           ; preds = %cleanup.sink.split.i, %if.end10.i.i.cpcap_adc_read_bank_scaled.exit.thread_crit_edge, %sw.epilog.i43.i.cpcap_adc_read_bank_scaled.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calibration_data.i) #5
  br label %if.end35

cpcap_adc_read_bank_scaled.exit:                  ; preds = %if.end14.i.cpcap_adc_read_bank_scaled.exit_crit_edge, %if.end.i78.cpcap_adc_read_bank_scaled.exit_crit_edge, %if.then.i.cpcap_adc_read_bank_scaled.exit_crit_edge
  %retval.0.i80 = phi i32 [ %call.i75, %if.then.i.cpcap_adc_read_bank_scaled.exit_crit_edge ], [ %call6.i, %if.end.i78.cpcap_adc_read_bank_scaled.exit_crit_edge ], [ %call18.i, %if.end14.i.cpcap_adc_read_bank_scaled.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %calibration_data.i) #5
  br label %err_unlock

if.end35:                                         ; preds = %cpcap_adc_read_bank_scaled.exit.thread, %cpcap_adc_read_st_die_temp.exit.thread
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %call.i.i81 = call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 3072, i32 noundef 65535, i32 noundef 36868, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool.not.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %tobool.not.i82, label %cpcap_adc_stop_bank.exit86, label %if.end35.err_unlock_crit_edge

if.end35.err_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

cpcap_adc_stop_bank.exit86:                       ; preds = %if.end35
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i5.i83 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 3076, i32 noundef 65535, i32 noundef 310, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i83)
  %tobool37.not = icmp eq i32 %call.i5.i83, 0
  br i1 %tobool37.not, label %if.end39, label %cpcap_adc_stop_bank.exit86.err_unlock_crit_edge

cpcap_adc_stop_bank.exit86.err_unlock_crit_edge:  ; preds = %cpcap_adc_stop_bank.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end39:                                         ; preds = %cpcap_adc_stop_bank.exit86
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %lock16) #5
  %120 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %5, align 4
  %122 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %val, align 4
  br label %cleanup

err_unlock:                                       ; preds = %cpcap_adc_stop_bank.exit86.err_unlock_crit_edge, %if.end35.err_unlock_crit_edge, %cpcap_adc_read_bank_scaled.exit, %if.then25.err_unlock_crit_edge, %sw.bb15.err_unlock_crit_edge, %cpcap_adc_stop_bank.exit.err_unlock_crit_edge, %if.end9.err_unlock_crit_edge, %if.end5.err_unlock_crit_edge, %sw.bb.err_unlock_crit_edge
  %error.0 = phi i32 [ %call17, %sw.bb15.err_unlock_crit_edge ], [ %call.i5.i83, %cpcap_adc_stop_bank.exit86.err_unlock_crit_edge ], [ %retval.0.i80, %cpcap_adc_read_bank_scaled.exit ], [ %call2, %sw.bb.err_unlock_crit_edge ], [ %call6, %if.end5.err_unlock_crit_edge ], [ %call.i5.i, %cpcap_adc_stop_bank.exit.err_unlock_crit_edge ], [ %call.i, %if.then25.err_unlock_crit_edge ], [ %call.i.i, %if.end9.err_unlock_crit_edge ], [ %call.i.i81, %if.end35.err_unlock_crit_edge ]
  %lock42 = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %lock42) #5
  %dev = getelementptr inbounds %struct.cpcap_adc, ptr %1, i32 0, i32 1
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.36, i32 noundef %error.0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %if.end39, %if.end13, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_unlock ], [ -22, %switch.lookup.cleanup_crit_edge ], [ 1, %if.end39 ], [ 1, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_adc_start_bank(ptr noundef %ddata, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.cpcap_adc_request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timing, align 4
  %done = getelementptr inbounds %struct.cpcap_adc, ptr %ddata, i32 0, i32 7
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %done, align 4
  %ato1.i = getelementptr inbounds %struct.cpcap_adc, ptr %ddata, i32 0, i32 5
  %wq_data_avail = getelementptr inbounds %struct.cpcap_adc, ptr %ddata, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %if.end44
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond.cleanup52_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup52_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.092 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %ato1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ato1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.cpcap_adc_setup_bank.exit_crit_edge, label %if.end.i

for.body.cpcap_adc_setup_bank.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_setup_bank.exit

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 8, label %if.end.i.sw.bb7.i_crit_edge
    i32 9, label %if.end.i.sw.bb7.i_crit_edge103
    i32 10, label %if.end.i.sw.bb7.i_crit_edge104
    i32 11, label %if.end.i.sw.bb7.i_crit_edge105
    i32 12, label %if.end.i.sw.bb7.i_crit_edge106
    i32 13, label %if.end.i.sw.bb7.i_crit_edge107
    i32 14, label %if.end.i.sw.bb7.i_crit_edge108
    i32 15, label %if.end.i.sw.bb7.i_crit_edge109
    i32 16, label %if.end.i.sw.bb11.i_crit_edge
    i32 17, label %if.end.i.sw.bb11.i_crit_edge110
  ]

if.end.i.sw.bb11.i_crit_edge110:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

if.end.i.sw.bb11.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

if.end.i.sw.bb7.i_crit_edge109:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge108:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge107:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge106:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge105:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge104:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge103:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %7 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddata, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 3076, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %sw.bb.i.cpcap_adc_setup_bank.exit_crit_edge

sw.bb.i.cpcap_adc_setup_bank.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_setup_bank.exit

if.end6.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #5
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i.sw.bb7.i_crit_edge, %if.end.i.sw.bb7.i_crit_edge103, %if.end.i.sw.bb7.i_crit_edge104, %if.end.i.sw.bb7.i_crit_edge105, %if.end.i.sw.bb7.i_crit_edge106, %if.end.i.sw.bb7.i_crit_edge107, %if.end.i.sw.bb7.i_crit_edge108, %if.end.i.sw.bb7.i_crit_edge109
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i.sw.bb11.i_crit_edge, %if.end.i.sw.bb11.i_crit_edge110
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb7.i, %if.end6.i, %if.end.i.sw.epilog.i_crit_edge
  %value1.0.i = phi i16 [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ 4, %sw.bb11.i ], [ 8, %sw.bb7.i ], [ 0, %if.end6.i ]
  %value2.0.i = phi i16 [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb11.i ], [ 0, %sw.bb7.i ], [ 64, %if.end6.i ]
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timing, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %10, label %sw.epilog.i.sw.epilog51.i_crit_edge [
    i32 1, label %sw.bb15.i
    i32 2, label %sw.bb32.i
  ]

sw.epilog.i.sw.epilog51.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog51.i

sw.bb15.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 2
  %or18130.i = or i16 %13, %value1.0.i
  %atox_in.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %atox_in.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %atox_in.i, align 2
  %or22131.i = or i16 %or18130.i, %15
  %adc_ps_factor_in.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 2
  %atox_ps_factor_in.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 3
  br label %sw.epilog51.sink.split.i

sw.bb32.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %ato_out.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %ato_out.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ato_out.i, align 2
  %or35126.i = or i16 %17, %value1.0.i
  %atox_out.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %atox_out.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %atox_out.i, align 2
  %or39127.i = or i16 %or35126.i, %19
  %adc_ps_factor_out.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 6
  %atox_ps_factor_out.i = getelementptr inbounds %struct.cpcap_adc_ato, ptr %3, i32 0, i32 7
  br label %sw.epilog51.sink.split.i

sw.epilog51.sink.split.i:                         ; preds = %sw.bb32.i, %sw.bb15.i
  %atox_ps_factor_out.sink.i = phi ptr [ %atox_ps_factor_out.i, %sw.bb32.i ], [ %atox_ps_factor_in.i, %sw.bb15.i ]
  %.pn.in.i = phi ptr [ %adc_ps_factor_out.i, %sw.bb32.i ], [ %adc_ps_factor_in.i, %sw.bb15.i ]
  %value1.1.ph.i = phi i16 [ %or39127.i, %sw.bb32.i ], [ %or22131.i, %sw.bb15.i ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %.pn.i = load i16, ptr %.pn.in.i, align 2
  %or43128.sink.i = or i16 %.pn.i, %value2.0.i
  %21 = ptrtoint ptr %atox_ps_factor_out.sink.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %atox_ps_factor_out.sink.i, align 2
  %or47129.i = or i16 %or43128.sink.i, %22
  br label %sw.epilog51.i

sw.epilog51.i:                                    ; preds = %sw.epilog51.sink.split.i, %sw.epilog.i.sw.epilog51.i_crit_edge
  %value1.1.i = phi i16 [ %value1.0.i, %sw.epilog.i.sw.epilog51.i_crit_edge ], [ %value1.1.ph.i, %sw.epilog51.sink.split.i ]
  %value2.1.i = phi i16 [ %value2.0.i, %sw.epilog.i.sw.epilog51.i_crit_edge ], [ %or47129.i, %sw.epilog51.sink.split.i ]
  %23 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddata, align 4
  %conv53.i = zext i16 %value1.1.i to i32
  %call.i134.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3072, i32 noundef 20478, i32 noundef %conv53.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %tobool55.not.i = icmp eq i32 %call.i134.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %sw.epilog51.i.cpcap_adc_setup_bank.exit_crit_edge

sw.epilog51.i.cpcap_adc_setup_bank.exit_crit_edge: ; preds = %sw.epilog51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_setup_bank.exit

if.end57.i:                                       ; preds = %sw.epilog51.i
  %25 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddata, align 4
  %conv59.i = zext i16 %value2.1.i to i32
  %call.i135.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 3076, i32 noundef 3648, i32 noundef %conv59.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %tobool61.not.i = icmp eq i32 %call.i135.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end57.i.cpcap_adc_setup_bank.exit_crit_edge

if.end57.i.cpcap_adc_setup_bank.exit_crit_edge:   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_setup_bank.exit

if.end63.i:                                       ; preds = %if.end57.i
  %27 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddata, align 4
  br i1 %cmp.i, label %if.then66.i, label %if.else.i

if.then66.i:                                      ; preds = %if.end63.i
  %call.i136.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 3076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool69.not.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.then66.i.cpcap_adc_setup_bank.exit_crit_edge

if.then66.i.cpcap_adc_setup_bank.exit_crit_edge:  ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_setup_bank.exit

if.end71.i:                                       ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddata, align 4
  %call.i137.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 3076, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cpcap_adc_setup_bank.exit

if.else.i:                                        ; preds = %if.end63.i
  %call.i138.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 3076, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool79.not.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %if.else.i.cpcap_adc_setup_bank.exit_crit_edge

if.else.i.cpcap_adc_setup_bank.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpcap_adc_setup_bank.exit

if.end81.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddata, align 4
  %call.i139.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 3076, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cpcap_adc_setup_bank.exit

cpcap_adc_setup_bank.exit:                        ; preds = %if.end81.i, %if.else.i.cpcap_adc_setup_bank.exit_crit_edge, %if.end71.i, %if.then66.i.cpcap_adc_setup_bank.exit_crit_edge, %if.end57.i.cpcap_adc_setup_bank.exit_crit_edge, %sw.epilog51.i.cpcap_adc_setup_bank.exit_crit_edge, %sw.bb.i.cpcap_adc_setup_bank.exit_crit_edge, %for.body.cpcap_adc_setup_bank.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 642) #5
  %35 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %done, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.not = icmp eq i8 %36, 0
  br i1 %tobool.not.not, label %if.then10, label %cpcap_adc_setup_bank.exit.cleanup52_crit_edge

cpcap_adc_setup_bank.exit.cleanup52_crit_edge:    ; preds = %cpcap_adc_setup_bank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.then10:                                        ; preds = %cpcap_adc_setup_bank.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call1486 = call i32 @prepare_to_wait_event(ptr noundef %wq_data_avail, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %38 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %done, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool17.not87.not = icmp eq i8 %39, 0
  br i1 %tobool17.not87.not, label %if.then10.if.end33_crit_edge, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then10.if.end33_crit_edge:                     ; preds = %if.then10
  br label %if.end33

if.end33:                                         ; preds = %cleanup.if.end33_crit_edge, %if.then10.if.end33_crit_edge
  %__ret11.190 = phi i32 [ %__ret11.1, %cleanup.if.end33_crit_edge ], [ 5, %if.then10.if.end33_crit_edge ]
  %call1489 = phi i32 [ %call14, %cleanup.if.end33_crit_edge ], [ %call1486, %if.then10.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1489)
  %tobool34.not = icmp eq i32 %call1489, 0
  br i1 %tobool34.not, label %cleanup, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

cleanup:                                          ; preds = %if.end33
  %call37 = call i32 @schedule_timeout(i32 noundef %__ret11.190) #5
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wq_data_avail, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %40 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %done, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool17.not = icmp eq i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool21.not = icmp eq i32 %call37, 0
  %spec.store.select54 = select i1 %tobool21.not, i32 1, i32 %call37
  %__ret11.1 = select i1 %tobool17.not, i32 %call37, i32 %spec.store.select54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1)
  %tobool27.not = icmp eq i32 %__ret11.1, 0
  %not.tobool17.not = xor i1 %tobool17.not, true
  %42 = select i1 %not.tobool17.not, i1 true, i1 %tobool27.not
  br i1 %42, label %cleanup.for.end_crit_edge, label %cleanup.if.end33_crit_edge

cleanup.if.end33_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  %__ret11.1.lcssa = phi i32 [ 5, %if.then10.for.end_crit_edge ], [ %__ret11.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wq_data_avail, ptr noundef nonnull %__wq_entry) #5
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.end33.if.end40_crit_edge
  %__ret11.276 = phi i32 [ %__ret11.1.lcssa, %for.end ], [ %call1489, %if.end33.if.end40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.276)
  %cmp42 = icmp sgt i32 %__ret11.276, 0
  br i1 %cmp42, label %if.end40.cleanup52_crit_edge, label %if.end44

if.end40.cleanup52_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.276)
  %cmp45 = icmp eq i32 %__ret11.276, 0
  br i1 %cmp45, label %for.cond, label %if.end44.cleanup52_crit_edge

if.end44.cleanup52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

cleanup52:                                        ; preds = %if.end44.cleanup52_crit_edge, %if.end40.cleanup52_crit_edge, %cpcap_adc_setup_bank.exit.cleanup52_crit_edge, %for.cond.cleanup52_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40.cleanup52_crit_edge ], [ %__ret11.276, %if.end44.cleanup52_crit_edge ], [ -110, %for.cond.cleanup52_crit_edge ], [ 0, %cpcap_adc_setup_bank.exit.cleanup52_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_adc_calibrate_one(ptr nocapture noundef readonly %ddata, i32 noundef %channel, i16 noundef zeroext %calibration_register) unnamed_addr #2 align 64 {
entry:
  %calibration_data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %calibration_data) #5
  %0 = getelementptr inbounds [2 x i32], ptr %calibration_data, i32 0, i32 1
  %conv = zext i16 %calibration_register to i32
  %vendor = getelementptr inbounds %struct.cpcap_adc, ptr %ddata, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %if.end49.for.body_crit_edge ]
  %1 = ptrtoint ptr %calibration_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %calibration_data, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  call fastcc void @cpcap_adc_setup_calibrate(ptr noundef %ddata, i32 noundef %channel)
  %3 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddata, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %calibration_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call fastcc void @cpcap_adc_setup_calibrate(ptr noundef %ddata, i32 noundef %channel)
  %5 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddata, align 4
  %call6 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv, ptr noundef %0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %calibration_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %calibration_data, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp12 = icmp ugt i32 %8, %10
  %sub = sub i32 %8, %10
  %sub20 = sub i32 %10, %8
  %cal_data_diff.0.in = select i1 %cmp12, i32 %sub, i32 %sub20
  %11 = add i32 %10, -494
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %11)
  %12 = icmp ult i32 %11, 37
  %conv30 = and i32 %cal_data_diff.0.in, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30)
  %cmp31 = icmp eq i32 %conv30, 0
  %or.cond1 = select i1 %12, i1 %cmp31, i1 false
  br i1 %or.cond1, label %if.end9.if.then36_crit_edge, label %lor.lhs.false

if.end9.if.then36_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end9
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp34 = icmp eq i16 %14, 1
  br i1 %cmp34, label %lor.lhs.false.if.then36_crit_edge, label %if.end49

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end9.if.then36_crit_edge
  %sext = shl i32 %10, 16
  %conv39 = ashr exact i32 %sext, 16
  %add = sub nsw i32 512, %conv39
  %cal_offset = getelementptr [16 x %struct.cpcap_adc_conversion_tbl], ptr @bank_conversion, i32 0, i32 %channel, i32 3
  %15 = ptrtoint ptr %cal_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %cal_offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_adc_calibrate_one.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpcap_adc_calibrate_one, %if.then45)) #5
          to label %cleanup [label %if.then45], !srcloc !124

if.then45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.cpcap_adc, ptr %ddata, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %cal_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cal_offset, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_adc_calibrate_one.__UNIQUE_ID_ddebug187, ptr noundef %17, ptr noundef nonnull @.str.42, i32 noundef %channel, i32 noundef %19) #5
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %if.end49.cleanup_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end49.cleanup_crit_edge, %if.then45, %if.then36, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then45 ], [ 0, %if.then36 ], [ 0, %if.end49.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %calibration_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpcap_adc_setup_calibrate(ptr nocapture noundef readonly %ddata, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %shl = shl i32 %chan, 4
  %and = and i32 %shl, 112
  %or2 = or i32 %and, 16386
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or2, ptr %value, align 4
  %2 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddata, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3072, i32 noundef 20478, i32 noundef %or2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddata, align 4
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 3076, i32 noundef 3584, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool8.not = icmp eq i32 %call.i57, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddata, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool13.not = icmp eq i32 %call.i58, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddata, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 3076, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool18.not = icmp eq i32 %call.i59, 0
  br i1 %tobool18.not, label %do.body.preheader, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.preheader:                                ; preds = %if.end15
  %add.neg = sub i32 -300, %0
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %call21 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #5
  %10 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddata, align 4
  %call23 = call i32 @regmap_read(ptr noundef %11, i32 noundef 3076, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.cond, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 4
  %and27 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.cond.if.end36_crit_edge, label %land.rhs

do.cond.if.end36_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.rhs:                                         ; preds = %do.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  %cmp29 = icmp slt i32 %sub, 0
  br i1 %cmp29, label %land.rhs.do.body_crit_edge, label %do.end35

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end35:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.cpcap_adc, ptr %ddata, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.43) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %do.cond.if.end36_crit_edge
  %17 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddata, align 4
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 3072, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.body.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_cpcap_adc__188_1026_cpcap_adc_driver_init6, !1, !"__initcall__kmod_cpcap_adc__188_1026_cpcap_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1026, i32 1}
!2 = !{ptr @__exitcall_cpcap_adc_driver_exit, !1, !"__exitcall_cpcap_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias189, !4, !"__UNIQUE_ID_alias189", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1028, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1029, i32 1}
!7 = !{ptr @__UNIQUE_ID_author191, !8, !"__UNIQUE_ID_author191", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1030, i32 1}
!9 = !{ptr @__UNIQUE_ID_file192, !10, !"__UNIQUE_ID_file192", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1031, i32 1}
!11 = !{ptr @__UNIQUE_ID_license193, !10, !"__UNIQUE_ID_license193", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1020, i32 11}
!14 = !{ptr @cpcap_adc_driver, !15, !"cpcap_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1018, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 965, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cpcap_adc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cpcap_adc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cpcap_adc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 975, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cpcap_adc_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 976, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 994, i32 45}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1001, i32 8}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1003, i32 3}
!36 = !{ptr @cpcap_adc_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cpcap_adc_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 1013, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cpcap_adc_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cpcap_adc_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 358, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 359, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 360, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 361, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 362, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 363, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 364, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 365, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 368, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 369, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 370, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 371, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 372, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 373, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 374, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 375, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 378, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 379, i32 2}
!79 = !{ptr @cpcap_adc_channels, !80, !"cpcap_adc_channels", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 356, i32 35}
!81 = !{ptr @cpcap_adc_info, !82, !"cpcap_adc_info", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 926, i32 30}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 921, i32 2}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cpcap_adc_read._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @cpcap_adc_read._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @bank_phasing, !89, !"bank_phasing", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 220, i32 43}
!90 = !{ptr @bank_conversion, !91, !"bank_conversion", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 246, i32 40}
!92 = !{ptr @temp_map, !93, !"temp_map", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 304, i32 18}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/mfd/motorola-cpcap.h", i32 284, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cpcap_get_vendor._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @cpcap_get_vendor._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 502, i32 4}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cpcap_adc_calibrate_one.__UNIQUE_ID_ddebug187, !101, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 455, i32 3}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cpcap_adc_setup_calibrate._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @cpcap_adc_setup_calibrate._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @cpcap_adc_id_table, !110, !"cpcap_adc_id_table", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 945, i32 34}
!111 = !{ptr @mapphone_adc, !112, !"mapphone_adc", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/cpcap-adc.c", i32 934, i32 35}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{i8 0, i8 2}
!124 = !{i64 2148782145, i64 2148782150, i64 2148782163, i64 2148782207, i64 2148782241, i64 2148782262}
