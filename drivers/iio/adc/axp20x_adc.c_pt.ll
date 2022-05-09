; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/axp20x_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/axp20x_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.axp_data = type { ptr, i32, ptr, i32, ptr, i8, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.axp20x_adc_iio = type { ptr, ptr }

@__initcall__kmod_axp20x_adc__188_773_axp20x_adc_driver_init6 = internal global ptr @axp20x_adc_driver_init, section ".initcall6.init", align 4
@axp20x_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp20x_probe, ptr @axp20x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp20x_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @axp20x_adc_id_match, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axp20x_adc_driver_exit = internal global ptr @axp20x_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [62 x i8] c"axp20x_adc.description=ADC driver for AXP20X and AXP22X PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [69 x i8] c"axp20x_adc.author=Quentin Schulz <quentin.schulz@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [43 x i8] c"axp20x_adc.file=drivers/iio/adc/axp20x_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [23 x i8] c"axp20x_adc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axp20x-adc\00", [21 x i8] zeroinitializer }, align 32
@axp20x_adc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp209-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp20x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp221-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp22x_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"x-powers,axp813-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp813_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@axp20x_adc_id_match = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"axp20x-adc\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp20x_data to i32) }, %struct.platform_device_id { [20 x i8] c"axp22x-adc\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp22x_data to i32) }, %struct.platform_device_id { [20 x i8] c"axp813-adc\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp813_data to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@axp20x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register IIO maps: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axp20x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/axp20x_adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp20x_probe._entry_ptr = internal global ptr @axp20x_probe._entry, section ".printk_index", align 4
@axp20x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register the device\0A\00", [33 x i8] zeroinitializer }, align 32
@axp20x_probe._entry_ptr.8 = internal global ptr @axp20x_probe._entry.6, section ".printk_index", align 4
@axp20x_data = internal constant { %struct.axp_data, [36 x i8] } { %struct.axp_data { ptr @axp20x_adc_iio_info, i32 12, ptr @axp20x_adc_channels, i32 255, ptr @axp20x_adc_rate, i8 1, ptr @axp20x_maps }, [36 x i8] zeroinitializer }, align 32
@axp22x_data = internal constant { %struct.axp_data, [36 x i8] } { %struct.axp_data { ptr @axp22x_adc_iio_info, i32 5, ptr @axp22x_adc_channels, i32 225, ptr @axp22x_adc_rate, i8 0, ptr @axp22x_maps }, [36 x i8] zeroinitializer }, align 32
@axp813_data = internal constant { %struct.axp_data, [36 x i8] } { %struct.axp_data { ptr @axp813_adc_iio_info, i32 6, ptr @axp813_adc_channels, i32 225, ptr @axp813_adc_rate, i8 0, ptr @axp22x_maps }, [36 x i8] zeroinitializer }, align 32
@axp20x_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @axp20x_read_raw, ptr null, ptr null, ptr @axp20x_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@axp20x_adc_channels = internal constant { [12 x %struct.iio_chan_spec], [256 x i8] } { [12 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 86, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 64 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 88, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 90, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 92, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 94, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 0 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 100, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 102, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.15, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 126, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.16, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 120, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 122, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 1, i32 3, i32 0, i32 124, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 98, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }], [256 x i8] zeroinitializer }, align 32
@axp20x_maps = internal global { [8 x %struct.iio_map], [32 x i8] } { [8 x %struct.iio_map] [%struct.iio_map { ptr @.str.11, ptr @.str.21, ptr @.str.11, ptr null }, %struct.iio_map { ptr @.str.12, ptr @.str.21, ptr @.str.12, ptr null }, %struct.iio_map { ptr @.str.9, ptr @.str.22, ptr @.str.9, ptr null }, %struct.iio_map { ptr @.str.10, ptr @.str.22, ptr @.str.10, ptr null }, %struct.iio_map { ptr @.str.17, ptr @.str.23, ptr @.str.17, ptr null }, %struct.iio_map { ptr @.str.18, ptr @.str.23, ptr @.str.18, ptr null }, %struct.iio_map { ptr @.str.19, ptr @.str.23, ptr @.str.19, ptr null }, %struct.iio_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acin_v\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acin_i\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vbus_v\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vbus_i\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pmic_temp\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio0_v\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio1_v\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipsout_v\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batt_v\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"batt_chrg_i\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"batt_dischrg_i\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ts_v\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"axp20x-usb-power-supply\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"axp20x-ac-power-supply\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"axp20x-battery-power-supply\00", [36 x i8] zeroinitializer }, align 32
@axp22x_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @axp22x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@axp22x_adc_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 86, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 0 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 120, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 122, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 124, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 88, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }], [104 x i8] zeroinitializer }, align 32
@axp22x_maps = internal global { [4 x %struct.iio_map], [32 x i8] } { [4 x %struct.iio_map] [%struct.iio_map { ptr @.str.17, ptr @.str.23, ptr @.str.17, ptr null }, %struct.iio_map { ptr @.str.18, ptr @.str.23, ptr @.str.18, ptr null }, %struct.iio_map { ptr @.str.19, ptr @.str.23, ptr @.str.19, ptr null }, %struct.iio_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@axp813_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @axp813_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@axp813_adc_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 86, i32 0, %struct.anon.43 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 0 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 90, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.14, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 120, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.17, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 122, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.18, i8 64 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 124, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.19, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 88, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.20, i8 64 }], [144 x i8] zeroinitializer }, align 32
@switch.table.axp20x_read_raw = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.axp20x_read_raw.24 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 700000, i32 700000, i32 800000, i32 500000, i32 500000, i32 400000, i32 100000], [36 x i8] zeroinitializer }, align 32
@switch.table.axp20x_read_raw.25 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 625000, i32 375000, i32 500000, i32 500000], [16 x i8] zeroinitializer }, align 32
@switch.table.axp813_read_raw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.axp813_read_raw.26 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 800000, i32 800000, i32 100000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 700000]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"axp20x_adc_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 763, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 765, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"axp20x_adc_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 659, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"axp20x_adc_id_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 667, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 723, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 729, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"axp20x_data\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 629, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"axp22x_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 639, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"axp813_data\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 649, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"axp20x_adc_iio_info\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 584, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"axp20x_adc_channels\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 160, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"axp20x_maps\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 106, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 161, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 163, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 165, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 167, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 175, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 177, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 179, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 181, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 183, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 185, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 187, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 189, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 116, i32 24 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 124, i32 24 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"axp22x_adc_iio_info\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 589, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"axp22x_adc_channels\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 193, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"axp22x_maps\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 138, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"axp813_adc_iio_info\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 593, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c"axp813_adc_channels\00", align 1
@___asan_gen_.149 = private constant [32 x i8] c"../drivers/iio/adc/axp20x_adc.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 212, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant [29 x i8] c"switch.table.axp20x_read_raw\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [32 x i8] c"switch.table.axp20x_read_raw.24\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [32 x i8] c"switch.table.axp20x_read_raw.25\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [29 x i8] c"switch.table.axp813_read_raw\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [32 x i8] c"switch.table.axp813_read_raw.26\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_axp20x_adc_driver_exit, ptr @__initcall__kmod_axp20x_adc__188_773_axp20x_adc_driver_init6, ptr @axp20x_adc_driver_exit, ptr @axp20x_probe._entry, ptr @axp20x_probe._entry.6, ptr @axp20x_probe._entry_ptr, ptr @axp20x_probe._entry_ptr.8, ptr @axp20x_adc_driver, ptr @.str, ptr @axp20x_adc_of_match, ptr @axp20x_adc_id_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @axp20x_data, ptr @axp22x_data, ptr @axp813_data, ptr @axp20x_adc_iio_info, ptr @axp20x_adc_channels, ptr @axp20x_maps, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @axp22x_adc_iio_info, ptr @axp22x_adc_channels, ptr @axp22x_maps, ptr @axp813_adc_iio_info, ptr @axp813_adc_channels, ptr @switch.table.axp20x_read_raw, ptr @switch.table.axp20x_read_raw.24, ptr @switch.table.axp20x_read_raw.25, ptr @switch.table.axp813_read_raw, ptr @switch.table.axp813_read_raw.26], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_adc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_adc_id_match to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_adc_channels to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp20x_maps to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_adc_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp22x_maps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp813_adc_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_read_raw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_read_raw.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp20x_read_raw.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp813_read_raw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp813_read_raw.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_adc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axp20x_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %5, align 4
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call2, align 8
  %call6 = tail call ptr @dev_fwnode(ptr noundef %dev) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %11 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %15 = inttoptr i32 %14 to ptr
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call ptr @device_get_match_data(ptr noundef %dev) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %call11.sink = phi ptr [ %15, %if.then8 ], [ %call11, %if.else ]
  %16 = getelementptr inbounds %struct.axp20x_adc_iio, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11.sink, ptr %16, align 4
  %id_entry14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %18 = ptrtoint ptr %id_entry14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %id_entry14, align 4
  %name15 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %20 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %name15, align 8
  %21 = load ptr, ptr %16, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %info17 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %24 = ptrtoint ptr %info17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %info17, align 8
  %25 = load ptr, ptr %16, align 4
  %num_channels = getelementptr inbounds %struct.axp_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_channels, align 4
  %num_channels19 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %28 = ptrtoint ptr %num_channels19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_channels19, align 4
  %29 = load ptr, ptr %16, align 4
  %channels = getelementptr inbounds %struct.axp_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channels, align 4
  %channels21 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %32 = ptrtoint ptr %channels21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %channels21, align 8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %35 = load ptr, ptr %16, align 4
  %adc_en1_mask = getelementptr inbounds %struct.axp_data, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %adc_en1_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %adc_en1_mask, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 130, i32 noundef %37) #6
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %16, align 4
  %adc_en2 = getelementptr inbounds %struct.axp_data, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %adc_en2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %adc_en2, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool26.not = icmp eq i8 %41, 0
  br i1 %tobool26.not, label %if.end13.if.end30_crit_edge, label %if.then27

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 131, i32 noundef 140, i32 noundef 140, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end13.if.end30_crit_edge
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %16, align 4
  %adc_rate = getelementptr inbounds %struct.axp_data, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %adc_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adc_rate, align 4
  %call32 = tail call i32 %47(ptr noundef %5, i32 noundef 100) #6
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %16, align 4
  %maps = getelementptr inbounds %struct.axp_data, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %maps, align 4
  %call34 = tail call i32 @iio_map_array_register(ptr noundef nonnull %call2, ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end, label %if.end37

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call34) #9
  br label %fail_map

