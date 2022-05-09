; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/rcar-gyroadc.c_pt.bc'
source_filename = "../drivers/iio/adc/rcar-gyroadc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rcar_gyroadc = type { ptr, ptr, ptr, [8 x ptr], i32, i32, i32, i32 }

@__initcall__kmod_rcar_gyroadc__290_616_rcar_gyroadc_driver_init6 = internal global ptr @rcar_gyroadc_driver_init, section ".initcall6.init", align 4
@rcar_gyroadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_gyroadc_probe, ptr @rcar_gyroadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_gyroadc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gyroadc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_gyroadc_driver_exit = internal global ptr @rcar_gyroadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [56 x i8] c"rcar_gyroadc.author=Marek Vasut <marek.vasut@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [54 x i8] c"rcar_gyroadc.description=Renesas R-Car GyroADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [47 x i8] c"rcar_gyroadc.file=drivers/iio/adc/rcar-gyroadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [25 x i8] c"rcar_gyroadc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcar-gyroadc\00", [19 x i8] zeroinitializer }, align 32
@rcar_gyroadc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gyroadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7792-gyroadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rcar_gyroadc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gyroadc_suspend, ptr @rcar_gyroadc_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get IF clock\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_gyroadc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @rcar_gyroadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gyroadc_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rcar_gyroadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 524, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not prepare or enable the IF clock.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_gyroadc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/rcar-gyroadc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_gyroadc_probe._entry_ptr = internal global ptr @rcar_gyroadc_probe._entry, section ".printk_index", align 4
@rcar_gyroadc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't register IIO device.\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_gyroadc_probe._entry_ptr.10 = internal global ptr @rcar_gyroadc_probe._entry.8, section ".printk_index", align 4
@rcar_gyroadc_child_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fujitsu,mb88101a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adcs7476\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc121\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7476\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1162\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 333, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ignoring unsupported ADC \22%pOFn\22.\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rcar_gyroadc_parse_subdevs\00", [37 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry_ptr = internal global ptr @rcar_gyroadc_parse_subdevs._entry, section ".printk_index", align 4
@rcar_gyroadc_iio_channels_1 = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [64 x i8] zeroinitializer }, align 32
@rcar_gyroadc_iio_channels_2 = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@rcar_gyroadc_iio_channels_3 = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.5, i32 371, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to get child reg property of ADC \22%pOFn\22.\0A\00", [46 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry_ptr.16 = internal global ptr @rcar_gyroadc_parse_subdevs._entry.14, section ".printk_index", align 4
@rcar_gyroadc_parse_subdevs._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.5, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Only %i channels supported with %pOFn, but reg = <%i>.\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry_ptr.19 = internal global ptr @rcar_gyroadc_parse_subdevs._entry.17, section ".printk_index", align 4
@rcar_gyroadc_parse_subdevs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.5, i32 388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Channel %i uses different ADC mode than the rest.\0A\00", [45 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry_ptr.22 = internal global ptr @rcar_gyroadc_parse_subdevs._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.12, ptr @.str.5, ptr @.str.25, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcar_gyroadc\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Channel %i 'vref' supply not connected.\0A\00", [55 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.5, i32 431, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No valid ADC channels found, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@rcar_gyroadc_parse_subdevs._entry_ptr.28 = internal global ptr @rcar_gyroadc_parse_subdevs._entry.26, section ".printk_index", align 4
@rcar_gyroadc_init_supplies._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 471, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable regulator %i (ret=%i)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rcar_gyroadc_init_supplies\00", [37 x i8] zeroinitializer }, align 32
@rcar_gyroadc_init_supplies._entry_ptr = internal global ptr @rcar_gyroadc_init_supplies._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"rcar_gyroadc_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 606, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 610, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"rcar_gyroadc_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 270, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"rcar_gyroadc_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 602, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 501, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 504, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"rcar_gyroadc_iio_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 265, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 524, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 541, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"rcar_gyroadc_child_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 286, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 332, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"rcar_gyroadc_iio_channels_1\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 133, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [28 x i8] c"rcar_gyroadc_iio_channels_2\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 140, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"rcar_gyroadc_iio_channels_3\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 151, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 367, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 369, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 377, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 386, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 394, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 397, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 431, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [34 x i8] c"../drivers/iio/adc/rcar-gyroadc.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 470, i32 4 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_rcar_gyroadc_driver_exit, ptr @__initcall__kmod_rcar_gyroadc__290_616_rcar_gyroadc_driver_init6, ptr @rcar_gyroadc_driver_exit, ptr @rcar_gyroadc_init_supplies._entry, ptr @rcar_gyroadc_init_supplies._entry_ptr, ptr @rcar_gyroadc_parse_subdevs._entry, ptr @rcar_gyroadc_parse_subdevs._entry.14, ptr @rcar_gyroadc_parse_subdevs._entry.17, ptr @rcar_gyroadc_parse_subdevs._entry.20, ptr @rcar_gyroadc_parse_subdevs._entry.26, ptr @rcar_gyroadc_parse_subdevs._entry_ptr, ptr @rcar_gyroadc_parse_subdevs._entry_ptr.16, ptr @rcar_gyroadc_parse_subdevs._entry_ptr.19, ptr @rcar_gyroadc_parse_subdevs._entry_ptr.22, ptr @rcar_gyroadc_parse_subdevs._entry_ptr.28, ptr @rcar_gyroadc_probe._entry, ptr @rcar_gyroadc_probe._entry.8, ptr @rcar_gyroadc_probe._entry_ptr, ptr @rcar_gyroadc_probe._entry_ptr.10, ptr @rcar_gyroadc_driver, ptr @.str, ptr @rcar_gyroadc_match, ptr @rcar_gyroadc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @rcar_gyroadc_iio_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rcar_gyroadc_child_match, ptr @.str.11, ptr @.str.12, ptr @rcar_gyroadc_iio_channels_1, ptr @rcar_gyroadc_iio_channels_2, ptr @rcar_gyroadc_iio_channels_3, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_child_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_parse_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_iio_channels_1 to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_iio_channels_2 to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_iio_channels_3 to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_parse_subdevs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_parse_subdevs._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_parse_subdevs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_parse_subdevs._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gyroadc_init_supplies._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_gyroadc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gyroadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_gyroadc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 60) #7
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %1, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %clk = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %clk, align 4
  %cmp.i96 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = tail call fastcc i32 @rcar_gyroadc_parse_subdevs(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %num_channels.i = getelementptr inbounds %struct.rcar_gyroadc, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23.not.i = icmp eq i32 %12, 0
  br i1 %cmp23.not.i, label %if.end22.if.end26_crit_edge, label %if.end22.for.body.i_crit_edge

if.end22.for.body.i_crit_edge:                    ; preds = %if.end22
  br label %for.body.i

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end22.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end22.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rcar_gyroadc, ptr %8, i32 0, i32 3, i32 %i.024.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call4.i = tail call i32 @regulator_enable(ptr noundef nonnull %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc.i_crit_edge, label %do.end.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29, i32 noundef %i.024.i, i32 noundef %call4.i) #10
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %num_channels.i.i = getelementptr inbounds %struct.rcar_gyroadc, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp9.not.i.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i.i_crit_edge

do.end.i.for.body.i.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rcar_gyroadc, ptr %16, i32 0, i32 3, i32 %i.010.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = tail call i32 @regulator_disable(ptr noundef nonnull %20) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %21 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_channels.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %22
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cleanup_crit_edge

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %23 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_channels.i, align 4
  %cmp.i97 = icmp ult i32 %inc.i, %24
  br i1 %cmp.i97, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end26_crit_edge

for.inc.i.if.end26_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end26:                                         ; preds = %for.inc.i.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %call28 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %25 = ptrtoint ptr %call28 to i32
  %model = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %model, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rcar_gyroadc_iio_info, ptr %info, align 8
  %30 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %call, align 8
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i98 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i98, label %if.end.i99, label %if.end26.do.end_crit_edge

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i99:                                       ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end26.do.end_crit_edge
  %retval.0.i100.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end26.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %err_clk_if_enable

if.end33:                                         ; preds = %if.end.i99
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i101 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 0
  br i1 %cmp.i102, label %if.then.i, label %if.end37

if.then.i:                                        ; preds = %if.end33
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !88
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_power_up_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_power_up_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_power_up

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  br label %err_power_up

if.end37:                                         ; preds = %if.end33
  tail call fastcc void @rcar_gyroadc_hw_init(ptr noundef %1)
  tail call fastcc void @rcar_gyroadc_hw_start(ptr noundef %1)
  %call38 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !91
  %call.i104 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  br label %err_power_up

if.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call.i105 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  br label %cleanup

err_power_up:                                     ; preds = %do.end43, %do.end11.i.i.i.i.i, %if.then.i.err_power_up_crit_edge
  %ret.0 = phi i32 [ %call38, %do.end43 ], [ %call.i101, %if.then.i.err_power_up_crit_edge ], [ %call.i101, %do.end11.i.i.i.i.i ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  %call.i106 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #7
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  br label %err_clk_if_enable

err_clk_if_enable:                                ; preds = %err_power_up, %do.end
  %ret.1 = phi i32 [ %retval.0.i100.ph, %do.end ], [ %ret.0, %err_power_up ]
  tail call fastcc void @rcar_gyroadc_deinit_supplies(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %err_clk_if_enable, %if.end44, %for.inc.i.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %call17, %if.then14 ], [ %ret.1, %err_clk_if_enable ], [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call4.i, %do.end.i.cleanup_crit_edge ], [ %call4.i, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.rcar_gyroadc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !91
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  %call.i14 = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #7
  %clk = getelementptr inbounds %struct.rcar_gyroadc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %num_channels.i = getelementptr inbounds %struct.rcar_gyroadc, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.not.i = icmp eq i32 %13, 0
  br i1 %cmp9.not.i, label %entry.rcar_gyroadc_deinit_supplies.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rcar_gyroadc_deinit_supplies.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gyroadc_deinit_supplies.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rcar_gyroadc, ptr %11, i32 0, i32 3, i32 %i.010.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %15) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.010.i, 1
  %16 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rcar_gyroadc_deinit_supplies.exit_crit_edge

for.inc.i.rcar_gyroadc_deinit_supplies.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcar_gyroadc_deinit_supplies.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

rcar_gyroadc_deinit_supplies.exit:                ; preds = %for.inc.i.rcar_gyroadc_deinit_supplies.exit_crit_edge, %entry.rcar_gyroadc_deinit_supplies.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_gyroadc_parse_subdevs(ptr nocapture noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !92
  %call2 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #7
  %cmp.not139 = icmp eq ptr %call2, null
  br i1 %cmp.not139, label %entry.do.end61_crit_edge, label %for.body.lr.ph

entry.do.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

for.body.lr.ph:                                   ; preds = %entry
  %num_channels49 = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 4
  %mode = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 6
  %sample_width50 = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 7
  %channels51 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %num_channels52 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first.0143 = phi i32 [ 1, %for.body.lr.ph ], [ %first.1, %for.inc.for.body_crit_edge ]
  %adcmode.0142 = phi i32 [ -1, %for.body.lr.ph ], [ %adcmode.1, %for.inc.for.body_crit_edge ]
  %child.0140 = phi ptr [ %call2, %for.body.lr.ph ], [ %call56, %for.inc.for.body_crit_edge ]
  %call3 = call ptr @of_match_node(ptr noundef nonnull @rcar_gyroadc_child_match, ptr noundef nonnull %child.0140) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull %child.0140) #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.err_of_node_put_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 3, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.err_of_node_put_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_of_node_put

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %if.end.sw.epilog_crit_edge
  %channels.0 = phi ptr [ @rcar_gyroadc_iio_channels_3, %sw.bb5 ], [ @rcar_gyroadc_iio_channels_2, %sw.bb4 ], [ @rcar_gyroadc_iio_channels_1, %if.end.sw.epilog_crit_edge ]
  %sample_width.0 = phi i32 [ 16, %sw.bb5 ], [ 15, %sw.bb4 ], [ 12, %if.end.sw.epilog_crit_edge ]
  %num_channels.0 = phi i32 [ 8, %sw.bb5 ], [ 8, %sw.bb4 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg, align 4
  br label %if.end21

if.else:                                          ; preds = %sw.epilog
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0140, ptr noundef nonnull @.str.13, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool9.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %child.0140) #10
  br label %err_of_node_put

if.end14:                                         ; preds = %if.else
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %num_channels.0)
  %cmp15.not = icmp ult i32 %13, %num_channels.0
  br i1 %cmp15.not, label %if.end14.if.end21_crit_edge, label %do.end19

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %num_channels.0, ptr noundef nonnull %child.0140, i32 noundef %13) #10
  br label %err_of_node_put

if.end21:                                         ; preds = %if.end14.if.end21_crit_edge, %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.0143)
  %tobool22.not = icmp eq i32 %first.0143, 0
  %tobool22.not.not = xor i1 %tobool22.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %adcmode.0142, i32 %9)
  %cmp23.not = icmp eq i32 %adcmode.0142, %9
  %or.cond = select i1 %tobool22.not.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %15) #10
  br label %err_of_node_put

