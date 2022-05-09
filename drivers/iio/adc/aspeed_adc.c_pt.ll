; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/aspeed_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/aspeed_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aspeed_adc_model_data = type { ptr, i32, i32, i32, i8, i8, i8, i8, i32, ptr }
%struct.aspeed_adc_trim_locate = type { i32, i32 }
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
%struct.aspeed_adc_data = type { ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32, i32, i8, %struct.adc_gain }
%struct.adc_gain = type { i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_aspeed_adc__336_722_aspeed_adc_driver_init6 = internal global ptr @aspeed_adc_driver_init, section ".initcall6.init", align 4
@aspeed_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_adc_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_adc_driver_exit = internal global ptr @aspeed_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author337 = internal constant [53 x i8] c"aspeed_adc.author=Rick Altherr <raltherr@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description338 = internal constant [59 x i8] c"aspeed_adc.description=Aspeed AST2400/2500/2600 ADC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [43 x i8] c"aspeed_adc.file=drivers/iio/adc/aspeed_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [23 x i8] c"aspeed_adc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aspeed_adc\00", [21 x i8] zeroinitializer }, align 32
@aspeed_adc_matches = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-adc0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_adc0_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-adc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_adc1_model_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@aspeed_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-fixed-div\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-prescaler\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-scaler\00", [22 x i8] zeroinitializer }, align 32
@aspeed_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 549, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid or missing reset controller device tree entry\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed_adc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/aspeed_adc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_adc_probe._entry_ptr = internal global ptr @aspeed_adc_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed,trim-data-valid\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed,battery-sensing\00", [41 x i8] zeroinitializer }, align 32
@aspeed_adc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.8, i32 584, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable battery-sensing mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aspeed_adc_probe._entry_ptr.16 = internal global ptr @aspeed_adc_probe._entry.13, section ".printk_index", align 4
@aspeed_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @aspeed_adc_read_raw, ptr null, ptr null, ptr @aspeed_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_adc_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@aspeed_adc_iio_bat_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 16, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 20, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 22, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 24, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 26, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 28, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 30, i32 0, %struct.anon.84 zeroinitializer, i32 9, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@aspeed_adc_iio_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 16, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 18, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 20, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 22, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 24, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 26, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 28, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 30, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 32, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 34, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 36, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 38, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 40, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 42, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 44, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 46, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4108, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [352 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@aspeed_adc_vref_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 449, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Regulator voltage %d not support\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_adc_vref_config\00", [41 x i8] zeroinitializer }, align 32
@aspeed_adc_vref_config._entry_ptr = internal global ptr @aspeed_adc_vref_config._entry, section ".printk_index", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed,int-vref-microvolt\00", [38 x i8] zeroinitializer }, align 32
@aspeed_adc_vref_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.8, i32 472, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Voltage %d not support\00", [41 x i8] zeroinitializer }, align 32
@aspeed_adc_vref_config._entry_ptr.23 = internal global ptr @aspeed_adc_vref_config._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@aspeed_adc_set_trim_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.8, i32 185, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't find syscon node\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed_adc_set_trim_data\00", [39 x i8] zeroinitializer }, align 32
@aspeed_adc_set_trim_data._entry_ptr = internal global ptr @aspeed_adc_set_trim_data._entry, section ".printk_index", align 4
@aspeed_adc_set_trim_data._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.8, i32 190, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get syscon regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@aspeed_adc_set_trim_data._entry_ptr.29 = internal global ptr @aspeed_adc_set_trim_data._entry.27, section ".printk_index", align 4
@aspeed_adc_set_trim_data._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.8, i32 197, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get adc trimming data\0A\00", [63 x i8] zeroinitializer }, align 32
@aspeed_adc_set_trim_data._entry_ptr.32 = internal global ptr @aspeed_adc_set_trim_data._entry.30, section ".printk_index", align 4
@aspeed_adc_set_trim_data.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.8, ptr @.str.33, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"trimming val = %d, offset = %08x, fields = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@aspeed_adc_set_sampling_rate.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.8, ptr @.str.35, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed_adc_set_sampling_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adc clock = %d sample period = %d ns\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aspeed_adc_compensation.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.8, ptr @.str.37, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aspeed_adc_compensation\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Compensating value = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ast2400_model_data = internal constant { %struct.aspeed_adc_model_data, [36 x i8] } { %struct.aspeed_adc_model_data { ptr @.str.38, i32 10000, i32 500000, i32 2500, i8 0, i8 1, i8 0, i8 10, i32 16, ptr null }, [36 x i8] zeroinitializer }, align 32
@ast2500_model_data = internal constant { %struct.aspeed_adc_model_data, [36 x i8] } { %struct.aspeed_adc_model_data { ptr @.str.39, i32 1, i32 1000000, i32 1800, i8 1, i8 1, i8 0, i8 10, i32 16, ptr @ast2500_adc_trim }, [36 x i8] zeroinitializer }, align 32
@ast2600_adc0_model_data = internal constant { %struct.aspeed_adc_model_data, [36 x i8] } { %struct.aspeed_adc_model_data { ptr @.str.40, i32 10000, i32 500000, i32 0, i8 1, i8 0, i8 1, i8 16, i32 8, ptr @ast2600_adc0_trim }, [36 x i8] zeroinitializer }, align 32
@ast2600_adc1_model_data = internal constant { %struct.aspeed_adc_model_data, [36 x i8] } { %struct.aspeed_adc_model_data { ptr @.str.41, i32 10000, i32 500000, i32 0, i8 1, i8 0, i8 1, i8 16, i32 8, ptr @ast2600_adc1_trim }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ast2400-adc\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ast2500-adc\00", [20 x i8] zeroinitializer }, align 32
@ast2500_adc_trim = internal constant { %struct.aspeed_adc_trim_locate, [24 x i8] } { %struct.aspeed_adc_trim_locate { i32 340, i32 -268435456 }, [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ast2600-adc0\00", [19 x i8] zeroinitializer }, align 32
@ast2600_adc0_trim = internal constant { %struct.aspeed_adc_trim_locate, [24 x i8] } { %struct.aspeed_adc_trim_locate { i32 1488, i32 15 }, [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ast2600-adc1\00", [19 x i8] zeroinitializer }, align 32
@ast2600_adc1_trim = internal constant { %struct.aspeed_adc_trim_locate, [24 x i8] } { %struct.aspeed_adc_trim_locate { i32 1488, i32 240 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"aspeed_adc_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 714, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 717, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"aspeed_adc_matches\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 705, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 503, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 504, i32 57 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 506, i32 43 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 521, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 537, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 548, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 563, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 570, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 583, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"aspeed_adc_iio_info\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 369, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"aspeed_adc_iio_bat_channels\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 165, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"aspeed_adc_iio_channels\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 136, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 423, i32 59 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 448, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 457, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 472, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 183, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 185, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 190, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 196, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 205, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 271, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 254, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"ast2400_model_data\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 661, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"ast2500_model_data\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 671, i32 43 }
@___asan_gen_.178 = private unnamed_addr constant [24 x i8] c"ast2600_adc0_model_data\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 683, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant [24 x i8] c"ast2600_adc1_model_data\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 694, i32 43 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 662, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 672, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"ast2500_adc_trim\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 646, i32 44 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 684, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"ast2600_adc0_trim\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 651, i32 44 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 695, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"ast2600_adc1_trim\00", align 1
@___asan_gen_.203 = private constant [32 x i8] c"../drivers/iio/adc/aspeed_adc.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 656, i32 44 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author337, ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__exitcall_aspeed_adc_driver_exit, ptr @__initcall__kmod_aspeed_adc__336_722_aspeed_adc_driver_init6, ptr @aspeed_adc_driver_exit, ptr @aspeed_adc_probe._entry, ptr @aspeed_adc_probe._entry.13, ptr @aspeed_adc_probe._entry_ptr, ptr @aspeed_adc_probe._entry_ptr.16, ptr @aspeed_adc_set_trim_data._entry, ptr @aspeed_adc_set_trim_data._entry.27, ptr @aspeed_adc_set_trim_data._entry.30, ptr @aspeed_adc_set_trim_data._entry_ptr, ptr @aspeed_adc_set_trim_data._entry_ptr.29, ptr @aspeed_adc_set_trim_data._entry_ptr.32, ptr @aspeed_adc_vref_config._entry, ptr @aspeed_adc_vref_config._entry.21, ptr @aspeed_adc_vref_config._entry_ptr, ptr @aspeed_adc_vref_config._entry_ptr.23, ptr @aspeed_adc_driver, ptr @.str, ptr @aspeed_adc_matches, ptr @aspeed_adc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @aspeed_adc_iio_info, ptr @aspeed_adc_iio_bat_channels, ptr @aspeed_adc_iio_channels, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @ast2400_model_data, ptr @ast2500_model_data, ptr @ast2600_adc0_model_data, ptr @ast2600_adc1_model_data, ptr @.str.38, ptr @.str.39, ptr @ast2500_adc_trim, ptr @.str.40, ptr @ast2600_adc0_trim, ptr @.str.41, ptr @ast2600_adc1_trim], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_matches to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_iio_bat_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_iio_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_vref_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_vref_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_set_trim_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_set_trim_data._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_adc_set_trim_data._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_model_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_model_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_adc0_model_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_adc1_model_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_adc_trim to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_adc0_trim to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2600_adc1_trim to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_adc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_adc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name = alloca [32 x i8], align 1
  %clk_parent_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name) #8
  %0 = call ptr @memset(ptr %clk_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_parent_name) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = call ptr @memset(ptr %clk_parent_name, i32 255, i32 32)
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 92) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %3, align 4
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %model_data = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %model_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %model_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %do.body

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %clk_lock = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %clk_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_adc_probe.__key, i16 noundef signext 3) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call15 = tail call ptr @of_clk_get_parent_name(ptr noundef %10, i32 noundef 0) #8
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_parent_name, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %call15)
  %11 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %14)
  %call23 = call ptr @clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef nonnull %clk_name, ptr noundef nonnull %clk_parent_name, i32 noundef 0, i32 noundef 1, i32 noundef 2) #8
  %fixed_div_clk = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %fixed_div_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23, ptr %fixed_div_clk, align 4
  %cmp.i376 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i376, label %if.then26, label %if.end29

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %do.body
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %call.i = call i32 @devm_add_action(ptr noundef %18, ptr noundef nonnull @aspeed_adc_unregister_fixed_divider, ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end35, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_hw_unregister_fixed_factor(ptr noundef %call23) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %call38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_parent_name, i32 noundef 32, ptr noundef nonnull %clk_name)
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %need_prescaler = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %need_prescaler to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %need_prescaler, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool40.not = icmp eq i8 %22, 0
  br i1 %tobool40.not, label %if.end35.if.end61_crit_edge, label %if.then41

if.end35.if.end61_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then41:                                        ; preds = %if.end35
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %call45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %24)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 12
  %call51 = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %clk_name, ptr noundef nonnull %clk_parent_name, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 17, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef %clk_lock) #8
  %clk_prescaler = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %clk_prescaler to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call51, ptr %clk_prescaler, align 4
  %cmp.i377 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i377, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_parent_name, i32 noundef 32, ptr noundef nonnull %clk_name)
  br label %if.end61

