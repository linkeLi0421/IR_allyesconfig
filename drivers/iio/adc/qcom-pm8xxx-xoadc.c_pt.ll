; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/qcom-pm8xxx-xoadc.c_pt.bc'
source_filename = "../drivers/iio/adc/qcom-pm8xxx-xoadc.c"
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
%struct.atomic_t = type { i32 }
%struct.xoadc_variant = type { [16 x i8], ptr, i8, i8, i8 }
%struct.xoadc_channel = type { ptr, i8, %struct.vadc_prescale_ratio, i32, i32, i8 }
%struct.vadc_prescale_ratio = type { i32, i32 }
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
%struct.pm8xxx_xoadc = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, [2 x %struct.vadc_linear_graph], %struct.completion, %struct.mutex }
%struct.vadc_linear_graph = type { i32, i32, i32 }
%struct.pm8xxx_chan_info = type { ptr, ptr, i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_qcom_pm8xxx_xoadc__292_1025_pm8xxx_xoadc_driver_init6 = internal global ptr @pm8xxx_xoadc_driver_init, section ".initcall6.init", align 4
@pm8xxx_xoadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8xxx_xoadc_probe, ptr @pm8xxx_xoadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_xoadc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8xxx_xoadc_driver_exit = internal global ptr @pm8xxx_xoadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [50 x i8] c"qcom_pm8xxx_xoadc.description=PM8xxx XOADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [57 x i8] c"qcom_pm8xxx_xoadc.file=drivers/iio/adc/qcom-pm8xxx-xoadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [33 x i8] c"qcom_pm8xxx_xoadc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [46 x i8] c"qcom_pm8xxx_xoadc.alias=platform:pm8xxx-xoadc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm8xxx-adc\00", [21 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_id_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8018_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8038-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8038_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8058_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8921_variant }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 912, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parent regmap unavailable.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8xxx_xoadc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/adc/qcom-pm8xxx-xoadc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry_ptr = internal global ptr @pm8xxx_xoadc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xoadc-ref\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get XOADC VREF regulator\0A\00", [60 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 924, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable XOADC VREF regulator\0A\00", [57 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry_ptr.11 = internal global ptr @pm8xxx_xoadc_probe._entry.9, section ".printk_index", align 4
@pm8xxx_xoadc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 931, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry_ptr.14 = internal global ptr @pm8xxx_xoadc_probe._entry.12, section ".printk_index", align 4
@pm8xxx_xoadc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @pm8xxx_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_of_xlate, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 949, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s XOADC driver enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_probe._entry_ptr.18 = internal global ptr @pm8xxx_xoadc_probe._entry.15, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channel children\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm8xxx_xoadc_parse_channels\00", [36 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channels._entry_ptr = internal global ptr @pm8xxx_xoadc_parse_channels._entry, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channels.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_pm8xxx_xoadc\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"found %d ADC channels\0A\00", [41 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channels._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.4, i32 864, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing 1.25V reference channel\0A\00", [63 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channels._entry_ptr.26 = internal global ptr @pm8xxx_xoadc_parse_channels._entry.24, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channels._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.4, i32 869, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"missing 0.625V reference channel\0A\00", [62 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channels._entry_ptr.29 = internal global ptr @pm8xxx_xoadc_parse_channels._entry.27, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channels._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.4, i32 874, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"missing MUXOFF reference channel\0A\00", [62 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channels._entry_ptr.32 = internal global ptr @pm8xxx_xoadc_parse_channels._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 747, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid pre scale/mux number %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pm8xxx_xoadc_parse_channel\00", [37 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry_ptr = internal global ptr @pm8xxx_xoadc_parse_channel._entry, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channel._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 752, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid amux channel number %s\0A\00", [32 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry_ptr.38 = internal global ptr @pm8xxx_xoadc_parse_channel._entry.36, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channel._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 769, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not locate channel %02x/%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry_ptr.41 = internal global ptr @pm8xxx_xoadc_parse_channel._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,ratiometric\00", [47 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.4, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s too large RSV value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry_ptr.45 = internal global ptr @pm8xxx_xoadc_parse_channel._entry.43, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channel._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.4, i32 786, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s invalid RSV value %d\0A\00", [39 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry_ptr.48 = internal global ptr @pm8xxx_xoadc_parse_channel._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,decimation\00", [16 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.35, ptr @.str.4, i32 797, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s invalid decimation %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pm8xxx_xoadc_parse_channel._entry_ptr.52 = internal global ptr @pm8xxx_xoadc_parse_channel._entry.50, section ".printk_index", align 4
@pm8xxx_xoadc_parse_channel.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.35, ptr @.str.4, ptr @.str.53, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"channel [PRESCALE/MUX: %02x AMUX: %02x] \22%s\22 ref voltage: %d, decimation %d prescale %d/%d, scale function %d\0A\00", [49 x i8] zeroinitializer }, align 32
@pm8xxx_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 661, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no such channel %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pm8xxx_read_raw\00", [16 x i8] zeroinitializer }, align 32
@pm8xxx_read_raw._entry_ptr = internal global ptr @pm8xxx_read_raw._entry, section ".printk_index", align 4
@pm8xxx_read_raw._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 681, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_read_raw._entry_ptr.57 = internal global ptr @pm8xxx_read_raw._entry.56, section ".printk_index", align 4
@pm8xxx_read_channel_rsv.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pm8xxx_read_channel_rsv\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"read channel \22%s\22, amux %d, prescale/mux: %d, rsv %d\0A\00", [42 x i8] zeroinitializer }, align 32
@pm8xxx_read_channel_rsv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"conversion timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@pm8xxx_read_channel_rsv._entry_ptr = internal global ptr @pm8xxx_read_channel_rsv._entry, section ".printk_index", align 4
@pm8xxx_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wrong number of arguments for %pOFn need 2 got %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pm8xxx_of_xlate\00", [16 x i8] zeroinitializer }, align 32
@pm8xxx_of_xlate._entry_ptr = internal global ptr @pm8xxx_of_xlate._entry, section ".printk_index", align 4
@pm8xxx_of_xlate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pre scale/mux: %02x, amux: %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 598, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not read 1.25V reference channel\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pm8xxx_calibrate_device\00", [40 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr = internal global ptr @pm8xxx_calibrate_device._entry, section ".printk_index", align 4
@pm8xxx_calibrate_device._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 606, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not read 0.625V reference channel\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr.68 = internal global ptr @pm8xxx_calibrate_device._entry.66, section ".printk_index", align 4
@pm8xxx_calibrate_device._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.4, i32 610, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"read same ADC code for 1.25V and 0.625V\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr.71 = internal global ptr @pm8xxx_calibrate_device._entry.69, section ".printk_index", align 4
@pm8xxx_calibrate_device._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.4, i32 618, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"absolute calibration dx = %d uV, dy = %d units\0A\00", [48 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr.74 = internal global ptr @pm8xxx_calibrate_device._entry.72, section ".printk_index", align 4
@pm8xxx_calibrate_device._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.4, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not read MUXOFF reference channel\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr.77 = internal global ptr @pm8xxx_calibrate_device._entry.75, section ".printk_index", align 4
@pm8xxx_calibrate_device._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.4, i32 633, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr.79 = internal global ptr @pm8xxx_calibrate_device._entry.78, section ".printk_index", align 4
@pm8xxx_calibrate_device._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.65, ptr @.str.4, i32 642, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ratiometric calibration dx = %d, dy = %d units\0A\00", [48 x i8] zeroinitializer }, align 32
@pm8xxx_calibrate_device._entry_ptr.82 = internal global ptr @pm8xxx_calibrate_device._entry.80, section ".printk_index", align 4
@pm8018_variant = internal constant { %struct.xoadc_variant, [40 x i8] } { %struct.xoadc_variant { [16 x i8] c"PM8018-XOADC\00\00\00\00", ptr @pm8018_xoadc_channels, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@pm8038_variant = internal constant { %struct.xoadc_variant, [40 x i8] } { %struct.xoadc_variant { [16 x i8] c"PM8038-XOADC\00\00\00\00", ptr @pm8038_xoadc_channels, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@pm8058_variant = internal constant { %struct.xoadc_variant, [40 x i8] } { %struct.xoadc_variant { [16 x i8] c"PM8058-XOADC\00\00\00\00", ptr @pm8058_xoadc_channels, i8 1, i8 1, i8 0 }, [40 x i8] zeroinitializer }, align 32
@pm8921_variant = internal constant { %struct.xoadc_variant, [40 x i8] } { %struct.xoadc_variant { [16 x i8] c"PM8921-XOADC\00\00\00\00", ptr @pm8921_xoadc_channels, i8 0, i8 0, i8 1 }, [40 x i8] zeroinitializer }, align 32
@pm8018_xoadc_channels = internal constant { [9 x %struct.xoadc_channel], [36 x i8] } { [9 x %struct.xoadc_channel] [%struct.xoadc_channel { ptr @.str.83, i8 0, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.84, i8 4, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.85, i8 8, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.86, i8 44, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 2, i8 32 }, %struct.xoadc_channel { ptr @.str.87, i8 32, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 64 }, %struct.xoadc_channel { ptr @.str.88, i8 48, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.89, i8 52, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.90, i8 60, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 3, i8 0 }, %struct.xoadc_channel zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCOIN\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VPH_PWR\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIE_TEMP\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX8\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INTERNAL\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"125V\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUXOFF\00", [25 x i8] zeroinitializer }, align 32
@pm8038_xoadc_channels = internal constant { [17 x %struct.xoadc_channel], [100 x i8] } { [17 x %struct.xoadc_channel] [%struct.xoadc_channel { ptr @.str.83, i8 0, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.84, i8 4, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.91, i8 8, %struct.vadc_prescale_ratio { i32 1, i32 6 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.92, i8 12, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.85, i8 16, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.93, i8 20, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.94, i8 24, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.95, i8 28, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.87, i8 32, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 1, i8 64 }, %struct.xoadc_channel { ptr @.str.96, i8 36, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.97, i8 40, %struct.vadc_prescale_ratio { i32 1, i32 4 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.86, i8 44, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 2, i8 32 }, %struct.xoadc_channel { ptr @.str.88, i8 48, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.89, i8 52, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.98, i8 56, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.90, i8 60, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 3, i8 0 }, %struct.xoadc_channel zeroinitializer], [100 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCIN\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ICHG\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX5\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX6\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX7\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX9\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB_VBUS\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INTERNAL_2\00", [21 x i8] zeroinitializer }, align 32
@pm8058_xoadc_channels = internal constant { [17 x %struct.xoadc_channel], [100 x i8] } { [17 x %struct.xoadc_channel] [%struct.xoadc_channel { ptr @.str.83, i8 0, %struct.vadc_prescale_ratio { i32 1, i32 2 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.84, i8 4, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.91, i8 8, %struct.vadc_prescale_ratio { i32 1, i32 10 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.92, i8 12, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.85, i8 16, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.93, i8 20, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.94, i8 24, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.95, i8 28, %struct.vadc_prescale_ratio { i32 1, i32 2 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.87, i8 32, %struct.vadc_prescale_ratio { i32 1, i32 2 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.96, i8 36, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.97, i8 40, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.86, i8 44, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 2, i8 32 }, %struct.xoadc_channel { ptr @.str.88, i8 48, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.89, i8 52, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.98, i8 56, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.90, i8 60, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 3, i8 0 }, %struct.xoadc_channel zeroinitializer], [100 x i8] zeroinitializer }, align 32
@pm8921_xoadc_channels = internal constant { [46 x %struct.xoadc_channel], [344 x i8] } { [46 x %struct.xoadc_channel] [%struct.xoadc_channel { ptr @.str.83, i8 0, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.84, i8 4, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.91, i8 8, %struct.vadc_prescale_ratio { i32 1, i32 6 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.85, i8 16, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.99, i8 20, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.100, i8 32, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 1, i8 32 }, %struct.xoadc_channel { ptr @.str.101, i8 36, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.97, i8 40, %struct.vadc_prescale_ratio { i32 1, i32 4 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.86, i8 44, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 2, i8 32 }, %struct.xoadc_channel { ptr @.str.88, i8 48, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.89, i8 52, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.102, i8 56, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.90, i8 60, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 9, i32 3, i8 0 }, %struct.xoadc_channel { ptr @.str.103, i8 64, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.104, i8 68, %struct.vadc_prescale_ratio { i32 1, i32 2 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.105, i8 72, %struct.vadc_prescale_ratio { i32 1, i32 2 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.106, i8 76, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.107, i8 80, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.93, i8 84, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.94, i8 88, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.95, i8 92, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.87, i8 96, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.108, i8 100, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.109, i8 104, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.110, i8 108, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.111, i8 112, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.112, i8 116, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.113, i8 120, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.114, i8 124, %struct.vadc_prescale_ratio { i32 1, i32 1 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.103, i8 -128, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.115, i8 -124, %struct.vadc_prescale_ratio { i32 1, i32 6 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.116, i8 -120, %struct.vadc_prescale_ratio { i32 1, i32 6 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.117, i8 -116, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.118, i8 -112, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.119, i8 -108, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.120, i8 -104, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.121, i8 -100, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.122, i8 -96, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.123, i8 -92, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.124, i8 -88, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.125, i8 -84, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.126, i8 -80, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.127, i8 -76, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.128, i8 -72, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel { ptr @.str.129, i8 -68, %struct.vadc_prescale_ratio { i32 1, i32 3 }, i32 0, i32 0, i8 32 }, %struct.xoadc_channel zeroinitializer], [344 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BATT_THERM\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BATT_ID\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHG_TEMP\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_8\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB_SNS_DIV20\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DCIN_SNS_DIV20\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX3\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMUX4\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_1\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_2\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_3\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_4\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_5\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_6\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATEST_7\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB_SNS_DIV20_DIV3\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DCIN_SNS_DIV20_DIV3\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMUX3_DIV3\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMUX4_DIV3\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMUX5_DIV3\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMUX6_DIV3\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMUX7_DIV3\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMUX8_DIV3\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_1_DIV3\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_2_DIV3\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_3_DIV3\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_4_DIV3\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_5_DIV3\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_6_DIV3\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ATEST_7_DIV3\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"pm8xxx_xoadc_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1017, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1019, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [22 x i8] c"pm8xxx_xoadc_id_table\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 996, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 904, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 912, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 918, i32 38 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 921, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 924, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 931, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"pm8xxx_xoadc_info\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 727, i32 30 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 949, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 87, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 832, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 835, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 864, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 869, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 874, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 745, i32 39 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 747, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 752, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 768, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 779, i32 32 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 782, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 786, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 792, i32 33 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 796, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 812, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 660, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 680, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 447, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 540, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 708, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 715, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 598, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 606, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 610, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 617, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 627, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 633, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 640, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [15 x i8] c"pm8018_variant\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 973, i32 35 }
@___asan_gen_.364 = private unnamed_addr constant [15 x i8] c"pm8038_variant\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 978, i32 35 }
@___asan_gen_.367 = private unnamed_addr constant [15 x i8] c"pm8058_variant\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 983, i32 35 }
@___asan_gen_.370 = private unnamed_addr constant [15 x i8] c"pm8921_variant\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 990, i32 35 }
@___asan_gen_.373 = private unnamed_addr constant [22 x i8] c"pm8018_xoadc_channels\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 231, i32 35 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 232, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 233, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 234, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 235, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 237, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 238, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 239, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 240, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [22 x i8] c"pm8038_xoadc_channels\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 248, i32 35 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 251, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 252, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 254, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 255, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 256, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 259, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 260, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 264, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [22 x i8] c"pm8058_xoadc_channels\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 276, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant [22 x i8] c"pm8921_xoadc_channels\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 310, i32 35 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 316, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 318, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 319, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 325, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 328, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 330, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 331, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 332, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 333, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 339, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 340, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 341, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 342, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 343, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 344, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 345, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 350, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 351, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 352, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 353, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 354, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 355, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 356, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 357, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 358, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 359, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 360, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 361, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 362, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 363, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [39 x i8] c"../drivers/iio/adc/qcom-pm8xxx-xoadc.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 364, i32 2 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_pm8xxx_xoadc_driver_exit, ptr @__initcall__kmod_qcom_pm8xxx_xoadc__292_1025_pm8xxx_xoadc_driver_init6, ptr @pm8xxx_calibrate_device._entry, ptr @pm8xxx_calibrate_device._entry.66, ptr @pm8xxx_calibrate_device._entry.69, ptr @pm8xxx_calibrate_device._entry.72, ptr @pm8xxx_calibrate_device._entry.75, ptr @pm8xxx_calibrate_device._entry.78, ptr @pm8xxx_calibrate_device._entry.80, ptr @pm8xxx_calibrate_device._entry_ptr, ptr @pm8xxx_calibrate_device._entry_ptr.68, ptr @pm8xxx_calibrate_device._entry_ptr.71, ptr @pm8xxx_calibrate_device._entry_ptr.74, ptr @pm8xxx_calibrate_device._entry_ptr.77, ptr @pm8xxx_calibrate_device._entry_ptr.79, ptr @pm8xxx_calibrate_device._entry_ptr.82, ptr @pm8xxx_of_xlate._entry, ptr @pm8xxx_of_xlate._entry_ptr, ptr @pm8xxx_read_channel_rsv._entry, ptr @pm8xxx_read_channel_rsv._entry_ptr, ptr @pm8xxx_read_raw._entry, ptr @pm8xxx_read_raw._entry.56, ptr @pm8xxx_read_raw._entry_ptr, ptr @pm8xxx_read_raw._entry_ptr.57, ptr @pm8xxx_xoadc_driver_exit, ptr @pm8xxx_xoadc_parse_channel._entry, ptr @pm8xxx_xoadc_parse_channel._entry.36, ptr @pm8xxx_xoadc_parse_channel._entry.39, ptr @pm8xxx_xoadc_parse_channel._entry.43, ptr @pm8xxx_xoadc_parse_channel._entry.46, ptr @pm8xxx_xoadc_parse_channel._entry.50, ptr @pm8xxx_xoadc_parse_channel._entry_ptr, ptr @pm8xxx_xoadc_parse_channel._entry_ptr.38, ptr @pm8xxx_xoadc_parse_channel._entry_ptr.41, ptr @pm8xxx_xoadc_parse_channel._entry_ptr.45, ptr @pm8xxx_xoadc_parse_channel._entry_ptr.48, ptr @pm8xxx_xoadc_parse_channel._entry_ptr.52, ptr @pm8xxx_xoadc_parse_channels._entry, ptr @pm8xxx_xoadc_parse_channels._entry.24, ptr @pm8xxx_xoadc_parse_channels._entry.27, ptr @pm8xxx_xoadc_parse_channels._entry.30, ptr @pm8xxx_xoadc_parse_channels._entry_ptr, ptr @pm8xxx_xoadc_parse_channels._entry_ptr.26, ptr @pm8xxx_xoadc_parse_channels._entry_ptr.29, ptr @pm8xxx_xoadc_parse_channels._entry_ptr.32, ptr @pm8xxx_xoadc_probe._entry, ptr @pm8xxx_xoadc_probe._entry.12, ptr @pm8xxx_xoadc_probe._entry.15, ptr @pm8xxx_xoadc_probe._entry.9, ptr @pm8xxx_xoadc_probe._entry_ptr, ptr @pm8xxx_xoadc_probe._entry_ptr.11, ptr @pm8xxx_xoadc_probe._entry_ptr.14, ptr @pm8xxx_xoadc_probe._entry_ptr.18, ptr @pm8xxx_xoadc_driver, ptr @.str, ptr @pm8xxx_xoadc_id_table, ptr @pm8xxx_xoadc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @pm8xxx_xoadc_info, ptr @.str.16, ptr @.str.17, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.81, ptr @pm8018_variant, ptr @pm8038_variant, ptr @pm8058_variant, ptr @pm8921_variant, ptr @pm8018_xoadc_channels, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @pm8038_xoadc_channels, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @pm8058_xoadc_channels, ptr @pm8921_xoadc_channels, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_id_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channels._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channels._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channels._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channel._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channel._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channel._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channel._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_xoadc_parse_channel._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_raw._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_read_channel_rsv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_calibrate_device._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8018_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8038_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_variant to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8018_xoadc_channels to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8038_xoadc_channels to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_xoadc_channels to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_xoadc_channels to i32), i32 1288, i32 1632, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_xoadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_xoadc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_xoadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_xoadc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_xoadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %read_1250v.i = alloca i16, align 2
  %read_0625v.i = alloca i16, align 2
  %read_nomux_rsv5.i = alloca i16, align 2
  %read_nomux_rsv4.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 200) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %4, align 4
  %variant9 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %variant9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %variant9, align 4
  %complete = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #6
  %lock = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pm8xxx_xoadc_probe.__key) #6
  %call10 = tail call fastcc i32 @pm8xxx_xoadc_parse_channels(ptr noundef %4, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call14 = tail call ptr @dev_get_regmap(ptr noundef %9, ptr noundef null) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %map21 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %map21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %map21, align 4
  %call22 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %vref = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %vref, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call22 to i32
  %call28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %call31 = tail call i32 @regulator_enable(ptr noundef %call22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %call38 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %call39 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call38, ptr noundef nonnull @pm8xxx_eoc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call, ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %out_disable_vref

if.end45:                                         ; preds = %if.end37
  %name48 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %13 = ptrtoint ptr %name48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %name48, align 8
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call3, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pm8xxx_xoadc_info, ptr %info, align 8
  %iio_chans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 6
  %16 = ptrtoint ptr %iio_chans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iio_chans, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %channels, align 8
  %nchans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nchans, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_channels, align 4
  %call49 = tail call i32 @__iio_device_register(ptr noundef nonnull %call3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end45.out_disable_vref_crit_edge

if.end45.out_disable_vref_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable_vref

if.end52:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_1250v.i) #6
  %22 = ptrtoint ptr %read_1250v.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %read_1250v.i, align 2, !annotation !275
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_0625v.i) #6
  %23 = ptrtoint ptr %read_0625v.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %read_0625v.i, align 2, !annotation !275
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_nomux_rsv5.i) #6
  %24 = ptrtoint ptr %read_nomux_rsv5.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %read_nomux_rsv5.i, align 2, !annotation !275
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_nomux_rsv4.i) #6
  %25 = ptrtoint ptr %read_nomux_rsv4.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %read_nomux_rsv4.i, align 2, !annotation !275
  %graph.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 7
  %dx.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 7, i32 0, i32 1
  %26 = ptrtoint ptr %dx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 625000, ptr %dx.i, align 4
  %arrayidx2.i = getelementptr %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 7, i32 1
  %dx3.i = getelementptr %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 7, i32 1, i32 1
  %27 = ptrtoint ptr %dx3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1800, ptr %dx3.i, align 4
  %28 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp11.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp11.not.i.i, label %if.end52.out_unreg_device_crit_edge, label %for.body.lr.ph.i.i

if.end52.out_unreg_device_crit_edge:              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

for.body.lr.ph.i.i:                               ; preds = %if.end52
  %chans.i.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 5
  %30 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chans.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %hwchan.i.i = getelementptr %struct.pm8xxx_chan_info, ptr %31, i32 %i.012.i.i, i32 1
  %32 = ptrtoint ptr %hwchan.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hwchan.i.i, align 4
  %amux_channel.i.i = getelementptr inbounds %struct.xoadc_channel, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %amux_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %amux_channel.i.i, align 4
  %35 = and i8 %bf.load.i.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %35)
  %cmp2.i.i = icmp eq i8 %35, 52
  br i1 %cmp2.i.i, label %pm8xxx_get_channel.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %29
  br i1 %exitcond.not.i.i, label %for.inc.i.i.out_unreg_device_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.out_unreg_device_crit_edge:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

pm8xxx_get_channel.exit.i:                        ; preds = %for.body.i.i
  %arrayidx.le.i.i = getelementptr %struct.pm8xxx_chan_info, ptr %31, i32 %i.012.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool.not.i, label %pm8xxx_get_channel.exit.i.out_unreg_device_crit_edge, label %if.end.i

pm8xxx_get_channel.exit.i.out_unreg_device_crit_edge: ; preds = %pm8xxx_get_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

if.end.i:                                         ; preds = %pm8xxx_get_channel.exit.i
  %call.i.i = call fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %4, ptr noundef nonnull %arrayidx.le.i.i, i8 noundef zeroext -1, ptr noundef nonnull %read_1250v.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.out_unreg_device.sink.split_crit_edge

if.end.i.out_unreg_device.sink.split_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device.sink.split

if.end7.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp11.not.i115.i = icmp eq i32 %37, 0
  br i1 %cmp11.not.i115.i, label %if.end7.i.out_unreg_device_crit_edge, label %for.body.lr.ph.i117.i

if.end7.i.out_unreg_device_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

for.body.lr.ph.i117.i:                            ; preds = %if.end7.i
  %38 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chans.i.i, align 4
  br label %for.body.i125.i

for.body.i125.i:                                  ; preds = %for.inc.i128.i.for.body.i125.i_crit_edge, %for.body.lr.ph.i117.i
  %i.012.i118.i = phi i32 [ 0, %for.body.lr.ph.i117.i ], [ %inc.i126.i, %for.inc.i128.i.for.body.i125.i_crit_edge ]
  %hwchan.i119.i = getelementptr %struct.pm8xxx_chan_info, ptr %39, i32 %i.012.i118.i, i32 1
  %40 = ptrtoint ptr %hwchan.i119.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwchan.i119.i, align 4
  %amux_channel.i120.i = getelementptr inbounds %struct.xoadc_channel, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %amux_channel.i120.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i121.i = load i8, ptr %amux_channel.i120.i, align 4
  %43 = and i8 %bf.load.i121.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %43)
  %cmp2.i124.i = icmp eq i8 %43, 48
  br i1 %cmp2.i124.i, label %pm8xxx_get_channel.exit132.i, label %for.inc.i128.i

for.inc.i128.i:                                   ; preds = %for.body.i125.i
  %inc.i126.i = add nuw i32 %i.012.i118.i, 1
  %exitcond.not.i127.i = icmp eq i32 %inc.i126.i, %37
  br i1 %exitcond.not.i127.i, label %for.inc.i128.i.out_unreg_device_crit_edge, label %for.inc.i128.i.for.body.i125.i_crit_edge

for.inc.i128.i.for.body.i125.i_crit_edge:         ; preds = %for.inc.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i125.i

for.inc.i128.i.out_unreg_device_crit_edge:        ; preds = %for.inc.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

pm8xxx_get_channel.exit132.i:                     ; preds = %for.body.i125.i
  %arrayidx.le.i129.i = getelementptr %struct.pm8xxx_chan_info, ptr %39, i32 %i.012.i118.i
  %tobool9.not.i = icmp eq ptr %arrayidx.le.i129.i, null
  br i1 %tobool9.not.i, label %pm8xxx_get_channel.exit132.i.out_unreg_device_crit_edge, label %if.end11.i

pm8xxx_get_channel.exit132.i.out_unreg_device_crit_edge: ; preds = %pm8xxx_get_channel.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

if.end11.i:                                       ; preds = %pm8xxx_get_channel.exit132.i
  %call.i133.i = call fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %4, ptr noundef nonnull %arrayidx.le.i129.i, i8 noundef zeroext -1, ptr noundef nonnull %read_0625v.i, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool13.not.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %if.end11.i.out_unreg_device.sink.split_crit_edge

if.end11.i.out_unreg_device.sink.split_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device.sink.split

if.end19.i:                                       ; preds = %if.end11.i
  %44 = ptrtoint ptr %read_1250v.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %read_1250v.i, align 2
  %46 = ptrtoint ptr %read_0625v.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %read_0625v.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp.i118 = icmp eq i16 %45, %47
  br i1 %cmp.i118, label %if.end19.i.out_unreg_device.sink.split_crit_edge, label %if.end27.i

if.end19.i.out_unreg_device.sink.split_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device.sink.split

if.end27.i:                                       ; preds = %if.end19.i
  %conv20.i = zext i16 %47 to i32
  %conv.i = zext i16 %45 to i32
  %sub.i = sub nsw i32 %conv.i, %conv20.i
  %48 = ptrtoint ptr %graph.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.i, ptr %graph.i, align 4
  %gnd.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 7, i32 0, i32 2
  %49 = ptrtoint ptr %gnd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv20.i, ptr %gnd.i, align 4
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.73, i32 noundef 625000, i32 noundef %sub.i) #9
  %52 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp11.not.i135.i = icmp eq i32 %53, 0
  br i1 %cmp11.not.i135.i, label %if.end27.i.out_unreg_device_crit_edge, label %for.body.lr.ph.i137.i

if.end27.i.out_unreg_device_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

for.body.lr.ph.i137.i:                            ; preds = %if.end27.i
  %54 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chans.i.i, align 4
  br label %for.body.i145.i

for.body.i145.i:                                  ; preds = %for.inc.i148.i.for.body.i145.i_crit_edge, %for.body.lr.ph.i137.i
  %i.012.i138.i = phi i32 [ 0, %for.body.lr.ph.i137.i ], [ %inc.i146.i, %for.inc.i148.i.for.body.i145.i_crit_edge ]
  %hwchan.i139.i = getelementptr %struct.pm8xxx_chan_info, ptr %55, i32 %i.012.i138.i, i32 1
  %56 = ptrtoint ptr %hwchan.i139.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwchan.i139.i, align 4
  %amux_channel.i140.i = getelementptr inbounds %struct.xoadc_channel, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %amux_channel.i140.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i141.i = load i8, ptr %amux_channel.i140.i, align 4
  %59 = and i8 %bf.load.i141.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %59)
  %cmp2.i144.i = icmp eq i8 %59, 60
  br i1 %cmp2.i144.i, label %pm8xxx_get_channel.exit152.i, label %for.inc.i148.i

for.inc.i148.i:                                   ; preds = %for.body.i145.i
  %inc.i146.i = add nuw i32 %i.012.i138.i, 1
  %exitcond.not.i147.i = icmp eq i32 %inc.i146.i, %53
  br i1 %exitcond.not.i147.i, label %for.inc.i148.i.out_unreg_device_crit_edge, label %for.inc.i148.i.for.body.i145.i_crit_edge

for.inc.i148.i.for.body.i145.i_crit_edge:         ; preds = %for.inc.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i145.i

for.inc.i148.i.out_unreg_device_crit_edge:        ; preds = %for.inc.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

pm8xxx_get_channel.exit152.i:                     ; preds = %for.body.i145.i
  %arrayidx.le.i149.i = getelementptr %struct.pm8xxx_chan_info, ptr %55, i32 %i.012.i138.i
  %tobool43.not.i = icmp eq ptr %arrayidx.le.i149.i, null
  br i1 %tobool43.not.i, label %pm8xxx_get_channel.exit152.i.out_unreg_device_crit_edge, label %if.end45.i

pm8xxx_get_channel.exit152.i.out_unreg_device_crit_edge: ; preds = %pm8xxx_get_channel.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device

if.end45.i:                                       ; preds = %pm8xxx_get_channel.exit152.i
  %call46.i = call fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %4, ptr noundef nonnull %arrayidx.le.i149.i, i8 noundef zeroext 5, ptr noundef nonnull %read_nomux_rsv5.i, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %if.end45.i.out_unreg_device.sink.split_crit_edge

if.end45.i.out_unreg_device.sink.split_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device.sink.split

if.end53.i:                                       ; preds = %if.end45.i
  %call54.i = call fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %4, ptr noundef nonnull %arrayidx.le.i149.i, i8 noundef zeroext 4, ptr noundef nonnull %read_nomux_rsv4.i, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %do.end59, label %if.end53.i.out_unreg_device.sink.split_crit_edge

if.end53.i.out_unreg_device.sink.split_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unreg_device.sink.split

do.end59:                                         ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %read_nomux_rsv5.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %read_nomux_rsv5.i, align 2
  %conv62.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %read_nomux_rsv4.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %read_nomux_rsv4.i, align 2
  %conv63.i = zext i16 %63 to i32
  %sub64.i = sub nsw i32 %conv62.i, %conv63.i
  %64 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub64.i, ptr %arrayidx2.i, align 4
  %gnd71.i = getelementptr %struct.pm8xxx_xoadc, ptr %4, i32 0, i32 7, i32 1, i32 2
  %65 = ptrtoint ptr %gnd71.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv63.i, ptr %gnd71.i, align 4
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.81, i32 noundef 1800, i32 noundef %sub64.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_nomux_rsv4.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_nomux_rsv5.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_0625v.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_1250v.i) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %call) #9
  br label %cleanup

out_unreg_device.sink.split:                      ; preds = %if.end53.i.out_unreg_device.sink.split_crit_edge, %if.end45.i.out_unreg_device.sink.split_crit_edge, %if.end19.i.out_unreg_device.sink.split_crit_edge, %if.end11.i.out_unreg_device.sink.split_crit_edge, %if.end.i.out_unreg_device.sink.split_crit_edge
  %.str.64.sink = phi ptr [ @.str.64, %if.end.i.out_unreg_device.sink.split_crit_edge ], [ @.str.67, %if.end11.i.out_unreg_device.sink.split_crit_edge ], [ @.str.70, %if.end19.i.out_unreg_device.sink.split_crit_edge ], [ @.str.76, %if.end45.i.out_unreg_device.sink.split_crit_edge ], [ @.str.76, %if.end53.i.out_unreg_device.sink.split_crit_edge ]
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull %.str.64.sink) #9
  br label %out_unreg_device

out_unreg_device:                                 ; preds = %out_unreg_device.sink.split, %pm8xxx_get_channel.exit152.i.out_unreg_device_crit_edge, %for.inc.i148.i.out_unreg_device_crit_edge, %if.end27.i.out_unreg_device_crit_edge, %pm8xxx_get_channel.exit132.i.out_unreg_device_crit_edge, %for.inc.i128.i.out_unreg_device_crit_edge, %if.end7.i.out_unreg_device_crit_edge, %pm8xxx_get_channel.exit.i.out_unreg_device_crit_edge, %for.inc.i.i.out_unreg_device_crit_edge, %if.end52.out_unreg_device_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_nomux_rsv4.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_nomux_rsv5.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_0625v.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_1250v.i) #6
  tail call void @iio_device_unregister(ptr noundef nonnull %call3) #6
  br label %out_disable_vref

out_disable_vref:                                 ; preds = %out_unreg_device, %if.end45.out_disable_vref_crit_edge, %do.end44
  %ret.0 = phi i32 [ %call39, %do.end44 ], [ %call49, %if.end45.out_disable_vref_crit_edge ], [ -19, %out_unreg_device ]
  %70 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vref, align 4
  %call63 = tail call i32 @regulator_disable(ptr noundef %71) #6
  br label %cleanup

cleanup:                                          ; preds = %out_disable_vref, %do.end59, %do.end36, %if.then25, %do.end19, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then25 ], [ %call31, %do.end36 ], [ %ret.0, %out_disable_vref ], [ 0, %do.end59 ], [ -19, %do.end19 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call10, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_xoadc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %vref = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8xxx_xoadc_parse_channels(ptr nocapture noundef %adc, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_available_child_count.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

of_get_available_child_count.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nchans142 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 4
  %0 = ptrtoint ptr %nchans142 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nchans142, align 4
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  %nchans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 4
  %1 = ptrtoint ptr %nchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inc.i, ptr %nchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_available_child_count.exit.do.end_crit_edge, label %do.body2

of_get_available_child_count.exit.do.end_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %of_get_available_child_count.exit.do.end_crit_edge, %of_get_available_child_count.exit.thread
  %2 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  br label %cleanup

do.body2:                                         ; preds = %of_get_available_child_count.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_xoadc_parse_channels.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8xxx_xoadc_parse_channels, %if.then7)) #6
          to label %do.end12 [label %if.then7], !srcloc !276

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc, align 4
  %6 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nchans, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_xoadc_parse_channels.__UNIQUE_ID_ddebug291, ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %7) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body2
  %8 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nchans, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 88) #6
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !277

devm_kcalloc.exit.thread:                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  %iio_chans147 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 6
  %12 = ptrtoint ptr %iio_chans147 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %iio_chans147, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end12
  %13 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adc, align 4
  %15 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #6
  %iio_chans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 6
  %16 = ptrtoint ptr %iio_chans to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %iio_chans, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end19

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %devm_kcalloc.exit
  %17 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nchans, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 16) #6
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %devm_kcalloc.exit100.thread, label %devm_kcalloc.exit100, !prof !277

devm_kcalloc.exit100.thread:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %chans150 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 5
  %21 = ptrtoint ptr %chans150 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %chans150, align 4
  br label %cleanup

devm_kcalloc.exit100:                             ; preds = %if.end19
  %22 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adc, align 4
  %24 = extractvalue { i32, i1 } %19, 0
  %call5.i.i97 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef %24, i32 noundef 3520) #6
  %chans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 5
  %25 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i97, ptr %chans, align 4
  %tobool24.not = icmp eq ptr %call5.i.i97, null
  br i1 %tobool24.not, label %devm_kcalloc.exit100.cleanup_crit_edge, label %if.end26

devm_kcalloc.exit100.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %devm_kcalloc.exit100
  %call27 = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef null) #6
  %cmp.not162 = icmp eq ptr %call27, null
  br i1 %cmp.not162, label %if.end26.for.end_crit_edge, label %for.body.lr.ph

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %variant = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %child.0164 = phi ptr [ %call27, %for.body.lr.ph ], [ %call36, %if.end35.for.body_crit_edge ]
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %26 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chans, align 4
  %arrayidx = getelementptr %struct.pm8xxx_chan_info, ptr %27, i32 %i.0163
  %28 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adc, align 4
  %30 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant, align 4
  %channels = getelementptr inbounds %struct.xoadc_variant, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channels, align 4
  %34 = ptrtoint ptr %iio_chans to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iio_chans, align 4
  %arrayidx31 = getelementptr %struct.iio_chan_spec, ptr %35, i32 %i.0163
  %call32 = tail call fastcc i32 @pm8xxx_xoadc_parse_channel(ptr noundef %29, ptr noundef nonnull %child.0164, ptr noundef %33, ptr noundef %arrayidx31, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %child.0164) #6
  br label %cleanup

if.end35:                                         ; preds = %for.body
  %inc = add i32 %i.0163, 1
  %call36 = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef nonnull %child.0164) #6
  %cmp.not = icmp eq ptr %call36, null
  br i1 %cmp.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %if.end26.for.end_crit_edge
  %36 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp11.not.i = icmp eq i32 %37, 0
  br i1 %cmp11.not.i, label %for.end.do.end42_crit_edge, label %for.body.lr.ph.i

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.body.lr.ph.i:                                 ; preds = %for.end
  %38 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chans, align 4
  br label %for.body.i101

for.body.i101:                                    ; preds = %for.inc.i.for.body.i101_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i102, %for.inc.i.for.body.i101_crit_edge ]
  %hwchan.i = getelementptr %struct.pm8xxx_chan_info, ptr %39, i32 %i.012.i, i32 1
  %40 = ptrtoint ptr %hwchan.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwchan.i, align 4
  %amux_channel.i = getelementptr inbounds %struct.xoadc_channel, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %amux_channel.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %amux_channel.i, align 4
  %43 = and i8 %bf.load.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %43)
  %cmp2.i = icmp eq i8 %43, 52
  br i1 %cmp2.i, label %pm8xxx_get_channel.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i101
  %inc.i102 = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i102, %37
  br i1 %exitcond.not.i, label %for.inc.i.do.end42_crit_edge, label %for.inc.i.for.body.i101_crit_edge

for.inc.i.for.body.i101_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i101

for.inc.i.do.end42_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

pm8xxx_get_channel.exit:                          ; preds = %for.body.i101
  %arrayidx.le.i = getelementptr %struct.pm8xxx_chan_info, ptr %39, i32 %i.012.i
  %tobool38.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool38.not, label %pm8xxx_get_channel.exit.do.end42_crit_edge, label %for.body.lr.ph.i106

pm8xxx_get_channel.exit.do.end42_crit_edge:       ; preds = %pm8xxx_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

do.end42:                                         ; preds = %pm8xxx_get_channel.exit.do.end42_crit_edge, %for.inc.i.do.end42_crit_edge, %for.end.do.end42_crit_edge
  %44 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25) #9
  br label %cleanup

for.body.lr.ph.i106:                              ; preds = %pm8xxx_get_channel.exit
  %46 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chans, align 4
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i117.for.body.i114_crit_edge, %for.body.lr.ph.i106
  %i.012.i107 = phi i32 [ 0, %for.body.lr.ph.i106 ], [ %inc.i115, %for.inc.i117.for.body.i114_crit_edge ]
  %hwchan.i108 = getelementptr %struct.pm8xxx_chan_info, ptr %47, i32 %i.012.i107, i32 1
  %48 = ptrtoint ptr %hwchan.i108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hwchan.i108, align 4
  %amux_channel.i109 = getelementptr inbounds %struct.xoadc_channel, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %amux_channel.i109 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i110 = load i8, ptr %amux_channel.i109, align 4
  %51 = and i8 %bf.load.i110, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %51)
  %cmp2.i113 = icmp eq i8 %51, 48
  br i1 %cmp2.i113, label %pm8xxx_get_channel.exit121, label %for.inc.i117

for.inc.i117:                                     ; preds = %for.body.i114
  %inc.i115 = add nuw i32 %i.012.i107, 1
  %exitcond.not.i116 = icmp eq i32 %inc.i115, %37
  br i1 %exitcond.not.i116, label %for.inc.i117.do.end50_crit_edge, label %for.inc.i117.for.body.i114_crit_edge

for.inc.i117.for.body.i114_crit_edge:             ; preds = %for.inc.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i114

for.inc.i117.do.end50_crit_edge:                  ; preds = %for.inc.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

pm8xxx_get_channel.exit121:                       ; preds = %for.body.i114
  %arrayidx.le.i118 = getelementptr %struct.pm8xxx_chan_info, ptr %47, i32 %i.012.i107
  %tobool46.not = icmp eq ptr %arrayidx.le.i118, null
  br i1 %tobool46.not, label %pm8xxx_get_channel.exit121.do.end50_crit_edge, label %for.body.lr.ph.i125

pm8xxx_get_channel.exit121.do.end50_crit_edge:    ; preds = %pm8xxx_get_channel.exit121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

do.end50:                                         ; preds = %pm8xxx_get_channel.exit121.do.end50_crit_edge, %for.inc.i117.do.end50_crit_edge
  %52 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.28) #9
  br label %cleanup

for.body.lr.ph.i125:                              ; preds = %pm8xxx_get_channel.exit121
  %54 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chans, align 4
  br label %for.body.i133

for.body.i133:                                    ; preds = %for.inc.i136.for.body.i133_crit_edge, %for.body.lr.ph.i125
  %i.012.i126 = phi i32 [ 0, %for.body.lr.ph.i125 ], [ %inc.i134, %for.inc.i136.for.body.i133_crit_edge ]
  %hwchan.i127 = getelementptr %struct.pm8xxx_chan_info, ptr %55, i32 %i.012.i126, i32 1
  %56 = ptrtoint ptr %hwchan.i127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwchan.i127, align 4
  %amux_channel.i128 = getelementptr inbounds %struct.xoadc_channel, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %amux_channel.i128 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i129 = load i8, ptr %amux_channel.i128, align 4
  %59 = and i8 %bf.load.i129, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %59)
  %cmp2.i132 = icmp eq i8 %59, 60
  br i1 %cmp2.i132, label %pm8xxx_get_channel.exit140, label %for.inc.i136

for.inc.i136:                                     ; preds = %for.body.i133
  %inc.i134 = add nuw i32 %i.012.i126, 1
  %exitcond.not.i135 = icmp eq i32 %inc.i134, %37
  br i1 %exitcond.not.i135, label %for.inc.i136.do.end58_crit_edge, label %for.inc.i136.for.body.i133_crit_edge

for.inc.i136.for.body.i133_crit_edge:             ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i133

for.inc.i136.do.end58_crit_edge:                  ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

pm8xxx_get_channel.exit140:                       ; preds = %for.body.i133
  %arrayidx.le.i137 = getelementptr %struct.pm8xxx_chan_info, ptr %55, i32 %i.012.i126
  %tobool54.not = icmp eq ptr %arrayidx.le.i137, null
  br i1 %tobool54.not, label %pm8xxx_get_channel.exit140.do.end58_crit_edge, label %pm8xxx_get_channel.exit140.cleanup_crit_edge

pm8xxx_get_channel.exit140.cleanup_crit_edge:     ; preds = %pm8xxx_get_channel.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pm8xxx_get_channel.exit140.do.end58_crit_edge:    ; preds = %pm8xxx_get_channel.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

do.end58:                                         ; preds = %pm8xxx_get_channel.exit140.do.end58_crit_edge, %for.inc.i136.do.end58_crit_edge
  %60 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.31) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %pm8xxx_get_channel.exit140.cleanup_crit_edge, %do.end50, %do.end42, %if.then34, %devm_kcalloc.exit100.cleanup_crit_edge, %devm_kcalloc.exit100.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ %call32, %if.then34 ], [ -19, %do.end58 ], [ -19, %do.end50 ], [ -19, %do.end42 ], [ -19, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit100.cleanup_crit_edge ], [ 0, %pm8xxx_get_channel.exit140.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit100.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_eoc_irq(i32 noundef %irq, ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %complete = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 8
  tail call void @complete(ptr noundef %complete) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8xxx_xoadc_parse_channel(ptr noundef %dev, ptr noundef %np, ptr noundef %hw_channels, ptr nocapture noundef %iio_chan, ptr nocapture noundef %ch) unnamed_addr #2 align 64 {
entry:
  %pre_scale_mux = alloca i32, align 4
  %amux_channel = alloca i32, align 4
  %rsv = alloca i32, align 4
  %dec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pre_scale_mux) #6
  %2 = ptrtoint ptr %pre_scale_mux to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pre_scale_mux, align 4, !annotation !275
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amux_channel) #6
  %3 = ptrtoint ptr %amux_channel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %amux_channel, align 4, !annotation !275
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsv) #6
  %4 = ptrtoint ptr %rsv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rsv, align 4, !annotation !275
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dec) #6
  %5 = ptrtoint ptr %dec to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dec, align 4, !annotation !275
  %call = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull %pre_scale_mux) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %amux_channel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %do.end7