if.end28:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %child.0140, ptr %of_node, align 8
  %call30 = call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.23) #7
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %of_node, align 8
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body34, label %if.end44

do.body34:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gyroadc_parse_subdevs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gyroadc_parse_subdevs, %if.then39)) #7
          to label %do.end42 [label %if.then39], !srcloc !93

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_gyroadc_parse_subdevs.__UNIQUE_ID_ddebug289, ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %19) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body34
  %20 = ptrtoint ptr %call30 to i32
  br label %err_of_node_put

if.end44:                                         ; preds = %if.end28
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  %arrayidx = getelementptr %struct.rcar_gyroadc, ptr %1, i32 0, i32 3, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call30, ptr %arrayidx, align 4
  br i1 %tobool22.not, label %if.end44.for.inc_crit_edge, label %if.end48

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end48:                                         ; preds = %if.end44
  %24 = ptrtoint ptr %num_channels49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %num_channels.0, ptr %num_channels49, align 4
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %9, ptr %mode, align 4
  %26 = ptrtoint ptr %sample_width50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sample_width.0, ptr %sample_width50, align 4
  %27 = ptrtoint ptr %channels51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %channels.0, ptr %channels51, align 8
  %28 = ptrtoint ptr %num_channels52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %num_channels.0, ptr %num_channels52, align 4
  br i1 %cmp6, label %for.end.thread, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.end.thread:                                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.0140) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end48.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %do.end
  %adcmode.1 = phi i32 [ %9, %if.end48.for.inc_crit_edge ], [ %adcmode.0142, %if.end44.for.inc_crit_edge ], [ %adcmode.0142, %do.end ]
  %first.1 = phi i32 [ 0, %if.end48.for.inc_crit_edge ], [ 0, %if.end44.for.inc_crit_edge ], [ %first.0143, %do.end ]
  %call56 = call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %child.0140) #7
  %cmp.not = icmp eq ptr %call56, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.1)
  %tobool57.not = icmp eq i32 %first.1, 0
  br i1 %tobool57.not, label %for.end.cleanup_crit_edge, label %for.end.do.end61_crit_edge

