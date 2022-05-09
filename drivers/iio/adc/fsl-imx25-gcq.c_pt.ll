; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/fsl-imx25-gcq.c_pt.bc'
source_filename = "../drivers/iio/adc/fsl-imx25-gcq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mx25_gcq_priv = type { ptr, %struct.completion, ptr, i32, [4 x ptr], [8 x i32], %struct.mutex }
%struct.mx25_tsadc = type { ptr, ptr, ptr }

@__initcall__kmod_fsl_imx25_gcq__288_418_mx25_gcq_driver_init6 = internal global ptr @mx25_gcq_driver_init, section ".initcall6.init", align 4
@mx25_gcq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mx25_gcq_probe, ptr @mx25_gcq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mx25_gcq_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mx25_gcq_driver_exit = internal global ptr @mx25_gcq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [56 x i8] c"fsl_imx25_gcq.description=ADC driver for Freescale mx25\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [58 x i8] c"fsl_imx25_gcq.author=Markus Pargmann <mpa@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [49 x i8] c"fsl_imx25_gcq.file=drivers/iio/adc/fsl-imx25-gcq\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"fsl_imx25_gcq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mx25-gcq\00", [23 x i8] zeroinitializer }, align 32
@mx25_gcq_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-gcq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mx25_gcq_regconfig = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 92, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fsl_imx25_gcq:317:(&mx25_gcq_regconfig)->lock\00", [50 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mx25_gcq_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/adc/fsl-imx25-gcq.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry_ptr = internal global ptr @mx25_gcq_probe._entry, section ".printk_index", align 4
@mx25_gcq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry_ptr.10 = internal global ptr @mx25_gcq_probe._entry.8, section ".printk_index", align 4
@mx25_gcq_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed requesting IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry_ptr.13 = internal global ptr @mx25_gcq_probe._entry.11, section ".printk_index", align 4
@mx25_gcq_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.37, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.41, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.42, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.43, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.44, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.45, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.46, i8 64 }], [160 x i8] zeroinitializer }, align 32
@mx25_gcq_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mx25_gcq_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@mx25_gcq_probe._entry_ptr.16 = internal global ptr @mx25_gcq_probe._entry.14, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get reg property\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mx25_gcq_setup_cfgs\00", [44 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry_ptr = internal global ptr @mx25_gcq_setup_cfgs._entry, section ".printk_index", align 4
@mx25_gcq_setup_cfgs._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"reg value is greater than the number of available configuration registers\0A\00", [53 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry_ptr.23 = internal global ptr @mx25_gcq_setup_cfgs._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,adc-refp\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,adc-refn\00", [19 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid positive reference %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry_ptr.28 = internal global ptr @mx25_gcq_setup_cfgs._entry.26, section ".printk_index", align 4
@mx25_gcq_setup_cfgs._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid fsl,adc-refp property value\0A\00", [59 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry_ptr.31 = internal global ptr @mx25_gcq_setup_cfgs._entry.29, section ".printk_index", align 4
@mx25_gcq_setup_cfgs._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.4, i32 277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid fsl,adc-refn property value\0A\00", [59 x i8] zeroinitializer }, align 32
@mx25_gcq_setup_cfgs._entry_ptr.34 = internal global ptr @mx25_gcq_setup_cfgs._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vref-%s\00", [24 x i8] zeroinitializer }, align 32
@mx25_gcq_refp_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Error, trying to use external voltage reference without a %s regulator.\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"yp\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xp\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xn\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"yn\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wiper\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inaux0\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inaux1\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inaux2\00", [25 x i8] zeroinitializer }, align 32
@mx25_gcq_get_raw_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADC wait for measurement failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mx25_gcq_get_raw_value\00", [41 x i8] zeroinitializer }, align 32
@mx25_gcq_get_raw_value._entry_ptr = internal global ptr @mx25_gcq_get_raw_value._entry, section ".printk_index", align 4
@mx25_gcq_get_raw_value._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC timed out\0A\00", [17 x i8] zeroinitializer }, align 32
@mx25_gcq_get_raw_value._entry_ptr.51 = internal global ptr @mx25_gcq_get_raw_value._entry.49, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"mx25_gcq_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 410, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 412, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"mx25_gcq_ids\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 404, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"mx25_gcq_regconfig\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 168, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 317, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 319, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 323, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 343, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 354, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"mx25_gcq_channels\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 63, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"mx25_gcq_iio_info\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 164, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 365, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 87, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 224, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 226, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 232, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 238, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 239, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 259, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 272, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 277, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 184, i32 45 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"mx25_gcq_refp_names\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 74, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 192, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 75, i32 23 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 76, i32 23 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 78, i32 24 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 77, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 66, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 67, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 68, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 69, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 70, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 71, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 126, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [35 x i8] c"../drivers/iio/adc/fsl-imx25-gcq.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 129, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mx25_gcq_driver_exit, ptr @__initcall__kmod_fsl_imx25_gcq__288_418_mx25_gcq_driver_init6, ptr @mx25_gcq_driver_exit, ptr @mx25_gcq_get_raw_value._entry, ptr @mx25_gcq_get_raw_value._entry.49, ptr @mx25_gcq_get_raw_value._entry_ptr, ptr @mx25_gcq_get_raw_value._entry_ptr.51, ptr @mx25_gcq_probe._entry, ptr @mx25_gcq_probe._entry.11, ptr @mx25_gcq_probe._entry.14, ptr @mx25_gcq_probe._entry.8, ptr @mx25_gcq_probe._entry_ptr, ptr @mx25_gcq_probe._entry_ptr.10, ptr @mx25_gcq_probe._entry_ptr.13, ptr @mx25_gcq_probe._entry_ptr.16, ptr @mx25_gcq_setup_cfgs._entry, ptr @mx25_gcq_setup_cfgs._entry.21, ptr @mx25_gcq_setup_cfgs._entry.26, ptr @mx25_gcq_setup_cfgs._entry.29, ptr @mx25_gcq_setup_cfgs._entry.32, ptr @mx25_gcq_setup_cfgs._entry_ptr, ptr @mx25_gcq_setup_cfgs._entry_ptr.23, ptr @mx25_gcq_setup_cfgs._entry_ptr.28, ptr @mx25_gcq_setup_cfgs._entry_ptr.31, ptr @mx25_gcq_setup_cfgs._entry_ptr.34, ptr @mx25_gcq_driver, ptr @.str, ptr @mx25_gcq_ids, ptr @mx25_gcq_probe._key, ptr @mx25_gcq_regconfig, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mx25_gcq_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @mx25_gcq_channels, ptr @mx25_gcq_iio_info, ptr @.str.15, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @mx25_gcq_refp_names, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_regconfig to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_setup_cfgs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_setup_cfgs._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_setup_cfgs._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_setup_cfgs._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_setup_cfgs._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_refp_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_get_raw_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_gcq_get_raw_value._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_gcq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mx25_gcq_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx25_gcq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mx25_gcq_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_gcq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg_name.i.i = alloca [12 x i8], align 1
  %reg.i = alloca i32, align 4
  %refp.i = alloca i32, align 4
  %refn.i = alloca i32, align 4
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
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 208) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call5, ptr noundef nonnull @mx25_gcq_regconfig, ptr noundef nonnull @mx25_gcq_probe._key, ptr noundef nonnull @.str.1) #6
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %5, align 4
  %cmp.i135 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %do.end, label %do.body17

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