if.end37:                                         ; preds = %if.end30
  %call38 = tail call i32 @__iio_device_register(ptr noundef nonnull %call2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %call46 = tail call i32 @iio_map_array_unregister(ptr noundef nonnull %call2) #6
  br label %fail_map

fail_map:                                         ; preds = %do.end43, %do.end
  %ret.0 = phi i32 [ %call34, %do.end ], [ %call38, %do.end43 ]
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 4
  %call48 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 130, i32 noundef 0) #6
  %54 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %16, align 4
  %adc_en250 = getelementptr inbounds %struct.axp_data, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %adc_en250 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %adc_en250, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool51.not = icmp eq i8 %57, 0
  br i1 %tobool51.not, label %fail_map.cleanup_crit_edge, label %if.then52

fail_map.cleanup_crit_edge:                       ; preds = %fail_map
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %fail_map
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %call54 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 131, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %fail_map.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %ret.0, %if.then52 ], [ %ret.0, %fail_map.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %call2 = tail call i32 @iio_map_array_unregister(ptr noundef %1) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 130, i32 noundef 0) #6
  %data = getelementptr inbounds %struct.axp20x_adc_iio, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %adc_en2 = getelementptr inbounds %struct.axp_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %adc_en2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %adc_en2, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 131, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_map_array_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_map_array_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_adc_rate(ptr nocapture noundef readonly %info, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rate.off = add i32 %rate, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %rate.off)
  %2 = icmp ult i32 %rate.off, 49
  %div = sdiv i32 %rate, 25
  %3 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #6, !range !92
  %sub.i.op.i = shl nuw nsw i32 %3, 6
  %sub.i.op.i.op = and i32 %sub.i.op.i, 192
  %sub.i.op.i.op.op = xor i32 %sub.i.op.i.op, 192
  %and = select i1 %2, i32 192, i32 %sub.i.op.i.op.op
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 132, i32 noundef 192, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %2, label %sw.bb.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 9, label %sw.bb.return.sink.split.i_crit_edge
  ]