while.cond.preheader:                             ; preds = %if.end
  %tobool9.not169 = icmp eq ptr %hw_channels, null
  br i1 %tobool9.not169, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %1) #9
  br label %cleanup

land.rhs:                                         ; preds = %if.end20.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %chid.0172 = phi i32 [ %inc, %if.end20.land.rhs_crit_edge ], [ 0, %while.cond.preheader.land.rhs_crit_edge ]
  %hwchan.0170 = phi ptr [ %incdec.ptr, %if.end20.land.rhs_crit_edge ], [ %hw_channels, %while.cond.preheader.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %hwchan.0170 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwchan.0170, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.rhs.do.end26_crit_edge, label %while.body

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

while.body:                                       ; preds = %land.rhs
  %pre_scale_mux11 = getelementptr inbounds %struct.xoadc_channel, ptr %hwchan.0170, i32 0, i32 1
  %8 = ptrtoint ptr %pre_scale_mux11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %pre_scale_mux11, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %9 = ptrtoint ptr %pre_scale_mux to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pre_scale_mux, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp = icmp eq i32 %10, %conv
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end20_crit_edge

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %while.body
  %bf.lshr15 = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr15, 15
  %conv16 = zext i8 %bf.clear to i32
  %11 = ptrtoint ptr %amux_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %amux_channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv16)
  %cmp17 = icmp eq i32 %12, %conv16
  br i1 %cmp17, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %while.body.if.end20_crit_edge
  %incdec.ptr = getelementptr %struct.xoadc_channel, ptr %hwchan.0170, i32 1
  %inc = add i32 %chid.0172, 1
  %tobool9.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool9.not, label %if.end20.while.end_crit_edge, label %if.end20.land.rhs_crit_edge