for.end.do.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end61:                                         ; preds = %for.end.do.end61_crit_edge, %entry.do.end61_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27) #10
  br label %cleanup

err_of_node_put:                                  ; preds = %do.end42, %do.end27, %do.end19, %do.end13, %if.end.err_of_node_put_crit_edge
  %ret.0 = phi i32 [ %20, %do.end42 ], [ %call.i.i, %do.end13 ], [ -22, %do.end27 ], [ -22, %do.end19 ], [ -22, %if.end.err_of_node_put_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0140) #7
  br label %cleanup

cleanup:                                          ; preds = %err_of_node_put, %do.end61, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %ret.0, %err_of_node_put ], [ -22, %do.end61 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_gyroadc_hw_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rcar_gyroadc, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %mode = getelementptr inbounds %struct.rcar_gyroadc, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.rcar_gyroadc, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !91
  %model = getelementptr inbounds %struct.rcar_gyroadc, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %do.body3, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #7, !srcloc !91
  br label %do.body9

do.body9:                                         ; preds = %do.body3, %entry.do.body9_crit_edge
  %div = udiv i32 %call, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 10, i32 5
  %mul = mul nuw nsw i32 %cond, %div
  %and = and i32 %mul, 1
  %spec.select = add nuw nsw i32 %and, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %15) #7, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %mul23 = mul nuw nsw i32 %div, 1250
  %18 = tail call i32 @llvm.bswap.i32(i32 %mul23)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %18) #7, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_gyroadc_hw_start(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.rcar_gyroadc, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_gyroadc_deinit_supplies(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %num_channels = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rcar_gyroadc, ptr %1, i32 0, i32 3, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 16
  %mode = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %vref1 = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 3
  %arrayidx4 = getelementptr %struct.rcar_gyroadc, ptr %1, i32 0, i32 3, i32 %3
  %consumer.0.in = select i1 %cmp, ptr %vref1, ptr %arrayidx4
  %6 = ptrtoint ptr %consumer.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %consumer.0 = load ptr, ptr %consumer.0.in, align 4
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb24
    i32 12, label %sw.bb31
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp ne i32 %9, 0
  %tobool.not = icmp eq ptr %consumer.0, null
  %or.cond = select i1 %cmp5.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end9

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %call10 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end17