sw.bb.return.sink.split.i_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i.i = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 133, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.return_crit_edge, label %if.end.i.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i.i:                                       ; preds = %sw.bb.i
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %5, label %if.end.i.i.return_crit_edge [
    i32 3, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i32 4, label %sw.bb2.i.i
  ]

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %.sink10.i.i = phi i32 [ 2, %sw.bb2.i.i ], [ 1, %if.end.i.i.sw.epilog.i.i_crit_edge ]
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and3.i.i = and i32 %12, %.sink10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 700000
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.epilog.i.i, %sw.bb.return.sink.split.i_crit_edge
  %cond.i.sink.i = phi i32 [ %cond.i.i, %sw.epilog.i.i ], [ -1447, %sw.bb.return.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i.sink.i, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %15, label %sw.bb1.return_crit_edge [
    i32 0, label %sw.bb.i11
    i32 1, label %sw.bb1.i
    i32 9, label %sw.bb4.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i11:                                        ; preds = %sw.bb1
  %channel.i10 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %19 = icmp ult i32 %18, 7
  br i1 %19, label %switch.lookup, label %sw.bb.i11.return_crit_edge

sw.bb.i11.return_crit_edge:                       ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.axp20x_read_raw, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep18 = getelementptr inbounds [7 x i32], ptr @switch.table.axp20x_read_raw.24, i32 0, i32 %18
  %21 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load19 = load i32, ptr %switch.gep18, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.load, ptr %val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.load19, ptr %val2, align 4
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %24 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %switch.lookup20, label %sw.bb1.i.return_crit_edge

sw.bb1.i.return_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup20:                                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep21 = getelementptr inbounds [4 x i32], ptr @switch.table.axp20x_read_raw.25, i32 0, i32 %25
  %27 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load22 = load i32, ptr %switch.gep21, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load22, ptr %val2, align 4
  br label %return

sw.bb4.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 100, ptr %val, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %31 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i.i, align 8
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i = icmp eq i32 %34, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb3.if.else.i_crit_edge

sw.bb3.if.else.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb3
  %channel.i14 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %35 = ptrtoint ptr %channel.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp1.i = icmp eq i32 %36, 3
  br i1 %cmp1.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb3.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %size.0.i = phi i32 [ 4, %if.else.i ], [ 5, %land.lhs.true.i.if.end.i_crit_edge ]
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %39 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %address.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i.i) #6
  %41 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %reg_val.i.i, align 4, !annotation !93
  %call.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef %40, ptr noundef nonnull %reg_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i15 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i17, label %if.end.i.axp20x_adc_raw.exit_crit_edge

if.end.i.axp20x_adc_raw.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp20x_adc_raw.exit

if.end.i.i17:                                     ; preds = %if.end.i
  %42 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_val.i.i, align 4
  %add.i.i = add i32 %40, 1
  %call1.i.i16 = call i32 @regmap_read(ptr noundef %38, i32 noundef %add.i.i, ptr noundef nonnull %reg_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i16)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i16, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i17.axp20x_adc_raw.exit_crit_edge

if.end.i.i17.axp20x_adc_raw.exit_crit_edge:       ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp20x_adc_raw.exit

if.end4.i.i:                                      ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i = shl i32 %43, %size.0.i
  %44 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_val.i.i, align 4
  %or.i.i = or i32 %45, %shl.i.i
  br label %axp20x_adc_raw.exit

axp20x_adc_raw.exit:                              ; preds = %if.end4.i.i, %if.end.i.i17.axp20x_adc_raw.exit_crit_edge, %if.end.i.axp20x_adc_raw.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i, %if.end4.i.i ], [ %call.i.i, %if.end.i.axp20x_adc_raw.exit_crit_edge ], [ %call1.i.i16, %if.end.i.i17.axp20x_adc_raw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i) #6
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp3.i = icmp slt i32 %retval.0.i.i, 0
  %call2..i = select i1 %cmp3.i, i32 %retval.0.i.i, i32 1
  br label %return