if.end20.land.rhs_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %hwchan.0.lcssa = phi ptr [ null, %while.cond.preheader.while.end_crit_edge ], [ null, %if.end20.while.end_crit_edge ], [ %hwchan.0170, %land.lhs.true.while.end_crit_edge ]
  %chid.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %if.end20.while.end_crit_edge ], [ %chid.0172, %land.lhs.true.while.end_crit_edge ]
  %13 = ptrtoint ptr %hwchan.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %hwchan.0.lcssa, align 4
  %tobool22.not = icmp eq ptr %.pr, null
  br i1 %tobool22.not, label %while.end.do.end26_crit_edge, label %if.end27

while.end.do.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.end26:                                         ; preds = %while.end.do.end26_crit_edge, %land.rhs.do.end26_crit_edge
  %14 = ptrtoint ptr %pre_scale_mux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_scale_mux, align 4
  %16 = ptrtoint ptr %amux_channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %amux_channel, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %15, i32 noundef %17) #9
  br label %cleanup

if.end27:                                         ; preds = %while.end
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %ch, align 4
  %hwchan29 = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 1
  %19 = ptrtoint ptr %hwchan29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hwchan.0.lcssa, ptr %hwchan29, align 4
  %calibration = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 2
  %20 = ptrtoint ptr %calibration to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %calibration, align 4
  %decimation = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 3
  %21 = ptrtoint ptr %decimation to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load30 = load i8, ptr %decimation, align 4
  %bf.clear31 = and i8 %bf.load30, 63
  store i8 %bf.clear31, ptr %decimation, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef nonnull %rsv, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool33.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool33.not, label %if.then34, label %if.end27.if.end50_crit_edge