do.body17:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.mx25_gcq_priv, ptr %5, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mx25_gcq_probe.__key) #6
  %completed = getelementptr inbounds %struct.mx25_gcq_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %completed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completed, align 4
  %wait.i = getelementptr inbounds %struct.mx25_gcq_priv, ptr %5, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #6
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 64, i32 noundef 6028) #6
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.1.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 68, i32 noundef 6044) #6
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call.2.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 72, i32 noundef 6060) #6
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.3.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 76, i32 noundef 6076) #6
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.4.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 80, i32 noundef 6092) #6
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %call.5.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 84, i32 noundef 6108) #6
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %call.6.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 88, i32 noundef 6124) #6
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %call.7.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 92, i32 noundef 6140) #6
  %call4.i = tail call ptr @of_get_next_child(ptr noundef %13, ptr noundef null) #6
  %cmp6.not129.i = icmp eq ptr %call4.i, null
  br i1 %cmp6.not129.i, label %do.body17.mx25_gcq_setup_cfgs.exit_crit_edge, label %do.body17.for.body7.i_crit_edge

do.body17.for.body7.i_crit_edge:                  ; preds = %do.body17
  br label %for.body7.i

do.body17.mx25_gcq_setup_cfgs.exit_crit_edge:     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %mx25_gcq_setup_cfgs.exit