if.end61:                                         ; preds = %if.end57, %if.end35.if.end61_crit_edge
  %scaler_flags.0 = phi i32 [ 4, %if.end57 ], [ 0, %if.end35.if.end61_crit_edge ]
  %29 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %model_data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %32)
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr70 = getelementptr i8, ptr %34, i32 12
  %35 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %model_data, align 4
  %scaler_bit_width = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %scaler_bit_width to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %scaler_bit_width, align 1
  %call73 = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %clk_name, ptr noundef nonnull %clk_parent_name, ptr noundef null, ptr noundef null, i32 noundef %scaler_flags.0, ptr noundef %add.ptr70, i8 noundef zeroext 0, i8 noundef zeroext %38, i8 noundef zeroext 0, ptr noundef null, ptr noundef %clk_lock) #8
  %clk_scaler = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %clk_scaler to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call73, ptr %clk_scaler, align 4
  %cmp.i378 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i378, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end79:                                         ; preds = %if.end61
  %call.i379 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %rst = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i379, ptr %rst, align 4
  %cmp.i380 = icmp ugt ptr %call.i379, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i380, label %do.end87, label %if.end91

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  %42 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rst, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup

if.end91:                                         ; preds = %if.end79
  %call93 = call i32 @reset_control_deassert(ptr noundef %call.i379) #8
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %47 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rst, align 4
  %call.i381 = call i32 @devm_add_action(ptr noundef %46, ptr noundef nonnull @aspeed_adc_reset_assert, ptr noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %tobool.not.i382 = icmp eq i32 %call.i381, 0
  br i1 %tobool.not.i382, label %if.end99, label %devm_add_action_or_reset.exit384

devm_add_action_or_reset.exit384:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %call.i394 = call i32 @reset_control_assert(ptr noundef %48) #8
  br label %cleanup

if.end99:                                         ; preds = %if.end91
  %call100 = call fastcc i32 @aspeed_adc_vref_config(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %if.end99
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %of_node105 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %of_node105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node105, align 8
  %call106 = call ptr @of_find_property(ptr noundef %52, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.end103.if.end113_crit_edge, label %if.then108

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then108:                                       ; preds = %if.end103
  %call109 = call fastcc i32 @aspeed_adc_set_trim_data(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then108.if.end113_crit_edge, label %if.then108.cleanup_crit_edge

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then108.if.end113_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.end113:                                        ; preds = %if.then108.if.end113_crit_edge, %if.end103.if.end113_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %of_node115 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %of_node115 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node115, align 8
  %call116 = call ptr @of_find_property(ptr noundef %56, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end113.if.end140_crit_edge, label %if.then118

if.end113.if.end140_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then118:                                       ; preds = %if.end113
  %57 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %model_data, align 4
  %bat_sense_sup = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %bat_sense_sup to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bat_sense_sup, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool120.not = icmp eq i8 %60, 0
  br i1 %tobool120.not, label %do.end137, label %if.then121

if.then121:                                       ; preds = %if.then118
  %battery_sensing = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 12
  %61 = ptrtoint ptr %battery_sensing to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %battery_sensing, align 4
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %65 = and i32 %64, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool126.not = icmp eq i32 %65, 0
  %battery_mode_gain129 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 13
  %66 = ptrtoint ptr %battery_mode_gain129 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %battery_mode_gain129, align 1
  %div132 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 13, i32 1
  br i1 %tobool126.not, label %if.else, label %if.then127

if.then127:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %div132 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %div132, align 1
  br label %if.end140

if.else:                                          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %div132 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %div132, align 1
  br label %if.end140

do.end137:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %if.end140

if.end140:                                        ; preds = %do.end137, %if.else, %if.then127, %if.end113.if.end140_crit_edge
  %69 = ptrtoint ptr %clk_scaler to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk_scaler, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk, align 4
  %call142 = call fastcc i32 @clk_prepare_enable(ptr noundef %72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end145:                                        ; preds = %if.end140
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %75 = ptrtoint ptr %clk_scaler to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk_scaler, align 4
  %clk148 = getelementptr inbounds %struct.clk_hw, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %clk148 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk148, align 4
  %call.i385 = call i32 @devm_add_action(ptr noundef %74, ptr noundef nonnull @aspeed_adc_clk_disable_unprepare, ptr noundef %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %tobool.not.i386 = icmp eq i32 %call.i385, 0
  br i1 %tobool.not.i386, label %if.end152, label %devm_add_action_or_reset.exit388

devm_add_action_or_reset.exit388:                 ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_disable(ptr noundef %78) #8
  call void @clk_unprepare(ptr noundef %78) #8
  br label %cleanup

if.end152:                                        ; preds = %if.end145
  %call153 = call fastcc i32 @aspeed_adc_set_sampling_rate(ptr noundef nonnull %call, i32 noundef 65000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.end152.cleanup_crit_edge

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end156:                                        ; preds = %if.end152
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #8, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %82 = or i32 %81, 251658240
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #8, !srcloc !125
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %call.i389 = call i32 @devm_add_action(ptr noundef %86, ptr noundef nonnull @aspeed_adc_power_down, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389)
  %tobool.not.i390 = icmp eq i32 %call.i389, 0
  br i1 %tobool.not.i390, label %if.end190, label %devm_add_action_or_reset.exit392

devm_add_action_or_reset.exit392:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #8, !srcloc !125
  br label %cleanup

if.end190:                                        ; preds = %if.end156
  %89 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %model_data, align 4
  %wait_init_sequence = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %wait_init_sequence to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %wait_init_sequence, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool192.not = icmp eq i8 %92, 0
  br i1 %tobool192.not, label %if.end190.if.end240_crit_edge, label %if.then193

if.end190.if.end240_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then193:                                       ; preds = %if.end190
  %call194 = call i64 @ktime_get() #8
  %add.i = add i64 %call194, 500000000
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 621) #8
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #8, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %96 = and i32 %95, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool215.not397 = icmp eq i32 %96, 0
  br i1 %tobool215.not397, label %if.then193.land.lhs.true_crit_edge, label %if.then193.if.end240_crit_edge

if.then193.if.end240_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then193.land.lhs.true_crit_edge:               ; preds = %if.then193
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then232.land.lhs.true_crit_edge, %if.then193.land.lhs.true_crit_edge
  %call219 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call219, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call219, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then232

if.then232:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #8
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %100 = and i32 %99, 65536
  %tobool215.not = icmp eq i32 %100, 0
  br i1 %tobool215.not, label %if.then232.land.lhs.true_crit_edge, label %if.then232.if.end240_crit_edge

if.then232.if.end240_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

if.then232.land.lhs.true_crit_edge:               ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 4
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #8, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %104 = and i32 %103, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool236.not = icmp eq i32 %104, 0
  br i1 %tobool236.not, label %for.end.cleanup_crit_edge, label %for.end.if.end240_crit_edge

for.end.if.end240_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end240:                                        ; preds = %for.end.if.end240_crit_edge, %if.then232.if.end240_crit_edge, %if.then193.if.end240_crit_edge, %if.end190.if.end240_crit_edge
  call fastcc void @aspeed_adc_compensation(ptr noundef nonnull %call)
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #8, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %108 = or i32 %107, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #8, !srcloc !125
  %111 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %model_data, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %115 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %116 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @aspeed_adc_iio_info, ptr %info, align 8
  %117 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %call, align 8
  %battery_sensing257 = getelementptr inbounds %struct.aspeed_adc_data, ptr %3, i32 0, i32 12
  %118 = ptrtoint ptr %battery_sensing257 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %battery_sensing257, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool258.not = icmp eq i8 %119, 0
  %cond259 = select i1 %tobool258.not, ptr @aspeed_adc_iio_channels, ptr @aspeed_adc_iio_bat_channels
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %120 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %cond259, ptr %channels, align 8
  %121 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %model_data, align 4
  %num_channels = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %122, i32 0, i32 8
  %123 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_channels, align 4
  %num_channels261 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %125 = ptrtoint ptr %num_channels261 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %num_channels261, align 4
  %126 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %3, align 4
  %call263 = call i32 @__devm_iio_device_register(ptr noundef %127, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end240, %for.end.cleanup_crit_edge, %devm_add_action_or_reset.exit392, %if.end152.cleanup_crit_edge, %devm_add_action_or_reset.exit388, %if.end140.cleanup_crit_edge, %if.then108.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %devm_add_action_or_reset.exit384, %do.end87, %if.then76, %if.then54, %devm_add_action_or_reset.exit, %if.then26, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then9 ], [ %16, %if.then26 ], [ %28, %if.then54 ], [ %40, %if.then76 ], [ %44, %do.end87 ], [ %call263, %if.end240 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i381, %devm_add_action_or_reset.exit384 ], [ %call100, %if.end99.cleanup_crit_edge ], [ %call109, %if.then108.cleanup_crit_edge ], [ %call142, %if.end140.cleanup_crit_edge ], [ %call.i385, %devm_add_action_or_reset.exit388 ], [ %call153, %if.end152.cleanup_crit_edge ], [ %call.i389, %devm_add_action_or_reset.exit392 ], [ -110, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_parent_name) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_adc_unregister_fixed_divider(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister_fixed_factor(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_adc_reset_assert(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_adc_vref_config(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %model_data = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %vref_fixed_mv = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vref_fixed_mv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vref_fixed_mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vref_mv = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vref_mv, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !121
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call5 = tail call ptr @devm_regulator_get_optional(ptr noundef %12, ptr noundef nonnull @.str.17) #8
  %regulator = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else82, label %if.then8

if.then8:                                         ; preds = %if.end
  %call10 = tail call i32 @regulator_enable(ptr noundef %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regulator, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %15, ptr noundef nonnull @aspeed_adc_reg_disable, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end19, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call.i199 = tail call i32 @regulator_disable(ptr noundef %17) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regulator, align 4
  %call21 = tail call i32 @regulator_get_voltage(ptr noundef %19) #8
  %vref_mv22 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 9
  %div = sdiv i32 %call21, 1000
  %20 = ptrtoint ptr %vref_mv22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div, ptr %vref_mv22, align 4
  %21 = add i32 %call21, -1550000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1151000, i32 %21)
  %22 = icmp ult i32 %21, 1151000
  br i1 %22, label %do.body, label %if.else

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %or = or i32 %10, 128
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #8, !srcloc !125
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %26 = add i32 %call21, -900000
  call void @__sanitizer_cov_trace_const_cmp4(i32 751000, i32 %26)
  %27 = icmp ult i32 %26, 751000
  br i1 %27, label %do.body52, label %do.end77

do.body52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %or71 = or i32 %10, 192
  %28 = tail call i32 @llvm.bswap.i32(i32 %or71)
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #8, !srcloc !125
  br label %cleanup

do.end77:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef %div) #11
  br label %cleanup

if.else82:                                        ; preds = %if.end
  %33 = ptrtoint ptr %call5 to i32
  %cmp85.not = icmp eq ptr %call5, inttoptr (i32 -19 to ptr)
  br i1 %cmp85.not, label %if.end89, label %if.else82.cleanup_crit_edge

if.else82.cleanup_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.else82
  %vref_mv90 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %vref_mv90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2500000, ptr %vref_mv90, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.20, ptr noundef %vref_mv90, i32 noundef 1, i32 noundef 0) #8
  %39 = ptrtoint ptr %vref_mv90 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vref_mv90, align 4
  %div95 = sdiv i32 %40, 1000
  store i32 %div95, ptr %vref_mv90, align 4
  %.off = add i32 %40, -2500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %.off)
  %41 = icmp ult i32 %.off, 1000
  br i1 %41, label %do.body99, label %if.else121

do.body99:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %9) #8, !srcloc !125
  br label %cleanup

if.else121:                                       ; preds = %if.end89
  %.off197 = add i32 %40, -1200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %.off197)
  %44 = icmp ult i32 %.off197, 1000
  br i1 %44, label %do.body125, label %do.end150

do.body125:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %or144 = or i32 %10, 64
  %45 = tail call i32 @llvm.bswap.i32(i32 %or144)
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #8, !srcloc !125
  br label %cleanup

do.end150:                                        ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.22, i32 noundef %div95) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end150, %do.body125, %do.body99, %if.else82.cleanup_crit_edge, %do.end77, %do.body52, %do.body, %devm_add_action_or_reset.exit, %if.then8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -95, %do.end150 ], [ -95, %do.end77 ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ 0, %do.body99 ], [ 0, %do.body125 ], [ 0, %do.body ], [ 0, %do.body52 ], [ %33, %if.else82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_adc_set_trim_data(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %scu_otp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scu_otp) #8
  %0 = ptrtoint ptr %scu_otp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scu_otp, align 4, !annotation !136
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %call1 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.24) #8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call1) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %model_data = getelementptr inbounds %struct.aspeed_adc_data, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %model_data, align 4
  %trim_locate = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %trim_locate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trim_locate, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then10

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call13 = call i32 @regmap_read(ptr noundef %call2, i32 noundef %12, ptr noundef nonnull %scu_otp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else, label %do.end18

do.end18:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.31) #11
  br label %do.body27

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %scu_otp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scu_otp, align 4
  %17 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %model_data, align 4
  %trim_locate21 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %trim_locate21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trim_locate21, align 4
  %field = getelementptr inbounds %struct.aspeed_adc_trim_locate, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %field, align 4
  %and = and i32 %22, %16
  %23 = call i32 @llvm.cttz.i32(i32 %22, i1 false) #8, !range !137
  %shr = lshr i32 %and, %23
  br label %do.body27

do.body27:                                        ; preds = %if.else, %do.end18
  %trimming_val.0 = phi i32 [ 8, %do.end18 ], [ %shr, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_adc_set_trim_data.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_adc_set_trim_data, %if.then32)) #8
          to label %do.body43 [label %if.then32], !srcloc !138

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %26 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %model_data, align 4
  %trim_locate35 = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %trim_locate35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trim_locate35, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %field39 = getelementptr inbounds %struct.aspeed_adc_trim_locate, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %field39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_adc_set_trim_data.__UNIQUE_ID_ddebug288, ptr noundef %25, ptr noundef nonnull @.str.33, i32 noundef %trimming_val.0, i32 noundef %31, i32 noundef %33) #8
  br label %do.body43

do.body43:                                        ; preds = %if.then32, %do.body27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  call void @arm_heavy_mb() #8
  %34 = call i32 @llvm.bswap.i32(i32 %trimming_val.0)
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %2, i32 0, i32 3
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %34) #8, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %do.body43, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end7 ], [ 0, %do.body43 ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scu_otp) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_adc_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #8
  tail call void @clk_unprepare(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_adc_set_sampling_rate(ptr nocapture noundef readonly %indio_dev, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %model_data = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %min_sampling_rate = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %min_sampling_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_sampling_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp = icmp ugt i32 %5, %rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_sampling_rate = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %max_sampling_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_sampling_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp2 = icmp ult i32 %7, %rate
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %clk_scaler = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %clk_scaler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_scaler, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %mul = mul i32 %rate, 12
  %call3 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %mul) #8
  %12 = ptrtoint ptr %clk_scaler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_scaler, align 4
  %clk5 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk5, align 4
  %call6 = tail call i32 @clk_get_rate(ptr noundef %15) #8
  %conv = zext i32 %call6 to i64
  %sub = add nuw nsw i64 %conv, 11999999999
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call6, i64 %sub) #12, !srcloc !140
  %asmresult1.i = extractvalue { i64, i64 } %16, 1
  %extract.t326 = trunc i64 %asmresult1.i to i32
  %sample_period_ns = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %sample_period_ns to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %extract.t326, ptr %sample_period_ns, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_adc_set_sampling_rate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_adc_set_sampling_rate, %if.then206)) #8
          to label %cleanup [label %if.then206], !srcloc !138