if.end27.if.end50_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then34:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %calibration to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %calibration, align 4
  %23 = ptrtoint ptr %rsv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rsv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp36 = icmp ugt i32 %24, 5
  br i1 %cmp36, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef %1, i32 noundef %24) #9
  br label %cleanup

if.end42:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp43 = icmp eq i32 %24, 3
  br i1 %cmp43, label %do.end48, label %if.end42.if.end50_crit_edge

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %1, i32 noundef 3) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end42.if.end50_crit_edge, %if.end27.if.end50_crit_edge
  %call.i.i164 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.49, ptr noundef nonnull %dec, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i164)
  %tobool52.not = icmp sgt i32 %call.i.i164, -1
  br i1 %tobool52.not, label %if.then53, label %if.end50.if.end67_crit_edge

if.end50.if.end67_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then53:                                        ; preds = %if.end50
  %25 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dec, align 4
  %call54 = call i32 @qcom_vadc_decimation_from_dt(i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end60, label %if.end61

do.end60:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dec, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef %1, i32 noundef %28) #9
  br label %cleanup

if.end61:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %conv62 = trunc i32 %call54 to i8
  %29 = ptrtoint ptr %decimation to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load64 = load i8, ptr %decimation, align 4
  %bf.shl = shl i8 %conv62, 6
  %bf.clear65 = and i8 %bf.load64, 63
  %bf.set66 = or i8 %bf.clear65, %bf.shl
  store i8 %bf.set66, ptr %decimation, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end61, %if.end50.if.end67_crit_edge
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan, i32 0, i32 1
  %30 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %chid.0.lcssa, ptr %channel, align 4
  %amux_channel68 = getelementptr inbounds %struct.xoadc_channel, ptr %hwchan.0.lcssa, i32 0, i32 1
  %31 = ptrtoint ptr %amux_channel68 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load69 = load i8, ptr %amux_channel68, align 4
  %bf.lshr70 = lshr i8 %bf.load69, 2
  %bf.clear71 = and i8 %bf.lshr70, 15
  %conv72 = zext i8 %bf.clear71 to i32
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan, i32 0, i32 3
  %32 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv72, ptr %address, align 4
  %33 = ptrtoint ptr %hwchan.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwchan.0.lcssa, align 4
  %datasheet_name74 = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan, i32 0, i32 18
  %35 = ptrtoint ptr %datasheet_name74 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %datasheet_name74, align 4
  %type = getelementptr inbounds %struct.xoadc_channel, ptr %hwchan.0.lcssa, i32 0, i32 3
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  %38 = ptrtoint ptr %iio_chan to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %iio_chan, align 4
  %info_mask_separate = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan, i32 0, i32 6
  %39 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %info_mask_separate, align 4
  %indexed = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan, i32 0, i32 19
  %40 = ptrtoint ptr %indexed to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load76 = load i8, ptr %indexed, align 4
  %bf.set78 = or i8 %bf.load76, 64
  store i8 %bf.set78, ptr %indexed, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_xoadc_parse_channel.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8xxx_xoadc_parse_channel, %if.then84)) #6
          to label %cleanup [label %if.then84], !srcloc !276