for.body7.i:                                      ; preds = %for.inc54.i.for.body7.i_crit_edge, %do.body17.for.body7.i_crit_edge
  %child.0130.i = phi ptr [ %call55.i, %for.inc54.i.for.body7.i_crit_edge ], [ %call4.i, %do.body17.for.body7.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %reg.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refp.i) #6
  %31 = ptrtoint ptr %refp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 384, ptr %refp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refn.i) #6
  %32 = ptrtoint ptr %refn.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %refn.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0130.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %mx25_gcq_setup_cfgs.exit.thread

if.end.i:                                         ; preds = %for.body7.i
  %33 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp9.i = icmp ugt i32 %34, 7
  br i1 %cmp9.i, label %do.end13.i, label %if.end14.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %mx25_gcq_setup_cfgs.exit.thread

if.end14.i:                                       ; preds = %if.end.i
  %call.i.i97.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0130.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %refp.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i98.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0130.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %refn.i, i32 noundef 1, i32 noundef 0) #6
  %35 = ptrtoint ptr %refp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %refp.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.end31.i [
    i32 2, label %if.end14.i.sw.bb.i_crit_edge
    i32 1, label %if.end14.i.sw.bb.i_crit_edge284
    i32 0, label %if.end14.i.sw.bb.i_crit_edge285
    i32 3, label %sw.bb26.i
  ]

if.end14.i.sw.bb.i_crit_edge285:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end14.i.sw.bb.i_crit_edge284:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end14.i.sw.bb.i_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end14.i.sw.bb.i_crit_edge, %if.end14.i.sw.bb.i_crit_edge284, %if.end14.i.sw.bb.i_crit_edge285
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg_name.i.i) #6
  %arrayidx.i.i = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 %36
  %38 = call ptr @memset(ptr %reg_name.i.i, i32 255, i32 12)
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.mx25_gcq_ext_regulator_setup.exit.thread.i_crit_edge

sw.bb.i.mx25_gcq_ext_regulator_setup.exit.thread.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mx25_gcq_ext_regulator_setup.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %arrayidx1.i.i = getelementptr [4 x ptr], ptr @mx25_gcq_refp_names, i32 0, i32 %36
  %41 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx1.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %reg_name.i.i, i32 noundef 12, ptr noundef nonnull @.str.35, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %mx25_gcq_ext_regulator_setup.exit.thread103.i, label %if.end3.i.i

mx25_gcq_ext_regulator_setup.exit.thread103.i:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg_name.i.i) #6
  br label %mx25_gcq_setup_cfgs.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull %reg_name.i.i) #6
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mx25_gcq_ext_regulator_setup.exit.i, label %if.end3.i.i.mx25_gcq_ext_regulator_setup.exit.thread.i_crit_edge

if.end3.i.i.mx25_gcq_ext_regulator_setup.exit.thread.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mx25_gcq_ext_regulator_setup.exit.thread.i

mx25_gcq_ext_regulator_setup.exit.thread.i:       ; preds = %if.end3.i.i.mx25_gcq_ext_regulator_setup.exit.thread.i_crit_edge, %sw.bb.i.mx25_gcq_ext_regulator_setup.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg_name.i.i) #6
  br label %if.end21.i