if.then206:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %sample_period_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sample_period_ns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_adc_set_sampling_rate.__UNIQUE_ID_ddebug300, ptr noundef %19, ptr noundef nonnull @.str.35, i32 noundef %call6, i32 noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then206, %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then206 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_adc_power_down(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !125
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_adc_compensation(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %5 = or i32 %4, 520093952
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  %sample_period_ns = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 10
  br label %cond.false8.i

cond.false8.i:                                    ; preds = %cond.false8.i.cond.false8.i_crit_edge, %entry
  %index.03 = phi i32 [ 0, %entry ], [ %inc, %cond.false8.i.cond.false8.i_crit_edge ]
  %adc_raw.02 = phi i32 [ 0, %entry ], [ %add, %cond.false8.i.cond.false8.i_crit_edge ]
  %9 = ptrtoint ptr %sample_period_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sample_period_ns, align 4
  %sub.i = add i32 %10, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %div.i) #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr43 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr43) #8, !srcloc !143
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %conv = zext i16 %15 to i32
  %add = add i32 %adc_raw.02, %conv
  %inc = add nuw nsw i32 %index.03, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cond.false8.i.cond.false8.i_crit_edge

cond.false8.i.cond.false8.i_crit_edge:            ; preds = %cond.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false8.i

for.end:                                          ; preds = %cond.false8.i
  %16 = or i32 %4, 251658240
  %shr = lshr i32 %add, 4
  %sub = sub nsw i32 512, %shr
  %cv = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %cv to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %cv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #8, !srcloc !125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_adc_compensation.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_adc_compensation, %if.then)) #8
          to label %do.end59 [label %if.then], !srcloc !138

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %cv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_adc_compensation.__UNIQUE_ID_ddebug299, ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %23) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_fixed_factor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_adc_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_adc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb47
    i32 2, label %sw.bb67
    i32 12, label %sw.bb68
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %battery_sensing = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %battery_sensing to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %battery_sensing, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp = icmp eq i32 %6, 7
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %10 = or i32 %9, 3145728
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #8, !srcloc !125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #8, !srcloc !143
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %val, align 4
  %battery_mode_gain = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %battery_mode_gain to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %battery_mode_gain, align 1
  %conv29 = zext i8 %22 to i32
  %mul = mul nuw nsw i32 %conv29, %conv
  %div = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %div, align 1
  %conv31 = zext i8 %24 to i32
  %div32 = udiv i32 %mul, %conv31
  store i32 %div32, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %9) #8, !srcloc !125
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %base40 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %base40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base40, align 4
  %address41 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %29 = ptrtoint ptr %address41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %address41, align 4
  %add.ptr42 = getelementptr i8, ptr %28, i32 %30
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr42) #8, !srcloc !143
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %conv46 = zext i16 %32 to i32
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv46, ptr %val, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  %battery_sensing48 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %battery_sensing48 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %battery_sensing48, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool49.not = icmp eq i8 %35, 0
  br i1 %tobool49.not, label %sw.bb47.if.else64_crit_edge, label %land.lhs.true51