if.then84:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %amux_channel68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load86 = load i8, ptr %amux_channel68, align 4
  %bf.lshr87 = lshr i8 %bf.load86, 6
  %conv88 = zext i8 %bf.lshr87 to i32
  %bf.lshr91 = lshr i8 %bf.load86, 2
  %bf.clear92 = and i8 %bf.lshr91, 15
  %conv93 = zext i8 %bf.clear92 to i32
  %42 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch, align 4
  %44 = ptrtoint ptr %decimation to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load95 = load i8, ptr %decimation, align 4
  %bf.lshr96 = lshr i8 %bf.load95, 3
  %bf.clear97 = and i8 %bf.lshr96, 7
  %conv98 = zext i8 %bf.clear97 to i32
  %bf.lshr101 = lshr i8 %bf.load95, 6
  %conv102 = zext i8 %bf.lshr101 to i32
  %prescale = getelementptr inbounds %struct.xoadc_channel, ptr %hwchan.0.lcssa, i32 0, i32 2
  %45 = ptrtoint ptr %prescale to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prescale, align 4
  %den = getelementptr inbounds %struct.xoadc_channel, ptr %hwchan.0.lcssa, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %den, align 4
  %scale_fn_type = getelementptr inbounds %struct.xoadc_channel, ptr %hwchan.0.lcssa, i32 0, i32 4
  %49 = ptrtoint ptr %scale_fn_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scale_fn_type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_xoadc_parse_channel.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv88, i32 noundef %conv93, ptr noundef %43, i32 noundef %conv98, i32 noundef %conv102, i32 noundef %46, i32 noundef %48, i32 noundef %50) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end67, %do.end60, %do.end48, %do.end41, %do.end26, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ %call54, %do.end60 ], [ -22, %do.end41 ], [ -22, %do.end48 ], [ -22, %do.end26 ], [ 0, %if.then84 ], [ 0, %if.end67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dec) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsv) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amux_channel) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_scale_mux) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_vadc_decimation_from_dt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_code = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_code) #6
  %2 = ptrtoint ptr %adc_code to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %adc_code, align 2, !annotation !275
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %conv = trunc i32 %5 to i8
  %nchans.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nchans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nchans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.not.i = icmp eq i32 %7, 0
  br i1 %cmp11.not.i, label %sw.bb.do.end_crit_edge, label %for.body.lr.ph.i

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %chans.i = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chans.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %hwchan.i = getelementptr %struct.pm8xxx_chan_info, ptr %9, i32 %i.012.i, i32 1
  %10 = ptrtoint ptr %hwchan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwchan.i, align 4
  %amux_channel.i = getelementptr inbounds %struct.xoadc_channel, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %amux_channel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %amux_channel.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 2
  %bf.clear.i = and i8 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i, i8 %conv)
  %cmp2.i = icmp eq i8 %bf.clear.i, %conv
  br i1 %cmp2.i, label %pm8xxx_get_channel.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