mx25_gcq_ext_regulator_setup.exit.i:              ; preds = %if.end3.i.i
  %44 = ptrtoint ptr %call5.i.i to i32
  %call16.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %44, ptr noundef nonnull @.str.36, ptr noundef nonnull %reg_name.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg_name.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool19.not.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool19.not.i, label %mx25_gcq_ext_regulator_setup.exit.i.if.end21.i_crit_edge, label %mx25_gcq_ext_regulator_setup.exit.i.mx25_gcq_setup_cfgs.exit.thread_crit_edge

mx25_gcq_ext_regulator_setup.exit.i.mx25_gcq_setup_cfgs.exit.thread_crit_edge: ; preds = %mx25_gcq_ext_regulator_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mx25_gcq_setup_cfgs.exit.thread

mx25_gcq_ext_regulator_setup.exit.i.if.end21.i_crit_edge: ; preds = %mx25_gcq_ext_regulator_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %mx25_gcq_ext_regulator_setup.exit.i.if.end21.i_crit_edge, %mx25_gcq_ext_regulator_setup.exit.thread.i
  %45 = ptrtoint ptr %refp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %refp.i, align 4
  %arrayidx.i = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %call22.i = call i32 @regulator_get_voltage(ptr noundef %48) #6
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg.i, align 4
  %arrayidx25.i = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 5, i32 %50
  %div.i = udiv i32 %call22.i, 1000
  %51 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div.i, ptr %arrayidx25.i, align 4
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg.i, align 4
  %arrayidx28.i = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 5, i32 %53
  %54 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2500, ptr %arrayidx28.i, align 4
  br label %sw.epilog.i

do.end31.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %36) #9
  br label %mx25_gcq_setup_cfgs.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb26.i, %if.end21.i
  %55 = ptrtoint ptr %refp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refp.i, align 4
  %shl32.i = shl i32 %56, 7
  store i32 %shl32.i, ptr %refp.i, align 4
  %57 = ptrtoint ptr %refn.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %refn.i, align 4
  %shl33.i = shl i32 %58, 2
  store i32 %shl33.i, ptr %refn.i, align 4
  %and.i = and i32 %shl32.i, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shl32.i)
  %cmp34.not.i = icmp eq i32 %and.i, %shl32.i
  br i1 %cmp34.not.i, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %mx25_gcq_setup_cfgs.exit.thread

if.end39.i:                                       ; preds = %sw.epilog.i
  %and40.i = and i32 %shl33.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %and40.i, i32 %shl33.i)
  %cmp41.not.i = icmp eq i32 %and40.i, %shl33.i
  br i1 %cmp41.not.i, label %for.inc54.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %mx25_gcq_setup_cfgs.exit.thread

mx25_gcq_setup_cfgs.exit.thread:                  ; preds = %do.end45.i, %do.end38.i, %do.end31.i, %mx25_gcq_ext_regulator_setup.exit.i.mx25_gcq_setup_cfgs.exit.thread_crit_edge, %mx25_gcq_ext_regulator_setup.exit.thread103.i, %do.end13.i, %do.end.i
  %retval.1.ph.i = phi i32 [ %call.i.i.i, %do.end.i ], [ -22, %do.end13.i ], [ -22, %do.end31.i ], [ -22, %do.end38.i ], [ -22, %do.end45.i ], [ %call.i.i, %mx25_gcq_ext_regulator_setup.exit.thread103.i ], [ %call16.i.i, %mx25_gcq_ext_regulator_setup.exit.i.mx25_gcq_setup_cfgs.exit.thread_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0130.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refn.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

for.inc54.i:                                      ; preds = %if.end39.i
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg.i, align 4
  %mul48.i = shl i32 %62, 2
  %add49.i = add i32 %mul48.i, 64
  %or50.i = or i32 %shl33.i, %shl32.i
  %call.i99.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %add49.i, i32 noundef 396, i32 noundef %or50.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refn.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %call55.i = call ptr @of_get_next_child(ptr noundef %13, ptr noundef nonnull %child.0130.i) #6
  %cmp6.not.i = icmp eq ptr %call55.i, null
  br i1 %cmp6.not.i, label %for.inc54.i.mx25_gcq_setup_cfgs.exit_crit_edge, label %for.inc54.i.for.body7.i_crit_edge

for.inc54.i.for.body7.i_crit_edge:                ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.inc54.i.mx25_gcq_setup_cfgs.exit_crit_edge:   ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mx25_gcq_setup_cfgs.exit

mx25_gcq_setup_cfgs.exit:                         ; preds = %for.inc54.i.mx25_gcq_setup_cfgs.exit_crit_edge, %do.body17.mx25_gcq_setup_cfgs.exit_crit_edge
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %call.i100.i = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 4, i32 noundef 196608, i32 noundef 196608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 4
  %call60.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 4, i32 noundef 262146) #6
  %arrayidx = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 0
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %68, null
  br i1 %tobool24.not, label %mx25_gcq_setup_cfgs.exit.for.inc_crit_edge, label %if.end26