sw.bb47.if.else64_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64

land.lhs.true51:                                  ; preds = %sw.bb47
  %channel52 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %36 = ptrtoint ptr %channel52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %cmp53 = icmp eq i32 %37, 7
  br i1 %cmp53, label %if.then55, label %land.lhs.true51.if.else64_crit_edge

land.lhs.true51.if.else64_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else64

if.then55:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  %cv = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %cv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cv, align 4
  %battery_mode_gain56 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 13
  %40 = ptrtoint ptr %battery_mode_gain56 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %battery_mode_gain56, align 1
  %conv58 = zext i8 %41 to i32
  %mul59 = mul i32 %39, %conv58
  %div61 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 13, i32 1
  %42 = ptrtoint ptr %div61 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %div61, align 1
  %conv62 = zext i8 %43 to i32
  %div63 = sdiv i32 %mul59, %conv62
  br label %if.end66

if.else64:                                        ; preds = %land.lhs.true51.if.else64_crit_edge, %sw.bb47.if.else64_crit_edge
  %cv65 = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 11
  %44 = ptrtoint ptr %cv65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cv65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.then55
  %storemerge = phi i32 [ %45, %if.else64 ], [ %div63, %if.then55 ]
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vref_mv = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vref_mv, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %val, align 4
  %50 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10, ptr %val2, align 4
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk_scaler = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %clk_scaler to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_scaler, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  %call69 = tail call i32 @clk_get_rate(ptr noundef %54) #8
  %div70 = udiv i32 %call69, 12
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div70, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb68, %sw.bb67, %if.end66, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb68 ], [ 11, %sw.bb67 ], [ 1, %if.end66 ], [ 1, %if.else ], [ 1, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_adc_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %mask, label %sw.default [
    i32 12, label %sw.bb
    i32 2, label %entry.return_crit_edge
    i32 0, label %entry.return_crit_edge4
  ]

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  %model_data.i = getelementptr inbounds %struct.aspeed_adc_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %model_data.i, align 4
  %min_sampling_rate.i = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %min_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %min_sampling_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp.i = icmp ugt i32 %6, %val
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %lor.lhs.false.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %sw.bb
  %max_sampling_rate.i = getelementptr inbounds %struct.aspeed_adc_model_data, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %max_sampling_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_sampling_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp2.i = icmp ult i32 %8, %val
  br i1 %cmp2.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %clk_scaler.i = getelementptr inbounds %struct.aspeed_adc_data, ptr %2, i32 0, i32 7
  %9 = ptrtoint ptr %clk_scaler.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_scaler.i, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  %mul.i = mul i32 %val, 12
  %call3.i = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %mul.i) #8
  %13 = ptrtoint ptr %clk_scaler.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_scaler.i, align 4
  %clk5.i = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %clk5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk5.i, align 4
  %call6.i = tail call i32 @clk_get_rate(ptr noundef %16) #8
  %conv.i = zext i32 %call6.i to i64
  %sub.i = add nuw nsw i64 %conv.i, 11999999999
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call6.i, i64 %sub.i) #12, !srcloc !140
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %extract.t = trunc i64 %asmresult1.i.i to i32
  %sample_period_ns.i = getelementptr inbounds %struct.aspeed_adc_data, ptr %2, i32 0, i32 10
  %18 = ptrtoint ptr %sample_period_ns.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %extract.t, ptr %sample_period_ns.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_adc_set_sampling_rate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_adc_write_raw, %if.then206.i)) #8
          to label %return [label %if.then206.i], !srcloc !138