return:                                           ; preds = %axp20x_adc_raw.exit, %sw.bb4.i, %switch.lookup20, %sw.bb1.i.return_crit_edge, %switch.lookup, %sw.bb.i11.return_crit_edge, %sw.bb1.return_crit_edge, %return.sink.split.i, %if.end.i.i.return_crit_edge, %sw.bb.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2..i, %axp20x_adc_raw.exit ], [ -22, %entry.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ %call1.i.i, %sw.bb.i.return_crit_edge ], [ -22, %if.end.i.i.return_crit_edge ], [ 1, %return.sink.split.i ], [ 1, %sw.bb4.i ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %sw.bb.i11.return_crit_edge ], [ 2, %switch.lookup ], [ -22, %sw.bb1.i.return_crit_edge ], [ 2, %switch.lookup20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp20x_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp1.not = icmp eq i32 %val, 0
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %val, label %if.end.cleanup_crit_edge [
    i32 700000, label %if.end.if.end4_crit_edge
    i32 0, label %if.end.if.end4_crit_edge14
  ]

if.end.if.end4_crit_edge14:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.if.end4_crit_edge14
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %4, label %if.end4.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb5
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %not.cmp1.not = xor i1 %cmp1.not, true
  %cond = zext i1 %not.cmp1.not to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %shl = select i1 %cmp1.not, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %reg.0 = phi i32 [ 2, %sw.bb5 ], [ 1, %sw.bb ]
  %regval.0 = phi i32 [ %shl, %sw.bb5 ], [ %cond, %sw.bb ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 133, i32 noundef %reg.0, i32 noundef %regval.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp22x_adc_rate(ptr nocapture noundef readonly %info, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rate.off = add i32 %rate, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %rate.off)
  %2 = icmp ult i32 %rate.off, 199
  %div = sdiv i32 %rate, 100
  %3 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #6, !range !92
  %sub.i.op.i = shl nuw nsw i32 %3, 6
  %sub.i.op.i.op = and i32 %sub.i.op.i, 192
  %sub.i.op.i.op.op = xor i32 %sub.i.op.i.op, 192
  %and = select i1 %2, i32 192, i32 %sub.i.op.i.op.op
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 132, i32 noundef 192, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp22x_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2677, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %3, label %sw.bb1.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 9, label %sw.bb2.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i:                                          ; preds = %sw.bb1
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %6, label %sw.bb.i.return_crit_edge [
    i32 1, label %sw.bb.i.return.sink.split.i.i_crit_edge
    i32 0, label %sw.bb1.i.i
  ]

sw.bb.i.return.sink.split.i.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %sw.bb1.i.i, %sw.bb.i.return.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 800000, %sw.bb1.i.i ], [ 100000, %sw.bb.i.return.sink.split.i.i_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i.i, ptr %val2, align 4
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %val, align 4
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %val, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i.i) #6
  %18 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg_val.i.i, align 4, !annotation !93
  %call.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %reg_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb2.axp22x_adc_raw.exit_crit_edge

sw.bb2.axp22x_adc_raw.exit_crit_edge:             ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp22x_adc_raw.exit

if.end.i.i:                                       ; preds = %sw.bb2
  %19 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_val.i.i, align 4
  %add.i.i = add i32 %17, 1
  %call1.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %add.i.i, ptr noundef nonnull %reg_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.axp22x_adc_raw.exit_crit_edge

if.end.i.i.axp22x_adc_raw.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp22x_adc_raw.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i = shl i32 %20, 4
  %21 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_val.i.i, align 4
  %or.i.i = or i32 %22, %shl.i.i
  br label %axp22x_adc_raw.exit

axp22x_adc_raw.exit:                              ; preds = %if.end4.i.i, %if.end.i.i.axp22x_adc_raw.exit_crit_edge, %sw.bb2.axp22x_adc_raw.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i, %if.end4.i.i ], [ %call.i.i, %sw.bb2.axp22x_adc_raw.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.axp22x_adc_raw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i) #6
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  %call1..i = select i1 %cmp.i, i32 %retval.0.i.i, i32 1
  br label %return