mx25_gcq_setup_cfgs.exit.for.inc_crit_edge:       ; preds = %mx25_gcq_setup_cfgs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end26:                                         ; preds = %mx25_gcq_setup_cfgs.exit
  %call29 = call i32 @regulator_enable(ptr noundef nonnull %68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end26.for.inc_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %mx25_gcq_setup_cfgs.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.1, align 4
  %tobool24.not.1 = icmp eq ptr %70, null
  br i1 %tobool24.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end26.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end26.1:                                       ; preds = %for.inc
  %call29.1 = call i32 @regulator_enable(ptr noundef nonnull %70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %tobool30.not.1 = icmp eq i32 %call29.1, 0
  br i1 %tobool30.not.1, label %if.end26.1.for.inc.1_crit_edge, label %if.end26.1.for.body67_crit_edge

if.end26.1.for.body67_crit_edge:                  ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

if.end26.1.for.inc.1_crit_edge:                   ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end26.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.2, align 4
  %tobool24.not.2 = icmp eq ptr %72, null
  br i1 %tobool24.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end26.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end26.2:                                       ; preds = %for.inc.1
  %call29.2 = call i32 @regulator_enable(ptr noundef nonnull %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2)
  %tobool30.not.2 = icmp eq i32 %call29.2, 0
  br i1 %tobool30.not.2, label %if.end26.2.for.inc.2_crit_edge, label %if.end26.2.for.body67_crit_edge

if.end26.2.for.body67_crit_edge:                  ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

if.end26.2.for.inc.2_crit_edge:                   ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end26.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 3
  %73 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.3, align 4
  %tobool24.not.3 = icmp eq ptr %74, null
  br i1 %tobool24.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end26.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end26.3:                                       ; preds = %for.inc.2
  %call29.3 = call i32 @regulator_enable(ptr noundef nonnull %74) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3)
  %tobool30.not.3 = icmp eq i32 %call29.3, 0
  br i1 %tobool30.not.3, label %if.end26.3.for.inc.3_crit_edge, label %if.end26.3.for.body67_crit_edge

if.end26.3.for.body67_crit_edge:                  ; preds = %if.end26.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

if.end26.3.for.inc.3_crit_edge:                   ; preds = %if.end26.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end26.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %clk = getelementptr inbounds %struct.mx25_tsadc, ptr %3, i32 0, i32 2
  %75 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk, align 4
  %clk33 = getelementptr inbounds %struct.mx25_gcq_priv, ptr %5, i32 0, i32 2
  %77 = ptrtoint ptr %clk33 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %clk33, align 4
  %call.i136 = call i32 @clk_prepare(ptr noundef %76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %if.end.i138, label %for.inc.3.do.end40_crit_edge

for.inc.3.do.end40_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

if.end.i138:                                      ; preds = %for.inc.3
  %call1.i = call i32 @clk_enable(ptr noundef %76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %76) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then3.i, %for.inc.3.do.end40_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i136, %for.inc.3.do.end40_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %for.body67

if.end41:                                         ; preds = %if.end.i138
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.err_clk_unprepare_crit_edge, label %if.end45

if.end41.err_clk_unprepare_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_unprepare

if.end45:                                         ; preds = %if.end41
  %irq = getelementptr inbounds %struct.mx25_gcq_priv, ptr %5, i32 0, i32 3
  %78 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call42, ptr %irq, align 4
  %79 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev, align 8
  %call.i139 = call i32 @request_threaded_irq(i32 noundef %call42, ptr noundef nonnull @mx25_gcq_irq, ptr noundef null, i32 noundef 0, ptr noundef %80, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool48.not = icmp eq i32 %call.i139, 0
  br i1 %tobool48.not, label %if.end53, label %do.end52

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %err_clk_unprepare

if.end53:                                         ; preds = %if.end45
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %81 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @mx25_gcq_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %82 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %83 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mx25_gcq_iio_info, ptr %info, align 8
  %name54 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %84 = ptrtoint ptr %name54 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str, ptr %name54, align 8
  %call55 = call i32 @__iio_device_register(ptr noundef nonnull %call3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %85 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq, align 4
  %call63 = call ptr @free_irq(i32 noundef %86, ptr noundef %5) #6
  br label %err_clk_unprepare

if.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %87 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call3, ptr %driver_data.i.i, align 4
  br label %cleanup

err_clk_unprepare:                                ; preds = %do.end60, %do.end52, %if.end41.err_clk_unprepare_crit_edge
  %ret.0 = phi i32 [ %call42, %if.end41.err_clk_unprepare_crit_edge ], [ %call.i139, %do.end52 ], [ %call55, %do.end60 ]
  %88 = ptrtoint ptr %clk33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk33, align 4
  call void @clk_disable(ptr noundef %89) #6
  call void @clk_unprepare(ptr noundef %89) #6
  br label %for.body67

for.body67:                                       ; preds = %err_clk_unprepare, %do.end40, %if.end26.3.for.body67_crit_edge, %if.end26.2.for.body67_crit_edge, %if.end26.1.for.body67_crit_edge
  %cmp66 = phi i1 [ true, %do.end40 ], [ true, %err_clk_unprepare ], [ false, %if.end26.1.for.body67_crit_edge ], [ true, %if.end26.2.for.body67_crit_edge ], [ true, %if.end26.3.for.body67_crit_edge ]
  %i.0146.ph = phi i32 [ 4, %do.end40 ], [ 4, %err_clk_unprepare ], [ 1, %if.end26.1.for.body67_crit_edge ], [ 2, %if.end26.2.for.body67_crit_edge ], [ 3, %if.end26.3.for.body67_crit_edge ]
  %ret.2.ph = phi i32 [ %retval.0.i.ph, %do.end40 ], [ %ret.0, %err_clk_unprepare ], [ %call29.1, %if.end26.1.for.body67_crit_edge ], [ %call29.2, %if.end26.2.for.body67_crit_edge ], [ %call29.3, %if.end26.3.for.body67_crit_edge ]
  %dec172 = add nsw i32 %i.0146.ph, -1
  %arrayidx69 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 %dec172
  %90 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %91, null
  br i1 %tobool70.not, label %for.body67.if.end75_crit_edge, label %if.then71

for.body67.if.end75_crit_edge:                    ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then71:                                        ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = call i32 @regulator_disable(ptr noundef nonnull %91) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %for.body67.if.end75_crit_edge
  br i1 %cmp66, label %for.body67.1, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body67.1:                                     ; preds = %if.end75
  %dec172.1 = add nsw i32 %i.0146.ph, -2
  %arrayidx69.1 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 %dec172.1
  %92 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx69.1, align 4
  %tobool70.not.1 = icmp eq ptr %93, null
  br i1 %tobool70.not.1, label %for.body67.1.if.end75.1_crit_edge, label %if.then71.1

for.body67.1.if.end75.1_crit_edge:                ; preds = %for.body67.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.1

if.then71.1:                                      ; preds = %for.body67.1
  call void @__sanitizer_cov_trace_pc() #8
  %call74.1 = call i32 @regulator_disable(ptr noundef nonnull %93) #6
  br label %if.end75.1

if.end75.1:                                       ; preds = %if.then71.1, %for.body67.1.if.end75.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec172)
  %cmp66.1 = icmp ugt i32 %dec172, 1
  br i1 %cmp66.1, label %for.body67.2, label %if.end75.1.cleanup_crit_edge

if.end75.1.cleanup_crit_edge:                     ; preds = %if.end75.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body67.2:                                     ; preds = %if.end75.1
  %dec172.2 = add nsw i32 %i.0146.ph, -3
  %arrayidx69.2 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 %dec172.2
  %94 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx69.2, align 4
  %tobool70.not.2 = icmp eq ptr %95, null
  br i1 %tobool70.not.2, label %for.body67.2.if.end75.2_crit_edge, label %if.then71.2

for.body67.2.if.end75.2_crit_edge:                ; preds = %for.body67.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.2

if.then71.2:                                      ; preds = %for.body67.2
  call void @__sanitizer_cov_trace_pc() #8
  %call74.2 = call i32 @regulator_disable(ptr noundef nonnull %95) #6
  br label %if.end75.2

if.end75.2:                                       ; preds = %if.then71.2, %for.body67.2.if.end75.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec172.1)
  %cmp66.2 = icmp ugt i32 %dec172.1, 1
  br i1 %cmp66.2, label %for.body67.3, label %if.end75.2.cleanup_crit_edge

if.end75.2.cleanup_crit_edge:                     ; preds = %if.end75.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body67.3:                                     ; preds = %if.end75.2
  %dec172.3 = add nsw i32 %i.0146.ph, -4
  %arrayidx69.3 = getelementptr %struct.mx25_gcq_priv, ptr %5, i32 0, i32 4, i32 %dec172.3
  %96 = ptrtoint ptr %arrayidx69.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx69.3, align 4
  %tobool70.not.3 = icmp eq ptr %97, null
  br i1 %tobool70.not.3, label %for.body67.3.cleanup_crit_edge, label %if.then71.3

for.body67.3.cleanup_crit_edge:                   ; preds = %for.body67.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then71.3:                                      ; preds = %for.body67.3
  call void @__sanitizer_cov_trace_pc() #8
  %call74.3 = call i32 @regulator_disable(ptr noundef nonnull %97) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then71.3, %for.body67.3.cleanup_crit_edge, %if.end75.2.cleanup_crit_edge, %if.end75.1.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end61, %if.end26.cleanup_crit_edge, %mx25_gcq_setup_cfgs.exit.thread, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ %10, %do.end ], [ 0, %if.end61 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.1.ph.i, %mx25_gcq_setup_cfgs.exit.thread ], [ %call29, %if.end26.cleanup_crit_edge ], [ %ret.2.ph, %for.body67.3.cleanup_crit_edge ], [ %ret.2.ph, %if.then71.3 ], [ %ret.2.ph, %if.end75.2.cleanup_crit_edge ], [ %ret.2.ph, %if.end75.1.cleanup_crit_edge ], [ %ret.2.ph, %if.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_gcq_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %irq = getelementptr inbounds %struct.mx25_gcq_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #6
  %clk = getelementptr inbounds %struct.mx25_gcq_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %arrayidx = getelementptr %struct.mx25_gcq_priv, ptr %3, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr %struct.mx25_gcq_priv, ptr %3, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5.1 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #6
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mx25_gcq_priv, ptr %3, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %call5.2 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #6
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mx25_gcq_priv, ptr %3, i32 0, i32 4, i32 0
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %15, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %call5.3 = tail call i32 @regulator_disable(ptr noundef nonnull %15) #6
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_gcq_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %stats = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats) #6
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stats, align 4, !annotation !122
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %stats) #6
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stats, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 12, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %completed = getelementptr inbounds %struct.mx25_gcq_priv, ptr %data, i32 0, i32 1
  call void @complete(ptr noundef %completed) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call.i11 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef 8, i32 noundef 115) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_gcq_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.mx25_gcq_priv, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data.i, align 4, !annotation !122
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 32, i32 noundef %7) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %completed.i = getelementptr inbounds %struct.mx25_gcq_priv, ptr %1, i32 0, i32 1
  %call6.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %completed.i, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  br label %mx25_gcq_get_raw_value.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end12.i