pm8xxx_get_channel.exit:                          ; preds = %for.body.i
  %arrayidx.le.i = getelementptr %struct.pm8xxx_chan_info, ptr %9, i32 %i.012.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %pm8xxx_get_channel.exit.do.end_crit_edge, label %if.end

pm8xxx_get_channel.exit.do.end_crit_edge:         ; preds = %pm8xxx_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %pm8xxx_get_channel.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.54, i32 noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %pm8xxx_get_channel.exit
  %call.i = call fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %1, ptr noundef nonnull %arrayidx.le.i, i8 noundef zeroext -1, ptr noundef nonnull %adc_code, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %hwchan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwchan.i, align 4
  %scale_fn_type = getelementptr inbounds %struct.xoadc_channel, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %scale_fn_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scale_fn_type, align 4
  %calibration = getelementptr %struct.pm8xxx_chan_info, ptr %9, i32 %i.012.i, i32 2
  %19 = ptrtoint ptr %calibration to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %calibration, align 4
  %arrayidx = getelementptr %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 7, i32 %20
  %prescale = getelementptr inbounds %struct.xoadc_channel, ptr %16, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %adc_code to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %adc_code, align 2
  %call10 = tail call i32 @qcom_vadc_scale(i32 noundef %18, ptr noundef %arrayidx, ptr noundef %prescale, i1 noundef zeroext %cmp, i16 noundef zeroext %22, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %.call10 = select i1 %tobool11.not, i32 1, i32 %call10
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %address15 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %23 = ptrtoint ptr %address15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %address15, align 4
  %conv16 = trunc i32 %24 to i8
  %nchans.i56 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %nchans.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nchans.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11.not.i57 = icmp eq i32 %26, 0
  br i1 %cmp11.not.i57, label %sw.bb14.do.end22_crit_edge, label %for.body.lr.ph.i59

sw.bb14.do.end22_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

for.body.lr.ph.i59:                               ; preds = %sw.bb14
  %chans.i58 = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %chans.i58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chans.i58, align 4
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i70.for.body.i67_crit_edge, %for.body.lr.ph.i59
  %i.012.i60 = phi i32 [ 0, %for.body.lr.ph.i59 ], [ %inc.i68, %for.inc.i70.for.body.i67_crit_edge ]
  %hwchan.i61 = getelementptr %struct.pm8xxx_chan_info, ptr %28, i32 %i.012.i60, i32 1
  %29 = ptrtoint ptr %hwchan.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwchan.i61, align 4
  %amux_channel.i62 = getelementptr inbounds %struct.xoadc_channel, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %amux_channel.i62 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i63 = load i8, ptr %amux_channel.i62, align 4
  %bf.lshr.i64 = lshr i8 %bf.load.i63, 2
  %bf.clear.i65 = and i8 %bf.lshr.i64, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear.i65, i8 %conv16)
  %cmp2.i66 = icmp eq i8 %bf.clear.i65, %conv16
  br i1 %cmp2.i66, label %pm8xxx_get_channel.exit74, label %for.inc.i70