return:                                           ; preds = %axp22x_adc_raw.exit, %sw.bb2.i, %sw.bb1.i, %return.sink.split.i.i, %sw.bb.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1..i, %axp22x_adc_raw.exit ], [ 1, %sw.bb ], [ -22, %entry.return_crit_edge ], [ 1, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ 2, %return.sink.split.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp813_adc_rate(ptr nocapture noundef readonly %info, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rate.off39 = add i32 %rate, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %rate.off39)
  %2 = icmp ult i32 %rate.off39, 199
  %div8 = sdiv i32 %rate, 100
  %3 = tail call i32 @llvm.ctlz.i32(i32 %div8, i1 true) #6, !range !92
  %rate.off = add i32 %rate, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %rate.off)
  %4 = icmp ult i32 %rate.off, 49
  %div = sdiv i32 %rate, 25
  %5 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #6, !range !92
  %sub.i.op.i = shl nuw nsw i32 %5, 6
  %sub.i.op.i.op = and i32 %sub.i.op.i, 192
  %sub.i.op.i.op.op = xor i32 %sub.i.op.i.op, 192
  %and = select i1 %4, i32 192, i32 %sub.i.op.i.op.op
  %sub.i.op.i37 = shl nuw nsw i32 %3, 4
  %sub.i.op.i37.op = and i32 %sub.i.op.i37, 48
  %sub.i.op.i37.op.op = xor i32 %sub.i.op.i37.op, 48
  %and27 = select i1 %2, i32 48, i32 %sub.i.op.i37.op.op
  %or = or i32 %and27, %and
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 133, i32 noundef 240, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp813_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2667, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %sw.bb1.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 9, label %sw.bb2.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i:                                          ; preds = %sw.bb1
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %switch.lookup, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.axp813_read_raw, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep7 = getelementptr inbounds [3 x i32], ptr @switch.table.axp813_read_raw.26, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load8 = load i32, ptr %switch.gep7, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load, ptr %val, align 4
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load8, ptr %val2, align 4
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %val, align 4
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %val, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %18 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %address.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i.i) #6
  %20 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %reg_val.i.i, align 4, !annotation !93
  %call.i.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %reg_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb2.axp813_adc_raw.exit_crit_edge