if.then206.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %21 = ptrtoint ptr %sample_period_ns.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sample_period_ns.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_adc_set_sampling_rate.__UNIQUE_ID_ddebug300, ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef %call6.i, i32 noundef %22) #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %if.then206.i, %if.end.i, %lor.lhs.false.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge4
  %retval.0 = phi i32 [ -22, %sw.default ], [ -1, %entry.return_crit_edge ], [ -1, %entry.return_crit_edge4 ], [ -22, %lor.lhs.false.i.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ 0, %if.then206.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_adc_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %readval, null
  %rem = and i32 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool1.not = icmp ne i32 %rem, 0
  %or.cond.not = or i1 %tobool1.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %reg)
  %cmp = icmp ugt i32 %reg, 208
  %or.cond8 = or i1 %cmp, %or.cond.not
  br i1 %or.cond8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %base = getelementptr inbounds %struct.aspeed_adc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !121
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %6 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_aspeed_adc__336_722_aspeed_adc_driver_init6, !1, !"__initcall__kmod_aspeed_adc__336_722_aspeed_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 722, i32 1}
!2 = !{ptr @__exitcall_aspeed_adc_driver_exit, !1, !"__exitcall_aspeed_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author337, !4, !"__UNIQUE_ID_author337", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 724, i32 1}
!5 = !{ptr @__UNIQUE_ID_description338, !6, !"__UNIQUE_ID_description338", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 725, i32 1}
!7 = !{ptr @__UNIQUE_ID_file339, !8, !"__UNIQUE_ID_file339", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 726, i32 1}
!9 = !{ptr @__UNIQUE_ID_license340, !8, !"__UNIQUE_ID_license340", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 717, i32 11}
!12 = !{ptr @aspeed_adc_driver, !13, !"aspeed_adc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 714, i32 31}
!14 = !{ptr @aspeed_adc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 503, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 504, i32 57}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 506, i32 43}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 521, i32 44}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 537, i32 43}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 548, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @aspeed_adc_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @aspeed_adc_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 563, i32 43}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 570, i32 43}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 583, i32 4}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @aspeed_adc_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @aspeed_adc_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 423, i32 59}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 448, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @aspeed_adc_vref_config._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @aspeed_adc_vref_config._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 457, i32 10}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 472, i32 4}
!53 = !{ptr @aspeed_adc_vref_config._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @aspeed_adc_vref_config._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 183, i32 38}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 185, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @aspeed_adc_set_trim_data._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @aspeed_adc_set_trim_data._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 190, i32 3}
!64 = !{ptr @aspeed_adc_set_trim_data._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @aspeed_adc_set_trim_data._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 196, i32 4}
!68 = !{ptr @aspeed_adc_set_trim_data._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @aspeed_adc_set_trim_data._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 205, i32 3}
!72 = !{ptr @aspeed_adc_set_trim_data.__UNIQUE_ID_ddebug288, !71, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 271, i32 2}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @aspeed_adc_set_sampling_rate.__UNIQUE_ID_ddebug300, !74, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 254, i32 2}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @aspeed_adc_compensation.__UNIQUE_ID_ddebug299, !78, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!81 = !{ptr @aspeed_adc_iio_info, !82, !"aspeed_adc_iio_info", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 369, i32 30}
!83 = !{ptr @aspeed_adc_iio_bat_channels, !84, !"aspeed_adc_iio_bat_channels", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 165, i32 35}
!85 = !{ptr @aspeed_adc_iio_channels, !86, !"aspeed_adc_iio_channels", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 136, i32 35}
!87 = !{ptr @aspeed_adc_matches, !88, !"aspeed_adc_matches", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 705, i32 34}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 662, i32 16}
!91 = !{ptr @ast2400_model_data, !92, !"ast2400_model_data", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 661, i32 43}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 672, i32 16}
!95 = !{ptr @ast2500_model_data, !96, !"ast2500_model_data", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 671, i32 43}
!97 = !{ptr @ast2500_adc_trim, !98, !"ast2500_adc_trim", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 646, i32 44}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 684, i32 16}
!101 = !{ptr @ast2600_adc0_model_data, !102, !"ast2600_adc0_model_data", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 683, i32 43}
!103 = !{ptr @ast2600_adc0_trim, !104, !"ast2600_adc0_trim", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 651, i32 44}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 695, i32 16}
!107 = !{ptr @ast2600_adc1_model_data, !108, !"ast2600_adc1_model_data", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 694, i32 43}
!109 = !{ptr @ast2600_adc1_trim, !110, !"ast2600_adc1_trim", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/aspeed_adc.c", i32 656, i32 44}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{i64 4077684}
!122 = !{i64 2155853385}
!123 = !{i64 2155855701}
!124 = !{i64 2155895574}
!125 = !{i64 4077266}
!126 = !{i64 2155533948}
!127 = !{i64 2155897751}
!128 = !{i64 2155898237}
!129 = !{i64 2155898732}
!130 = !{i64 2155899666}
!131 = !{i64 2155556960}
!132 = !{i64 2155608265}
!133 = !{i64 2155678112}
!134 = !{i64 2155749659}
!135 = !{i64 2155823567}
!136 = !{!"auto-init"}
!137 = !{i32 0, i32 33}
!138 = !{i64 2148740988, i64 2148740993, i64 2148741006, i64 2148741050, i64 2148741084, i64 2148741105}
!139 = !{i64 2155325150}
!140 = !{i64 2148649707, i64 2148649987, i64 2148650321, i64 2148650655}
!141 = !{i64 2155325843}
!142 = !{i64 2155418771}
!143 = !{i64 4076846}
!144 = !{i64 2155443949}
!145 = !{i64 2155444274}
!146 = !{i64 2155455124}
!147 = !{i64 2155474057}
!148 = !{i64 2155485207}
!149 = !{i64 2155485449}
!150 = !{i64 2155486215}
!151 = !{i64 2155486728}