for.inc.i70:                                      ; preds = %for.body.i67
  %inc.i68 = add nuw i32 %i.012.i60, 1
  %exitcond.not.i69 = icmp eq i32 %inc.i68, %26
  br i1 %exitcond.not.i69, label %for.inc.i70.do.end22_crit_edge, label %for.inc.i70.for.body.i67_crit_edge

for.inc.i70.for.body.i67_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i67

for.inc.i70.do.end22_crit_edge:                   ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

pm8xxx_get_channel.exit74:                        ; preds = %for.body.i67
  %arrayidx.le.i71 = getelementptr %struct.pm8xxx_chan_info, ptr %28, i32 %i.012.i60
  %tobool18.not = icmp eq ptr %arrayidx.le.i71, null
  br i1 %tobool18.not, label %pm8xxx_get_channel.exit74.do.end22_crit_edge, label %if.end25

pm8xxx_get_channel.exit74.do.end22_crit_edge:     ; preds = %pm8xxx_get_channel.exit74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end22:                                         ; preds = %pm8xxx_get_channel.exit74.do.end22_crit_edge, %for.inc.i70.do.end22_crit_edge, %sw.bb14.do.end22_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.54, i32 noundef %24) #9
  br label %cleanup

if.end25:                                         ; preds = %pm8xxx_get_channel.exit74
  %call.i75 = call fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %1, ptr noundef nonnull %arrayidx.le.i71, i8 noundef zeroext -1, ptr noundef nonnull %adc_code, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool27.not = icmp eq i32 %call.i75, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %adc_code to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %adc_code, align 2
  %conv30 = zext i16 %35 to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv30, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %do.end22, %if.end6, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end29 ], [ -22, %do.end22 ], [ -22, %do.end ], [ %call.i, %if.end.cleanup_crit_edge ], [ %.call10, %if.end6 ], [ %call.i75, %if.end25.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_code) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_of_xlate(ptr noundef %indio_dev, ptr nocapture noundef readonly %iiospec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %4 = ptrtoint ptr %iiospec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iiospec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %5, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_of_xlate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8xxx_of_xlate, %if.then9)) #6
          to label %do.end15 [label %if.then9], !srcloc !276

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %conv11 = and i32 %7, 255
  %conv12 = and i32 %9, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_of_xlate.__UNIQUE_ID_ddebug289, ptr noundef %dev10, ptr noundef nonnull @.str.63, i32 noundef %conv11, i32 noundef %conv12) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then9, %if.end
  %nchans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1654.not = icmp eq i32 %11, 0
  br i1 %cmp1654.not, label %do.end15.cleanup_crit_edge, label %for.body.lr.ph

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end15
  %chans = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chans, align 4
  %14 = trunc i32 %7 to i8
  %15 = trunc i32 %9 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %hwchan = getelementptr %struct.pm8xxx_chan_info, ptr %13, i32 %i.055, i32 1
  %16 = ptrtoint ptr %hwchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwchan, align 4
  %pre_scale_mux19 = getelementptr inbounds %struct.xoadc_channel, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pre_scale_mux19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %pre_scale_mux19, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %14)
  %cmp22 = icmp eq i8 %bf.lshr, %14
  %bf.lshr29 = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr29, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear, i8 %15)
  %cmp32 = icmp eq i8 %bf.clear, %15
  %or.cond = select i1 %cmp22, i1 %cmp32, i1 false
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15.cleanup_crit_edge ], [ %i.055, %for.body.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_vadc_scale(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8xxx_read_channel_rsv(ptr noundef %adc, ptr nocapture noundef readonly %ch, i8 noundef zeroext %rsv, ptr nocapture noundef writeonly %adc_code, i1 noundef zeroext %force_ratiometric) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_read_channel_rsv.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8xxx_read_channel_rsv, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adc, align 4
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %hwchan = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %hwchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwchan, align 4
  %amux_channel = getelementptr inbounds %struct.xoadc_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %amux_channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %amux_channel, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 15
  %conv = zext i8 %bf.clear to i32
  %bf.lshr6 = lshr i8 %bf.load, 6
  %conv7 = zext i8 %bf.lshr6 to i32
  %conv8 = zext i8 %rsv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_read_channel_rsv.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef %3, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %hwchan9 = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %hwchan9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwchan9, align 4
  %amux_channel10 = getelementptr inbounds %struct.xoadc_channel, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %amux_channel10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load11 = load i8, ptr %amux_channel10, align 4
  %10 = shl i8 %bf.load11, 2
  %11 = and i8 %10, -16
  %12 = lshr i8 %bf.load11, 4
  %13 = and i8 %12, 12
  %or175 = or i8 %11, %13
  %or = zext i8 %or175 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %val, align 4
  %map = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 1
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 408, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %do.end.unlock_crit_edge

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end24:                                         ; preds = %do.end
  %variant = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 2
  %17 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %variant, align 4
  %broken_ratiometric = getelementptr inbounds %struct.xoadc_variant, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %broken_ratiometric to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %broken_ratiometric, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  %brmerge = or i1 %tobool25.not, %force_ratiometric
  br i1 %brmerge, label %if.else38, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %hwchan9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwchan9, align 4
  %amux_channel30 = getelementptr inbounds %struct.xoadc_channel, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %amux_channel30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load31 = load i8, ptr %amux_channel30, align 4
  %24 = and i8 %bf.load31, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %24)
  %cmp = icmp eq i8 %24, 60
  %. = select i1 %cmp, i8 16, i8 32
  br label %if.end56

if.else38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %rsv)
  %cmp40 = icmp eq i8 %rsv, -1
  br i1 %cmp40, label %if.then42, label %if.else50

if.then42:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  %amux_ip_rsv = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 3
  %25 = ptrtoint ptr %amux_ip_rsv to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load43 = load i8, ptr %amux_ip_rsv, align 4
  %26 = shl i8 %bf.load43, 1
  %27 = and i8 %26, 112
  %28 = or i8 %27, -128
  br label %if.end56

if.else50:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  %shl52 = shl i8 %rsv, 4
  %or53 = or i8 %shl52, -128
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then42, %if.then28
  %rsvval.0 = phi i8 [ %28, %if.then42 ], [ %or53, %if.else50 ], [ %., %if.then28 ]
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %conv59 = zext i8 %rsvval.0 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 411, i32 noundef -16, i32 noundef %conv59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool61.not = icmp eq i32 %call.i, 0
  br i1 %tobool61.not, label %if.end63, label %if.end56.unlock_crit_edge

if.end56.unlock_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end63:                                         ; preds = %if.end56
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call65 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 409, i32 noundef 254) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.unlock_crit_edge

if.end63.unlock_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end68:                                         ; preds = %if.end63
  %33 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map, align 4
  %decimation = getelementptr inbounds %struct.pm8xxx_chan_info, ptr %ch, i32 0, i32 3
  %35 = ptrtoint ptr %decimation to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load70 = load i8, ptr %decimation, align 4
  %36 = lshr i8 %bf.load70, 1
  %37 = and i8 %36, 96
  %38 = or i8 %37, 3
  %or74 = zext i8 %38 to i32
  %call75 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 410, i32 noundef %or74) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end68.unlock_crit_edge

if.end68.unlock_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end78:                                         ; preds = %if.end68
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %call80 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 409, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end78.unlock_crit_edge

if.end78.unlock_crit_edge:                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end83:                                         ; preds = %if.end78
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %call85 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 407, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.unlock_crit_edge

if.end83.unlock_crit_edge:                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end88:                                         ; preds = %if.end83
  %43 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map, align 4
  %call90 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 407, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.unlock_crit_edge

if.end88.unlock_crit_edge:                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end93:                                         ; preds = %if.end88
  %complete = getelementptr inbounds %struct.pm8xxx_xoadc, ptr %adc, i32 0, i32 8
  %45 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %complete, align 4
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 4
  %call95 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 407, i32 noundef 129) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.unlock_crit_edge

if.end93.unlock_crit_edge:                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end98:                                         ; preds = %if.end93
  %call100 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 2100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.end105, label %if.end107

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.60) #9
  br label %unlock