if.then.i.i:                                      ; preds = %if.end13
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then16_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then16_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !89
  br label %if.then16

if.then16:                                        ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then16_crit_edge
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !100
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  %sample_width = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_width, align 4
  %notmask = shl nsw i32 -1, %19
  %sub = xor i32 %notmask, -1
  %and = and i32 %16, %sub
  store i32 %and, ptr %val, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i5.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i5.i, ptr %last_busy.i.i, align 8
  %call.i6.i = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #7
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %cmp21 = icmp slt i32 %call.i6.i, 0
  %call20. = select i1 %cmp21, i32 %call.i6.i, i32 1
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %tobool25.not = icmp eq ptr %consumer.0, null
  br i1 %tobool25.not, label %sw.bb24.cleanup_crit_edge, label %if.end27

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %consumer.0) #7
  %div = udiv i32 %call28, 1000
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %val, align 4
  %sample_width29 = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %sample_width29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sample_width29, align 4
  %shl30 = shl nuw i32 1, %25
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl30, ptr %val2, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 800, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %if.end27, %sw.bb24.cleanup_crit_edge, %if.end17, %if.then16, %if.end9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb31 ], [ 10, %if.end27 ], [ %call.i.i, %if.then16 ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call20., %if.end17 ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cmp = icmp ne ptr %readval, null
  %rem = and i32 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %model = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp eq i32 %3, 1
  %spec.select = select i1 %cmp3, i32 120, i32 112
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %reg)
  %cmp6 = icmp ult i32 %spec.select, %reg
  br i1 %cmp6, label %if.end2.cleanup_crit_edge, label %if.end8

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.rcar_gyroadc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %reg
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !100
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %8 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %readval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.rcar_gyroadc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !91
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gyroadc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.rcar_gyroadc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_rcar_gyroadc__290_616_rcar_gyroadc_driver_init6, !1, !"__initcall__kmod_rcar_gyroadc__290_616_rcar_gyroadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 616, i32 1}
!2 = !{ptr @__exitcall_rcar_gyroadc_driver_exit, !1, !"__exitcall_rcar_gyroadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 618, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 619, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 620, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 610, i32 12}
!12 = !{ptr @rcar_gyroadc_driver, !13, !"rcar_gyroadc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 606, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 501, i32 32}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 504, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 524, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rcar_gyroadc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rcar_gyroadc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 541, i32 3}
!28 = !{ptr @rcar_gyroadc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rcar_gyroadc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 332, i32 4}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rcar_gyroadc_parse_subdevs._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rcar_gyroadc_parse_subdevs._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 367, i32 38}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 369, i32 5}
!39 = !{ptr @rcar_gyroadc_parse_subdevs._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rcar_gyroadc_parse_subdevs._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 377, i32 5}
!43 = !{ptr @rcar_gyroadc_parse_subdevs._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rcar_gyroadc_parse_subdevs._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 386, i32 4}
!47 = !{ptr @rcar_gyroadc_parse_subdevs._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rcar_gyroadc_parse_subdevs._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 394, i32 34}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 397, i32 4}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rcar_gyroadc_parse_subdevs.__UNIQUE_ID_ddebug289, !52, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 431, i32 3}
!57 = !{ptr @rcar_gyroadc_parse_subdevs._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rcar_gyroadc_parse_subdevs._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @rcar_gyroadc_child_match, !60, !"rcar_gyroadc_child_match", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 286, i32 34}
!61 = !{ptr @rcar_gyroadc_iio_channels_1, !62, !"rcar_gyroadc_iio_channels_1", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 133, i32 35}
!63 = !{ptr @rcar_gyroadc_iio_channels_2, !64, !"rcar_gyroadc_iio_channels_2", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 140, i32 35}
!65 = !{ptr @rcar_gyroadc_iio_channels_3, !66, !"rcar_gyroadc_iio_channels_3", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 151, i32 35}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 470, i32 4}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rcar_gyroadc_init_supplies._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rcar_gyroadc_init_supplies._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @rcar_gyroadc_iio_info, !73, !"rcar_gyroadc_iio_info", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 265, i32 30}
!74 = !{ptr @rcar_gyroadc_match, !75, !"rcar_gyroadc_match", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 270, i32 34}
!76 = !{ptr @rcar_gyroadc_pm_ops, !77, !"rcar_gyroadc_pm_ops", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/rcar-gyroadc.c", i32 602, i32 32}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148352634}
!88 = !{i64 838254, i64 838279, i64 838301, i64 838317, i64 838329, i64 838349, i64 838373, i64 838389, i64 838401}
!89 = !{i64 2148352822}
!90 = !{i64 2155163438}
!91 = !{i64 5197400}
!92 = !{!"auto-init"}
!93 = !{i64 2148966592, i64 2148966597, i64 2148966610, i64 2148966654, i64 2148966688, i64 2148966709}
!94 = !{i64 2155159536}
!95 = !{i64 2155159922}
!96 = !{i64 2155160317}
!97 = !{i64 2155160736}
!98 = !{i64 2155161153}
!99 = !{i64 2155161686}
!100 = !{i64 5197818}
!101 = !{i64 2155174369}
!102 = !{i64 2155174991}