do.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #9
  br label %mx25_gcq_get_raw_value.exit

if.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call14.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %data.i) #6
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.i, align 4
  %shr.i = lshr i32 %15, 4
  %and.i = and i32 %shr.i, 4095
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %val, align 4
  br label %mx25_gcq_get_raw_value.exit

mx25_gcq_get_raw_value.exit:                      ; preds = %if.end12.i, %do.end11.i, %do.end.i
  %retval.0.i = phi i32 [ %call6.i, %do.end.i ], [ -110, %do.end11.i ], [ 1, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.mx25_gcq_priv, ptr %1, i32 0, i32 5, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %mx25_gcq_get_raw_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb3 ], [ %retval.0.i, %mx25_gcq_get_raw_value.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_fsl_imx25_gcq__288_418_mx25_gcq_driver_init6, !1, !"__initcall__kmod_fsl_imx25_gcq__288_418_mx25_gcq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 418, i32 1}
!2 = !{ptr @__exitcall_mx25_gcq_driver_exit, !1, !"__exitcall_mx25_gcq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 420, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 421, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 422, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 412, i32 11}
!12 = !{ptr @mx25_gcq_driver, !13, !"mx25_gcq_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 410, i32 31}
!14 = !{ptr @mx25_gcq_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 317, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 319, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mx25_gcq_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mx25_gcq_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mx25_gcq_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 323, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 343, i32 3}
!30 = !{ptr @mx25_gcq_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mx25_gcq_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 354, i32 3}
!34 = !{ptr @mx25_gcq_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mx25_gcq_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 365, i32 3}
!38 = !{ptr @mx25_gcq_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mx25_gcq_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mx25_gcq_regconfig, !41, !"mx25_gcq_regconfig", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 168, i32 35}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 224, i32 37}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 226, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mx25_gcq_setup_cfgs._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mx25_gcq_setup_cfgs._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 232, i32 4}
!54 = !{ptr @mx25_gcq_setup_cfgs._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mx25_gcq_setup_cfgs._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 238, i32 31}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 239, i32 31}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 259, i32 4}
!62 = !{ptr @mx25_gcq_setup_cfgs._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mx25_gcq_setup_cfgs._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 272, i32 4}
!66 = !{ptr @mx25_gcq_setup_cfgs._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mx25_gcq_setup_cfgs._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 277, i32 4}
!70 = !{ptr @mx25_gcq_setup_cfgs._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mx25_gcq_setup_cfgs._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 184, i32 45}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 192, i32 10}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 75, i32 23}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 76, i32 23}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 78, i32 24}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 77, i32 24}
!84 = !{ptr @mx25_gcq_refp_names, !85, !"mx25_gcq_refp_names", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 74, i32 27}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 66, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 67, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 68, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 69, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 70, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 71, i32 2}
!98 = !{ptr @mx25_gcq_channels, !99, !"mx25_gcq_channels", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 63, i32 35}
!100 = !{ptr @mx25_gcq_iio_info, !101, !"mx25_gcq_iio_info", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 164, i32 30}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 126, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mx25_gcq_get_raw_value._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @mx25_gcq_get_raw_value._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 129, i32 3}
!109 = !{ptr @mx25_gcq_get_raw_value._entry.49, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mx25_gcq_get_raw_value._entry_ptr.51, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @mx25_gcq_ids, !112, !"mx25_gcq_ids", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/fsl-imx25-gcq.c", i32 404, i32 34}
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