if.end107:                                        ; preds = %if.end98
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 4
  %call109 = call i32 @regmap_read(ptr noundef %51, i32 noundef 413, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %if.end107.unlock_crit_edge

if.end107.unlock_crit_edge:                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end112:                                        ; preds = %if.end107
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 4
  %call115 = call i32 @regmap_read(ptr noundef %55, i32 noundef 412, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end112.unlock_crit_edge

if.end112.unlock_crit_edge:                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end118:                                        ; preds = %if.end112
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %conv120 = shl i32 %57, 8
  %conv122 = and i32 %53, 255
  %or123 = or i32 %conv120, %conv122
  %conv124 = trunc i32 %or123 to i16
  %58 = ptrtoint ptr %adc_code to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv124, ptr %adc_code, align 2
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %call126 = call i32 @regmap_write(ptr noundef %60, i32 noundef 407, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end118.unlock_crit_edge

if.end118.unlock_crit_edge:                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end129:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map, align 4
  %call131 = call i32 @regmap_write(ptr noundef %62, i32 noundef 407, i32 noundef 0) #6
  br label %unlock

unlock:                                           ; preds = %if.end129, %if.end118.unlock_crit_edge, %if.end112.unlock_crit_edge, %if.end107.unlock_crit_edge, %do.end105, %if.end93.unlock_crit_edge, %if.end88.unlock_crit_edge, %if.end83.unlock_crit_edge, %if.end78.unlock_crit_edge, %if.end68.unlock_crit_edge, %if.end63.unlock_crit_edge, %if.end56.unlock_crit_edge, %do.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call21, %do.end.unlock_crit_edge ], [ %call.i, %if.end56.unlock_crit_edge ], [ %call65, %if.end63.unlock_crit_edge ], [ %call75, %if.end68.unlock_crit_edge ], [ %call80, %if.end78.unlock_crit_edge ], [ %call85, %if.end83.unlock_crit_edge ], [ %call90, %if.end88.unlock_crit_edge ], [ %call95, %if.end93.unlock_crit_edge ], [ %call109, %if.end107.unlock_crit_edge ], [ %call115, %if.end112.unlock_crit_edge ], [ %call126, %if.end118.unlock_crit_edge ], [ %call131, %if.end129 ], [ -110, %do.end105 ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !102, !104, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274}

!0 = !{ptr @__initcall__kmod_qcom_pm8xxx_xoadc__292_1025_pm8xxx_xoadc_driver_init6, !1, !"__initcall__kmod_qcom_pm8xxx_xoadc__292_1025_pm8xxx_xoadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 1025, i32 1}
!2 = !{ptr @__exitcall_pm8xxx_xoadc_driver_exit, !1, !"__exitcall_pm8xxx_xoadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 1027, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 1028, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias296, !9, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!9 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 1029, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 1019, i32 11}
!12 = !{ptr @pm8xxx_xoadc_driver, !13, !"pm8xxx_xoadc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 1017, i32 31}
!14 = !{ptr @pm8xxx_xoadc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 904, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 912, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pm8xxx_xoadc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pm8xxx_xoadc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 918, i32 38}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 921, i32 10}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 924, i32 3}
!31 = !{ptr @pm8xxx_xoadc_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pm8xxx_xoadc_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 931, i32 3}
!35 = !{ptr @pm8xxx_xoadc_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pm8xxx_xoadc_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 949, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pm8xxx_xoadc_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pm8xxx_xoadc_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 832, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pm8xxx_xoadc_parse_channels._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pm8xxx_xoadc_parse_channels._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 835, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pm8xxx_xoadc_parse_channels.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 864, i32 3}
!56 = !{ptr @pm8xxx_xoadc_parse_channels._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pm8xxx_xoadc_parse_channels._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 869, i32 3}
!60 = !{ptr @pm8xxx_xoadc_parse_channels._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pm8xxx_xoadc_parse_channels._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 874, i32 3}
!64 = !{ptr @pm8xxx_xoadc_parse_channels._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pm8xxx_xoadc_parse_channels._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 745, i32 39}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 747, i32 3}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pm8xxx_xoadc_parse_channel._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @pm8xxx_xoadc_parse_channel._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 752, i32 3}
!75 = !{ptr @pm8xxx_xoadc_parse_channel._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pm8xxx_xoadc_parse_channel._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 768, i32 3}
!79 = !{ptr @pm8xxx_xoadc_parse_channel._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @pm8xxx_xoadc_parse_channel._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 779, i32 32}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 782, i32 4}
!85 = !{ptr @pm8xxx_xoadc_parse_channel._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pm8xxx_xoadc_parse_channel._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 786, i32 4}
!89 = !{ptr @pm8xxx_xoadc_parse_channel._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pm8xxx_xoadc_parse_channel._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 792, i32 33}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 796, i32 4}
!95 = !{ptr @pm8xxx_xoadc_parse_channel._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @pm8xxx_xoadc_parse_channel._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 812, i32 2}
!99 = !{ptr @pm8xxx_xoadc_parse_channel.__UNIQUE_ID_ddebug290, !98, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!100 = !{ptr @pm8xxx_xoadc_info, !101, !"pm8xxx_xoadc_info", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 727, i32 30}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 660, i32 4}
!104 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pm8xxx_read_raw._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @pm8xxx_read_raw._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @pm8xxx_read_raw._entry.56, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 680, i32 4}
!109 = !{ptr @pm8xxx_read_raw._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 447, i32 2}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pm8xxx_read_channel_rsv.__UNIQUE_ID_ddebug288, !111, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 540, i32 3}
!116 = !{ptr @pm8xxx_read_channel_rsv._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pm8xxx_read_channel_rsv._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 708, i32 3}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @pm8xxx_of_xlate._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @pm8xxx_of_xlate._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 715, i32 2}
!125 = !{ptr @pm8xxx_of_xlate.__UNIQUE_ID_ddebug289, !124, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 598, i32 3}
!128 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @pm8xxx_calibrate_device._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @pm8xxx_calibrate_device._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 606, i32 3}
!133 = !{ptr @pm8xxx_calibrate_device._entry.66, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @pm8xxx_calibrate_device._entry_ptr.68, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 610, i32 3}
!137 = !{ptr @pm8xxx_calibrate_device._entry.69, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @pm8xxx_calibrate_device._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 617, i32 2}
!141 = !{ptr @pm8xxx_calibrate_device._entry.72, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @pm8xxx_calibrate_device._entry_ptr.74, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 627, i32 3}
!145 = !{ptr @pm8xxx_calibrate_device._entry.75, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @pm8xxx_calibrate_device._entry_ptr.77, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @pm8xxx_calibrate_device._entry.78, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 633, i32 3}
!149 = !{ptr @pm8xxx_calibrate_device._entry_ptr.79, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 640, i32 2}
!152 = !{ptr @pm8xxx_calibrate_device._entry.80, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @pm8xxx_calibrate_device._entry_ptr.82, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @pm8xxx_xoadc_id_table, !155, !"pm8xxx_xoadc_id_table", i1 false, i1 false}
!155 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 996, i32 34}
!156 = !{ptr @pm8018_variant, !157, !"pm8018_variant", i1 false, i1 false}
!157 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 973, i32 35}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 232, i32 2}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 233, i32 2}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 234, i32 2}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 235, i32 2}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 237, i32 2}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 238, i32 2}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 239, i32 2}
!172 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 240, i32 2}
!174 = !{ptr @pm8018_xoadc_channels, !175, !"pm8018_xoadc_channels", i1 false, i1 false}
!175 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 231, i32 35}
!176 = !{ptr @pm8038_variant, !177, !"pm8038_variant", i1 false, i1 false}
!177 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 978, i32 35}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 251, i32 2}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 252, i32 2}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 254, i32 2}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 255, i32 2}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 256, i32 2}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 259, i32 2}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 260, i32 2}
!192 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 264, i32 2}
!194 = !{ptr @pm8038_xoadc_channels, !195, !"pm8038_xoadc_channels", i1 false, i1 false}
!195 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 248, i32 35}
!196 = !{ptr @pm8058_variant, !197, !"pm8058_variant", i1 false, i1 false}
!197 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 983, i32 35}
!198 = !{ptr @pm8058_xoadc_channels, !199, !"pm8058_xoadc_channels", i1 false, i1 false}
!199 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 276, i32 35}
!200 = !{ptr @pm8921_variant, !201, !"pm8921_variant", i1 false, i1 false}
!201 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 990, i32 35}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 316, i32 2}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 318, i32 2}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 319, i32 2}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 325, i32 2}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 328, i32 2}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 330, i32 2}
!214 = !{ptr @.str.105, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 331, i32 2}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 332, i32 2}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 333, i32 2}
!220 = !{ptr @.str.108, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 339, i32 2}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 340, i32 2}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 341, i32 2}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 342, i32 2}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 343, i32 2}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 344, i32 2}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 345, i32 2}
!234 = !{ptr @.str.115, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 350, i32 2}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 351, i32 2}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 352, i32 2}
!240 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 353, i32 2}
!242 = !{ptr @.str.119, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 354, i32 2}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 355, i32 2}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 356, i32 2}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 357, i32 2}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 358, i32 2}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 359, i32 2}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 360, i32 2}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 361, i32 2}
!258 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 362, i32 2}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 363, i32 2}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 364, i32 2}
!264 = !{ptr @pm8921_xoadc_channels, !265, !"pm8921_xoadc_channels", i1 false, i1 false}
!265 = !{!"../drivers/iio/adc/qcom-pm8xxx-xoadc.c", i32 310, i32 35}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 1, !"min_enum_size", i32 4}
!268 = !{i32 8, !"branch-target-enforcement", i32 0}
!269 = !{i32 8, !"sign-return-address", i32 0}
!270 = !{i32 8, !"sign-return-address-all", i32 0}
!271 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{i32 7, !"frame-pointer", i32 2}
!274 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!275 = !{!"auto-init"}
!276 = !{i64 2148342056, i64 2148342061, i64 2148342074, i64 2148342118, i64 2148342152, i64 2148342173}
!277 = !{!"branch_weights", i32 1, i32 2000}
!278 = !{i8 0, i8 2}