sw.bb2.axp813_adc_raw.exit_crit_edge:             ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp813_adc_raw.exit

if.end.i.i:                                       ; preds = %sw.bb2
  %21 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_val.i.i, align 4
  %add.i.i = add i32 %19, 1
  %call1.i.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %add.i.i, ptr noundef nonnull %reg_val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.axp813_adc_raw.exit_crit_edge

if.end.i.i.axp813_adc_raw.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %axp813_adc_raw.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i = shl i32 %22, 4
  %23 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_val.i.i, align 4
  %or.i.i = or i32 %24, %shl.i.i
  br label %axp813_adc_raw.exit

axp813_adc_raw.exit:                              ; preds = %if.end4.i.i, %if.end.i.i.axp813_adc_raw.exit_crit_edge, %sw.bb2.axp813_adc_raw.exit_crit_edge
  %retval.0.i.i = phi i32 [ %or.i.i, %if.end4.i.i ], [ %call.i.i, %sw.bb2.axp813_adc_raw.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.axp813_adc_raw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i.i) #6
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  %call1..i = select i1 %cmp.i, i32 %retval.0.i.i, i32 1
  br label %return

return:                                           ; preds = %axp813_adc_raw.exit, %sw.bb2.i, %sw.bb1.i, %switch.lookup, %sw.bb.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1..i, %axp813_adc_raw.exit ], [ 1, %sw.bb ], [ -22, %entry.return_crit_edge ], [ 1, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ 2, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_axp20x_adc__188_773_axp20x_adc_driver_init6, !1, !"__initcall__kmod_axp20x_adc__188_773_axp20x_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 773, i32 1}
!2 = !{ptr @__exitcall_axp20x_adc_driver_exit, !1, !"__exitcall_axp20x_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description189, !4, !"__UNIQUE_ID_description189", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 775, i32 1}
!5 = !{ptr @__UNIQUE_ID_author190, !6, !"__UNIQUE_ID_author190", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 776, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 777, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 765, i32 11}
!12 = !{ptr @axp20x_adc_driver, !13, !"axp20x_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 763, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 723, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @axp20x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @axp20x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 729, i32 3}
!24 = !{ptr @axp20x_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @axp20x_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @axp20x_adc_of_match, !27, !"axp20x_adc_of_match", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 659, i32 34}
!28 = !{ptr @axp20x_data, !29, !"axp20x_data", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 629, i32 30}
!30 = !{ptr @axp20x_adc_iio_info, !31, !"axp20x_adc_iio_info", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 584, i32 30}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 161, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 163, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 165, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 167, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 175, i32 21}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 177, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 179, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 181, i32 2}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 183, i32 2}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 185, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 187, i32 2}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 189, i32 2}
!56 = !{ptr @axp20x_adc_channels, !57, !"axp20x_adc_channels", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 160, i32 35}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 108, i32 24}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 116, i32 24}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 124, i32 24}
!64 = !{ptr @axp20x_maps, !65, !"axp20x_maps", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 106, i32 23}
!66 = !{ptr @axp22x_data, !67, !"axp22x_data", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 639, i32 30}
!68 = !{ptr @axp22x_adc_iio_info, !69, !"axp22x_adc_iio_info", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 589, i32 30}
!70 = !{ptr @axp22x_adc_channels, !71, !"axp22x_adc_channels", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 193, i32 35}
!72 = !{ptr @axp22x_maps, !73, !"axp22x_maps", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 138, i32 23}
!74 = !{ptr @axp813_data, !75, !"axp813_data", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 649, i32 30}
!76 = !{ptr @axp813_adc_iio_info, !77, !"axp813_adc_iio_info", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 593, i32 30}
!78 = !{ptr @axp813_adc_channels, !79, !"axp813_adc_channels", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 212, i32 35}
!80 = !{ptr @axp20x_adc_id_match, !81, !"axp20x_adc_id_match", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/axp20x_adc.c", i32 667, i32 40}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{i32 0, i32 33}
!93 = !{!"auto-init"}
