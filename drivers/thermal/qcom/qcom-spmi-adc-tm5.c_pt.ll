; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/qcom-spmi-adc-tm5.c_pt.bc'
source_filename = "../drivers/thermal/qcom/qcom-spmi-adc-tm5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adc_tm5_data = type { i32, ptr, ptr, i8 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.adc_tm5_chip = type { ptr, ptr, ptr, ptr, i32, i32, i32, i16 }
%struct.adc_tm5_channel = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_qcom_spmi_adc_tm5__208_665_adc_tm5_driver_init6 = internal global ptr @adc_tm5_driver_init, section ".initcall6.init", align 4
@adc_tm5_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adc_tm5_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc_tm5_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adc_tm5_driver_exit = internal global ptr @adc_tm5_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description209 = internal constant [67 x i8] c"qcom_spmi_adc_tm5.description=SPMI PMIC Thermal Monitor ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [62 x i8] c"qcom_spmi_adc_tm5.file=drivers/thermal/qcom/qcom-spmi-adc-tm5\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [33 x i8] c"qcom_spmi_adc_tm5.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom-spmi-adc-tm5\00", [46 x i8] zeroinitializer }, align 32
@adc_tm5_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-adc-tm5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adc_tm5_data_pmic }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-adc-tm-hc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adc_tm_hc_data_pmic }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@adc_tm5_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_irq failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adc_tm5_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/thermal/qcom/qcom-spmi-adc-tm5.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc_tm5_probe._entry_ptr = internal global ptr @adc_tm5_probe._entry, section ".printk_index", align 4
@adc_tm5_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 622, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get dt data failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@adc_tm5_probe._entry_ptr.9 = internal global ptr @adc_tm5_probe._entry.7, section ".printk_index", align 4
@adc_tm5_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc-tm init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@adc_tm5_probe._entry_ptr.12 = internal global ptr @adc_tm5_probe._entry.10, section ".printk_index", align 4
@adc_tm5_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 637, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tzd register failed\0A\00", [43 x i8] zeroinitializer }, align 32
@adc_tm5_probe._entry_ptr.15 = internal global ptr @adc_tm5_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm-adc-tm5\00", [21 x i8] zeroinitializer }, align 32
@adc_tm5_data_pmic = internal constant { %struct.adc_tm5_data, [16 x i8] } { %struct.adc_tm5_data { i32 28900, ptr @.compoundliteral, ptr @.compoundliteral.24, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,decimation\00", [16 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid decimation %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc_tm5_get_dt_data\00", [44 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_data._entry_ptr = internal global ptr @adc_tm5_get_dt_data._entry, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,avg-samples\00", [47 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_data._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.4, i32 568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid avg-samples %d\0A\00", [40 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_data._entry_ptr.23 = internal global ptr @adc_tm5_get_dt_data._entry.21, section ".printk_index", align 4
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 250, i32 420, i32 840], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 15, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 1000, i32 2000, i32 4000, i32 8000, i32 16000, i32 32000, i32 64000, i32 128000], [32 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 457, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid channel number %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adc_tm5_get_dt_channel_data\00", [36 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr = internal global ptr @adc_tm5_get_dt_channel_data._entry, section ".printk_index", align 4
@adc_tm5_get_dt_channel_data._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 462, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: channel number too big: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr.29 = internal global ptr @adc_tm5_get_dt_channel_data._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"io-channels\00", [20 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: error parsing ADC channel number %d: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr.33 = internal global ptr @adc_tm5_get_dt_channel_data._entry.31, section ".printk_index", align 4
@adc_tm5_get_dt_channel_data._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: invalid ADC channel number %d\0A\00", [61 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr.36 = internal global ptr @adc_tm5_get_dt_channel_data._entry.34, section ".printk_index", align 4
@adc_tm5_get_dt_channel_data._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.26, ptr @.str.4, i32 490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error getting channel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr.39 = internal global ptr @adc_tm5_get_dt_channel_data._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,pre-scaling\00", [47 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.26, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: invalid pre-scaling <%d %d>\0A\00", [63 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr.43 = internal global ptr @adc_tm5_get_dt_channel_data._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom,hw-settle-time-us\00", [41 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s invalid hw-settle-time-us %d us\0A\00", [60 x i8] zeroinitializer }, align 32
@adc_tm5_get_dt_channel_data._entry_ptr.47 = internal global ptr @adc_tm5_get_dt_channel_data._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,ratiometric\00", [47 x i8] zeroinitializer }, align 32
@adc_tm_hc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid channel %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adc_tm_hc_init\00", [17 x i8] zeroinitializer }, align 32
@adc_tm_hc_init._entry_ptr = internal global ptr @adc_tm_hc_init._entry, section ".printk_index", align 4
@adc_tm_hc_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"block write failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@adc_tm_hc_init._entry_ptr.53 = internal global ptr @adc_tm_hc_init._entry.51, section ".printk_index", align 4
@adc_tm5_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read failed for BTM channels\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adc_tm5_init\00", [19 x i8] zeroinitializer }, align 32
@adc_tm5_init._entry_ptr = internal global ptr @adc_tm5_init._entry, section ".printk_index", align 4
@adc_tm5_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.55, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@adc_tm5_init._entry_ptr.57 = internal global ptr @adc_tm5_init._entry.56, section ".printk_index", align 4
@adc_tm5_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.55, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@adc_tm5_init._entry_ptr.59 = internal global ptr @adc_tm5_init._entry.58, section ".printk_index", align 4
@adc_tm5_ops = internal global { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @adc_tm5_get_temp, ptr null, ptr @adc_tm5_set_trips, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@adc_tm5_register_tzd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 373, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"thermal sensor on channel %d is not used\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adc_tm5_register_tzd\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adc_tm5_register_tzd._entry_ptr = internal global ptr @adc_tm5_register_tzd._entry, section ".printk_index", align 4
@adc_tm5_register_tzd._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.4, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error registering TZ zone for channel %d: %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@adc_tm5_register_tzd._entry_ptr.65 = internal global ptr @adc_tm5_register_tzd._entry.63, section ".printk_index", align 4
@adc_tm5_set_trips.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_spmi_adc_tm5\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adc_tm5_set_trips\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:low(mdegC):%d, high(mdegC):%d\0A\00", [62 x i8] zeroinitializer }, align 32
@adc_tm5_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"channel %d params read failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adc_tm5_configure\00", [46 x i8] zeroinitializer }, align 32
@adc_tm5_configure._entry_ptr = internal global ptr @adc_tm5_configure._entry, section ".printk_index", align 4
@adc_tm5_configure._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.4, i32 325, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"channel %d params write failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@adc_tm5_configure._entry_ptr.73 = internal global ptr @adc_tm5_configure._entry.71, section ".printk_index", align 4
@adc_tm5_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adc-tm enable failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adc_tm5_enable\00", [17 x i8] zeroinitializer }, align 32
@adc_tm5_enable._entry_ptr = internal global ptr @adc_tm5_enable._entry, section ".printk_index", align 4
@adc_tm5_enable._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"adc-tm request conversion failed\0A\00", [62 x i8] zeroinitializer }, align 32
@adc_tm5_enable._entry_ptr.78 = internal global ptr @adc_tm5_enable._entry.76, section ".printk_index", align 4
@adc_tm5_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"read status low failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adc_tm5_isr\00", [20 x i8] zeroinitializer }, align 32
@adc_tm5_isr._entry_ptr = internal global ptr @adc_tm5_isr._entry, section ".printk_index", align 4
@adc_tm5_isr._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read status high failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@adc_tm5_isr._entry_ptr.83 = internal global ptr @adc_tm5_isr._entry.81, section ".printk_index", align 4
@adc_tm5_isr._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ctl read failed: %d, channel %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adc_tm5_isr._entry_ptr.86 = internal global ptr @adc_tm5_isr._entry.84, section ".printk_index", align 4
@adc_tm_hc_data_pmic = internal constant { %struct.adc_tm5_data, [16 x i8] } { %struct.adc_tm5_data { i32 28900, ptr @.compoundliteral.87, ptr @.compoundliteral.88, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 512, i32 1024], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 1000, i32 2000, i32 4000, i32 6000, i32 8000, i32 10000], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"adc_tm5_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 658, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 660, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"adc_tm5_match_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 645, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 602, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 616, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 622, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 631, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 637, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 642, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant [18 x i8] c"adc_tm5_data_pmic\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 142, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 552, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 556, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 564, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 568, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 457, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 462, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 473, i32 47 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 475, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 481, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 490, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 494, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 498, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 508, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 512, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 521, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 395, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 405, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 419, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 425, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 438, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"adc_tm5_ops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 353, i32 42 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 372, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 377, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 342, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 283, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 325, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 260, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 267, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 181, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 187, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 201, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c"adc_tm_hc_data_pmic\00", align 1
@___asan_gen_.335 = private constant [44 x i8] c"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 150, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_adc_tm5_driver_exit, ptr @__initcall__kmod_qcom_spmi_adc_tm5__208_665_adc_tm5_driver_init6, ptr @adc_tm5_configure._entry, ptr @adc_tm5_configure._entry.71, ptr @adc_tm5_configure._entry_ptr, ptr @adc_tm5_configure._entry_ptr.73, ptr @adc_tm5_driver_exit, ptr @adc_tm5_enable._entry, ptr @adc_tm5_enable._entry.76, ptr @adc_tm5_enable._entry_ptr, ptr @adc_tm5_enable._entry_ptr.78, ptr @adc_tm5_get_dt_channel_data._entry, ptr @adc_tm5_get_dt_channel_data._entry.27, ptr @adc_tm5_get_dt_channel_data._entry.31, ptr @adc_tm5_get_dt_channel_data._entry.34, ptr @adc_tm5_get_dt_channel_data._entry.37, ptr @adc_tm5_get_dt_channel_data._entry.41, ptr @adc_tm5_get_dt_channel_data._entry.45, ptr @adc_tm5_get_dt_channel_data._entry_ptr, ptr @adc_tm5_get_dt_channel_data._entry_ptr.29, ptr @adc_tm5_get_dt_channel_data._entry_ptr.33, ptr @adc_tm5_get_dt_channel_data._entry_ptr.36, ptr @adc_tm5_get_dt_channel_data._entry_ptr.39, ptr @adc_tm5_get_dt_channel_data._entry_ptr.43, ptr @adc_tm5_get_dt_channel_data._entry_ptr.47, ptr @adc_tm5_get_dt_data._entry, ptr @adc_tm5_get_dt_data._entry.21, ptr @adc_tm5_get_dt_data._entry_ptr, ptr @adc_tm5_get_dt_data._entry_ptr.23, ptr @adc_tm5_init._entry, ptr @adc_tm5_init._entry.56, ptr @adc_tm5_init._entry.58, ptr @adc_tm5_init._entry_ptr, ptr @adc_tm5_init._entry_ptr.57, ptr @adc_tm5_init._entry_ptr.59, ptr @adc_tm5_isr._entry, ptr @adc_tm5_isr._entry.81, ptr @adc_tm5_isr._entry.84, ptr @adc_tm5_isr._entry_ptr, ptr @adc_tm5_isr._entry_ptr.83, ptr @adc_tm5_isr._entry_ptr.86, ptr @adc_tm5_probe._entry, ptr @adc_tm5_probe._entry.10, ptr @adc_tm5_probe._entry.13, ptr @adc_tm5_probe._entry.7, ptr @adc_tm5_probe._entry_ptr, ptr @adc_tm5_probe._entry_ptr.12, ptr @adc_tm5_probe._entry_ptr.15, ptr @adc_tm5_probe._entry_ptr.9, ptr @adc_tm5_register_tzd._entry, ptr @adc_tm5_register_tzd._entry.63, ptr @adc_tm5_register_tzd._entry_ptr, ptr @adc_tm5_register_tzd._entry_ptr.65, ptr @adc_tm_hc_init._entry, ptr @adc_tm_hc_init._entry.51, ptr @adc_tm_hc_init._entry_ptr, ptr @adc_tm_hc_init._entry_ptr.53, ptr @adc_tm5_driver, ptr @.str, ptr @adc_tm5_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @adc_tm5_data_pmic, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.compoundliteral, ptr @.compoundliteral.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @adc_tm5_ops, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @adc_tm_hc_data_pmic, ptr @.compoundliteral.87, ptr @.compoundliteral.88], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_data_pmic to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_data._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_get_dt_channel_data._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm_hc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm_hc_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_register_tzd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_register_tzd._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_configure._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_enable._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_isr._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm5_isr._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tm_hc_data_pmic to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_tm5_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adc_tm5_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc_tm5_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @adc_tm5_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_tm5_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf.i90 = alloca [4 x i8], align 1
  %channels_available.i = alloca i8, align 1
  %buf.i = alloca [2 x i8], align 1
  %chan.i.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %varr.i.i = alloca [2 x i32], align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %value.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !169
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #6
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %call.i, align 4
  %dev13 = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev13, align 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %conv = trunc i32 %9 to i16
  %base = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %base, align 4
  %call14 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call14) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %value.i, align 4, !annotation !169
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  %call.i.i81 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i81, null
  br i1 %cmp.not5.i.i, label %of_get_available_child_count.exit.thread.i, label %if.end17.for.body.i.i_crit_edge

if.end17.for.body.i.i_crit_edge:                  ; preds = %if.end17
  br label %for.body.i.i

of_get_available_child_count.exit.thread.i:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %nchannels89.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %nchannels89.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %nchannels89.i, align 4
  br label %adc_tm5_get_dt_data.exit.thread

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end17.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end17.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i81, %if.end17.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  %nchannels.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i.i, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i, label %of_get_available_child_count.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge, label %if.end.i

of_get_available_child_count.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_get_dt_data.exit.thread

if.end.i:                                         ; preds = %of_get_available_child_count.exit.i
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 32) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !170

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %channels592.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %channels592.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %channels592.i, align 4
  br label %adc_tm5_get_dt_data.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %19, i32 noundef 3520) #6
  %channels5.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %channels5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i.i, ptr %channels5.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %devm_kcalloc.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge, label %if.end9.i

devm_kcalloc.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_get_dt_data.exit.thread

if.end9.i:                                        ; preds = %devm_kcalloc.exit.i
  %call11.i = call ptr @of_device_get_match_data(ptr noundef %13) #6
  %data.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 2
  %tobool13.not.i = icmp eq ptr %call11.i, null
  %spec.select.i = select i1 %tobool13.not.i, ptr @adc_tm5_data_pmic, ptr %call11.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i, ptr %data.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool18.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end9.i.if.end26.i_crit_edge

if.end9.i.if.end26.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then19.i:                                      ; preds = %if.end9.i
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i, align 4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %decimation.i = getelementptr inbounds %struct.adc_tm5_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %decimation.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %decimation.i, align 4
  %call21.i = call i32 @qcom_adc5_decimation_from_dt(i32 noundef %23, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.i = icmp slt i32 %call21.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then19.i.if.end26.i_crit_edge

if.then19.i.if.end26.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

do.end.i:                                         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %29) #9
  br label %adc_tm5_get_dt_data.exit.thread

if.end26.i:                                       ; preds = %if.then19.i.if.end26.i_crit_edge, %if.end9.i.if.end26.i_crit_edge
  %.sink.i = phi i32 [ %call21.i, %if.then19.i.if.end26.i_crit_edge ], [ 2, %if.end9.i.if.end26.i_crit_edge ]
  %decimation25.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %decimation25.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %decimation25.i, align 4
  %call.i.i86.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i86.i)
  %tobool28.not.i = icmp sgt i32 %call.i.i86.i, -1
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end26.i.if.end39.i_crit_edge

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end26.i
  %31 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value.i, align 4
  %call30.i = call i32 @qcom_adc5_avg_samples_from_dt(i32 noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end35.i, label %if.then29.i.if.end39.i_crit_edge

if.then29.i.if.end39.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

do.end35.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %34) #9
  br label %adc_tm5_get_dt_data.exit.thread

if.end39.i:                                       ; preds = %if.then29.i.if.end39.i_crit_edge, %if.end26.i.if.end39.i_crit_edge
  %.sink244.i = phi i32 [ %call30.i, %if.then29.i.if.end39.i_crit_edge ], [ 0, %if.end26.i.if.end39.i_crit_edge ]
  %avg_samples38.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %avg_samples38.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink244.i, ptr %avg_samples38.i, align 4
  %call40.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp41.not148.i = icmp eq ptr %call40.i, null
  br i1 %cmp41.not148.i, label %if.end39.i.adc_tm5_get_dt_data.exit.thread126_crit_edge, label %for.body.lr.ph.i

if.end39.i.adc_tm5_get_dt_data.exit.thread126_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_get_dt_data.exit.thread126

for.body.lr.ph.i:                                 ; preds = %if.end39.i
  %36 = getelementptr inbounds [2 x i32], ptr %varr.i.i, i32 0, i32 1
  %args_count.i.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i.i, i32 0, i32 1
  %args17.i.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end68.i.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0150.i = phi ptr [ %call40.i, %for.body.lr.ph.i ], [ %call46.i, %if.end68.i.i.for.body.i_crit_edge ]
  %channels.0149.i = phi ptr [ %call5.i.i.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end68.i.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %child.0150.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %child.0150.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i.i) #6
  %39 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %chan.i.i, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #6
  %40 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %value.i.i, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %varr.i.i) #6
  %41 = ptrtoint ptr %varr.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %varr.i.i, align 4, !annotation !169
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %36, align 4, !annotation !169
  %43 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev13, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %45 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0150.i, ptr noundef nonnull @.str.1, ptr noundef nonnull %chan.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.25, ptr noundef %38, i32 noundef %call.i.i.i.i) #9
  br label %adc_tm5_get_dt_data.exit.thread129

if.end.i.i:                                       ; preds = %for.body.i
  %46 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chan.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp.i.i = icmp ugt i32 %47, 7
  br i1 %cmp.i.i, label %do.end6.i.i, label %if.end7.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.28, ptr noundef %38, i32 noundef %47) #9
  br label %adc_tm5_get_dt_data.exit.thread129

if.end7.i.i:                                      ; preds = %if.end.i.i
  %48 = ptrtoint ptr %channels.0149.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %channels.0149.i, align 4
  %call.i.i87.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.0150.i, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %cmp10.i.i = icmp slt i32 %call.i.i87.i, 0
  br i1 %cmp10.i.i, label %do.end14.i.i, label %if.end15.i.i

do.end14.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chan.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.32, ptr noundef %38, i32 noundef %50, i32 noundef %call.i.i87.i) #9
  br label %adc_tm5_get_dt_data.exit.thread129

if.end15.i.i:                                     ; preds = %if.end7.i.i
  %51 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args.i.i, align 4
  call void @of_node_put(ptr noundef %52) #6
  %53 = ptrtoint ptr %args_count.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %args_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp16.not.i.i = icmp eq i32 %54, 1
  br i1 %cmp16.not.i.i, label %lor.lhs.false.i.i, label %if.end15.i.i.do.end22.i.i_crit_edge

if.end15.i.i.do.end22.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22.i.i

lor.lhs.false.i.i:                                ; preds = %if.end15.i.i
  %55 = ptrtoint ptr %args17.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %args17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %56)
  %cmp18.i.i = icmp ugt i32 %56, 191
  br i1 %cmp18.i.i, label %lor.lhs.false.i.i.do.end22.i.i_crit_edge, label %if.end23.i.i

lor.lhs.false.i.i.do.end22.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end22.i.i_crit_edge, %if.end15.i.i.do.end22.i.i_crit_edge
  %57 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chan.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.35, ptr noundef %38, i32 noundef %58) #9
  br label %adc_tm5_get_dt_data.exit.thread129

if.end23.i.i:                                     ; preds = %lor.lhs.false.i.i
  %adc_channel.i.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %channels.0149.i, i32 0, i32 1
  %59 = ptrtoint ptr %adc_channel.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %adc_channel.i.i, align 4
  %60 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev13, align 4
  %call27.i.i = call ptr @devm_of_iio_channel_get_by_name(ptr noundef %61, ptr noundef nonnull %child.0150.i, ptr noundef null) #6
  %iio.i.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %channels.0149.i, i32 0, i32 5
  %62 = ptrtoint ptr %iio.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call27.i.i, ptr %iio.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then30.i.i, label %if.end39.i.i

if.then30.i.i:                                    ; preds = %if.end23.i.i
  %cmp33.not.i.i = icmp eq ptr %call27.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp33.not.i.i, label %if.then30.i.i.adc_tm5_get_dt_data.exit.thread129_crit_edge, label %adc_tm5_get_dt_data.exit

if.then30.i.i.adc_tm5_get_dt_data.exit.thread129_crit_edge: ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_get_dt_data.exit.thread129

if.end39.i.i:                                     ; preds = %if.end23.i.i
  %call.i127.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0150.i, ptr noundef nonnull @.str.40, ptr noundef nonnull %varr.i.i, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i127.i.i)
  %tobool41.not.i.i = icmp sgt i32 %call.i127.i.i, -1
  br i1 %tobool41.not.i.i, label %if.then42.i.i, label %if.end39.i.i.if.end55.i.i_crit_edge

if.end39.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i.i

if.then42.i.i:                                    ; preds = %if.end39.i.i
  %63 = ptrtoint ptr %varr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %varr.i.i, align 4
  %65 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %36, align 4
  %call45.i.i = call i32 @qcom_adc5_prescaling_from_dt(i32 noundef %64, i32 noundef %66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %cmp46.i.i = icmp slt i32 %call45.i.i, 0
  br i1 %cmp46.i.i, label %do.end50.i.i, label %if.then42.i.i.if.end55.i.i_crit_edge

if.then42.i.i.if.end55.i.i_crit_edge:             ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i.i

do.end50.i.i:                                     ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %varr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %varr.i.i, align 4
  %69 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.42, ptr noundef %38, i32 noundef %68, i32 noundef %70) #9
  br label %adc_tm5_get_dt_data.exit.thread129

if.end55.i.i:                                     ; preds = %if.then42.i.i.if.end55.i.i_crit_edge, %if.end39.i.i.if.end55.i.i_crit_edge
  %.sink.i.i = phi i32 [ %call45.i.i, %if.then42.i.i.if.end55.i.i_crit_edge ], [ 0, %if.end39.i.i.if.end55.i.i_crit_edge ]
  %prescale54.i.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %channels.0149.i, i32 0, i32 3
  %71 = ptrtoint ptr %prescale54.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i.i, ptr %prescale54.i.i, align 4
  %call.i.i128.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0150.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %value.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i128.i.i)
  %tobool57.not.i.i = icmp sgt i32 %call.i.i128.i.i, -1
  br i1 %tobool57.not.i.i, label %if.then58.i.i, label %if.end55.i.i.if.end68.i.i_crit_edge

if.end55.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i.i

if.then58.i.i:                                    ; preds = %if.end55.i.i
  %72 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %value.i.i, align 4
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %hw_settle.i.i = getelementptr inbounds %struct.adc_tm5_data, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %hw_settle.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_settle.i.i, align 4
  %call59.i.i = call i32 @qcom_adc5_hw_settle_time_from_dt(i32 noundef %73, ptr noundef %77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %cmp60.i.i = icmp slt i32 %call59.i.i, 0
  br i1 %cmp60.i.i, label %do.end64.i.i, label %if.then58.i.i.if.end68.i.i_crit_edge

if.then58.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i.i

do.end64.i.i:                                     ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %value.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.46, ptr noundef %38, i32 noundef %79) #9
  br label %adc_tm5_get_dt_data.exit.thread129

if.end68.i.i:                                     ; preds = %if.then58.i.i.if.end68.i.i_crit_edge, %if.end55.i.i.if.end68.i.i_crit_edge
  %.sink130.i.i = phi i32 [ %call59.i.i, %if.then58.i.i.if.end68.i.i_crit_edge ], [ 0, %if.end55.i.i.if.end68.i.i_crit_edge ]
  %hw_settle_time67.i.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %channels.0149.i, i32 0, i32 4
  %80 = ptrtoint ptr %hw_settle_time67.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink130.i.i, ptr %hw_settle_time67.i.i, align 4
  %call.i129.i.i = call ptr @of_find_property(ptr noundef nonnull %child.0150.i, ptr noundef nonnull @.str.48, ptr noundef null) #6
  %tobool.i.not.i.i = icmp eq ptr %call.i129.i.i, null
  %cal_method72.i.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %channels.0149.i, i32 0, i32 2
  %..i = select i1 %tobool.i.not.i.i, i32 2, i32 1
  %81 = ptrtoint ptr %cal_method72.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %..i, ptr %cal_method72.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %varr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i.i) #6
  %incdec.ptr.i = getelementptr %struct.adc_tm5_channel, ptr %channels.0149.i, i32 1
  %call46.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0150.i) #6
  %cmp41.not.i = icmp eq ptr %call46.i, null
  br i1 %cmp41.not.i, label %if.end68.i.i.adc_tm5_get_dt_data.exit.thread126_crit_edge, label %if.end68.i.i.for.body.i_crit_edge

if.end68.i.i.for.body.i_crit_edge:                ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end68.i.i.adc_tm5_get_dt_data.exit.thread126_crit_edge: ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_get_dt_data.exit.thread126

adc_tm5_get_dt_data.exit.thread129:               ; preds = %do.end64.i.i, %do.end50.i.i, %if.then30.i.i.adc_tm5_get_dt_data.exit.thread129_crit_edge, %do.end22.i.i, %do.end14.i.i, %do.end6.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -517, %if.then30.i.i.adc_tm5_get_dt_data.exit.thread129_crit_edge ], [ %call45.i.i, %do.end50.i.i ], [ %call59.i.i, %do.end64.i.i ], [ -22, %do.end22.i.i ], [ %call.i.i87.i, %do.end14.i.i ], [ -22, %do.end6.i.i ], [ %call.i.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %varr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i.i) #6
  call void @of_node_put(ptr noundef nonnull %child.0150.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %do.end23

adc_tm5_get_dt_data.exit.thread:                  ; preds = %do.end35.i, %do.end.i, %devm_kcalloc.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %of_get_available_child_count.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge, %of_get_available_child_count.exit.thread.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -22, %of_get_available_child_count.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge ], [ -22, %of_get_available_child_count.exit.i.adc_tm5_get_dt_data.exit.thread_crit_edge ], [ %call21.i, %do.end.i ], [ %call30.i, %do.end35.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %do.end23

adc_tm5_get_dt_data.exit.thread126:               ; preds = %if.end68.i.i.adc_tm5_get_dt_data.exit.thread126_crit_edge, %if.end39.i.adc_tm5_get_dt_data.exit.thread126_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %is_hc = getelementptr inbounds %struct.adc_tm5_data, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %is_hc to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %is_hc, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool25.not = icmp eq i8 %85, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

adc_tm5_get_dt_data.exit:                         ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %call27.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.38, ptr noundef %38, i32 noundef %86) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %varr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i.i) #6
  call void @of_node_put(ptr noundef nonnull %child.0150.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %do.end23

do.end23:                                         ; preds = %adc_tm5_get_dt_data.exit, %adc_tm5_get_dt_data.exit.thread, %adc_tm5_get_dt_data.exit.thread129
  %retval.0.i124 = phi i32 [ %retval.0.i.ph, %adc_tm5_get_dt_data.exit.thread ], [ %86, %adc_tm5_get_dt_data.exit ], [ %retval.0.i.ph.i, %adc_tm5_get_dt_data.exit.thread129 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i124) #9
  br label %cleanup

if.then26:                                        ; preds = %adc_tm5_get_dt_data.exit.thread126
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %87 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %88 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp28.not.i = icmp eq i32 %89, 0
  br i1 %cmp28.not.i, label %if.then26.for.end.i_crit_edge, label %for.body.lr.ph.i83

if.then26.for.end.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i83:                               ; preds = %if.then26
  %90 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %channels5.i, align 4
  br label %for.body.i84

for.cond.i:                                       ; preds = %for.body.i84
  %inc.i = add nuw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %89
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i84_crit_edge

for.cond.i.for.body.i84_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i84

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i84:                                     ; preds = %for.cond.i.for.body.i84_crit_edge, %for.body.lr.ph.i83
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i83 ], [ %inc.i, %for.cond.i.for.body.i84_crit_edge ]
  %arrayidx.i = getelementptr %struct.adc_tm5_channel, ptr %91, i32 %i.029.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %93)
  %cmp1.i = icmp ugt i32 %93, 7
  br i1 %cmp1.i, label %do.end.i85, label %for.cond.i

do.end.i85:                                       ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.49, i32 noundef %93) #9
  br label %adc_tm_hc_init.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.then26.for.end.i_crit_edge
  %96 = ptrtoint ptr %decimation25.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %decimation25.i, align 4
  %conv.i = trunc i32 %97 to i8
  %98 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv.i, ptr %buf.i, align 1
  %99 = ptrtoint ptr %avg_samples38.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %avg_samples38.i, align 4
  %101 = trunc i32 %100 to i8
  %conv6.i = or i8 %101, -128
  %102 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv6.i, ptr %87, align 1
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %base, align 4
  %conv.i.i = zext i16 %106 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 66
  %call.i.i87 = call i32 @regmap_bulk_write(ptr noundef %104, i32 noundef %add.i.i, ptr noundef nonnull %buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %tobool.not.i88 = icmp eq i32 %call.i.i87, 0
  br i1 %tobool.not.i88, label %for.end.i.adc_tm_hc_init.exit_crit_edge, label %do.end11.i

for.end.i.adc_tm_hc_init.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm_hc_init.exit

do.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.52, i32 noundef %call.i.i87) #9
  br label %adc_tm_hc_init.exit

adc_tm_hc_init.exit:                              ; preds = %do.end11.i, %for.end.i.adc_tm_hc_init.exit_crit_edge, %do.end.i85
  %retval.0.i89 = phi i32 [ -22, %do.end.i85 ], [ %call.i.i87, %do.end11.i ], [ 0, %for.end.i.adc_tm_hc_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end29

if.else:                                          ; preds = %adc_tm5_get_dt_data.exit.thread126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i90) #6
  %109 = getelementptr inbounds [4 x i8], ptr %buf.i90, i32 0, i32 1
  %110 = getelementptr inbounds [4 x i8], ptr %buf.i90, i32 0, i32 2
  %111 = getelementptr inbounds [4 x i8], ptr %buf.i90, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %channels_available.i) #6
  %112 = ptrtoint ptr %channels_available.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -1, ptr %channels_available.i, align 1, !annotation !169
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %base, align 4
  %conv.i.i92 = zext i16 %116 to i32
  %add.i.i93 = add nuw nsw i32 %conv.i.i92, 15
  %call.i.i94 = call i32 @regmap_bulk_read(ptr noundef %114, i32 noundef %add.i.i93, ptr noundef nonnull %channels_available.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %tobool.not.i95 = icmp eq i32 %call.i.i94, 0
  br i1 %tobool.not.i95, label %for.cond.preheader.i, label %do.end.i101

for.cond.preheader.i:                             ; preds = %if.else
  %117 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp83.not.i = icmp eq i32 %118, 0
  br i1 %cmp83.not.i, label %for.cond.preheader.i.for.end.i109_crit_edge, label %for.body.lr.ph.i99

for.cond.preheader.i.for.end.i109_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i109

for.body.lr.ph.i99:                               ; preds = %for.cond.preheader.i
  %119 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %channels5.i, align 4
  %121 = ptrtoint ptr %channels_available.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %channels_available.i, align 1
  %conv.i98 = zext i8 %122 to i32
  br label %for.body.i106

do.end.i101:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.54) #9
  br label %adc_tm5_init.exit

for.cond.i104:                                    ; preds = %for.body.i106
  %inc.i102 = add nuw i32 %i.084.i, 1
  %exitcond.not.i103 = icmp eq i32 %inc.i102, %118
  br i1 %exitcond.not.i103, label %for.cond.i104.for.end.i109_crit_edge, label %for.cond.i104.for.body.i106_crit_edge

for.cond.i104.for.body.i106_crit_edge:            ; preds = %for.cond.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i106

for.cond.i104.for.end.i109_crit_edge:             ; preds = %for.cond.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i109

for.body.i106:                                    ; preds = %for.cond.i104.for.body.i106_crit_edge, %for.body.lr.ph.i99
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i99 ], [ %inc.i102, %for.cond.i104.for.body.i106_crit_edge ]
  %arrayidx.i105 = getelementptr %struct.adc_tm5_channel, ptr %120, i32 %i.084.i
  %125 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %conv.i98)
  %cmp1.not.i = icmp ult i32 %126, %conv.i98
  br i1 %cmp1.not.i, label %for.cond.i104, label %do.end6.i

do.end6.i:                                        ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.49, i32 noundef %126) #9
  br label %adc_tm5_init.exit

for.end.i109:                                     ; preds = %for.cond.i104.for.end.i109_crit_edge, %for.cond.preheader.i.for.end.i109_crit_edge
  %129 = ptrtoint ptr %decimation25.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %decimation25.i, align 4
  %conv12.i = trunc i32 %130 to i8
  %131 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv12.i, ptr %buf.i90, align 1
  %132 = ptrtoint ptr %avg_samples38.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %avg_samples38.i, align 4
  %134 = trunc i32 %133 to i8
  %conv14.i = or i8 %134, -128
  %135 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv14.i, ptr %109, align 1
  %136 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 3, ptr %110, align 1
  %137 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -92, ptr %111, align 1
  %138 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call.i, align 4
  %140 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %base, align 4
  %conv.i80.i = zext i16 %141 to i32
  %add.i81.i = add nuw nsw i32 %conv.i80.i, 66
  %call.i82.i = call i32 @regmap_bulk_write(ptr noundef %139, i32 noundef %add.i81.i, ptr noundef nonnull %buf.i90, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool52.not.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool52.not.i, label %for.end.i109.adc_tm5_init.exit_crit_edge, label %do.end56.i

for.end.i109.adc_tm5_init.exit_crit_edge:         ; preds = %for.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_init.exit

do.end56.i:                                       ; preds = %for.end.i109
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.52, i32 noundef %call.i82.i) #9
  br label %adc_tm5_init.exit

adc_tm5_init.exit:                                ; preds = %do.end56.i, %for.end.i109.adc_tm5_init.exit_crit_edge, %do.end6.i, %do.end.i101
  %retval.0.i110 = phi i32 [ %call.i.i94, %do.end.i101 ], [ -22, %do.end6.i ], [ %call.i82.i, %do.end56.i ], [ 0, %for.end.i109.adc_tm5_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %channels_available.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i90) #6
  br label %if.end29

if.end29:                                         ; preds = %adc_tm5_init.exit, %adc_tm_hc_init.exit
  %ret.0 = phi i32 [ %retval.0.i89, %adc_tm_hc_init.exit ], [ %retval.0.i110, %adc_tm5_init.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool30.not = icmp eq i32 %ret.0, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %144 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp49.not.i = icmp eq i32 %145, 0
  br i1 %cmp49.not.i, label %if.end35.if.end42_crit_edge, label %if.end35.for.body.i117_crit_edge

if.end35.for.body.i117_crit_edge:                 ; preds = %if.end35
  br label %for.body.i117

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.body.i117:                                    ; preds = %for.inc.i.for.body.i117_crit_edge, %if.end35.for.body.i117_crit_edge
  %i.050.i = phi i32 [ %inc.i119, %for.inc.i.for.body.i117_crit_edge ], [ 0, %if.end35.for.body.i117_crit_edge ]
  %146 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %channels5.i, align 4
  %chip.i = getelementptr %struct.adc_tm5_channel, ptr %147, i32 %i.050.i, i32 6
  %148 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i, ptr %chip.i, align 4
  %149 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev13, align 4
  %151 = load ptr, ptr %channels5.i, align 4
  %arrayidx2.i = getelementptr %struct.adc_tm5_channel, ptr %151, i32 %i.050.i
  %152 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx2.i, align 4
  %call.i115 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %150, i32 noundef %153, ptr noundef %arrayidx2.i, ptr noundef nonnull @adc_tm5_ops) #6
  %cmp.i.i116 = icmp ugt ptr %call.i115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %if.then.i, label %if.end22.i

if.then.i:                                        ; preds = %for.body.i117
  %cmp7.i = icmp eq ptr %call.i115, inttoptr (i32 -19 to ptr)
  br i1 %cmp7.i, label %do.end.i118, label %adc_tm5_register_tzd.exit

do.end.i118:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev13, align 4
  %156 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %channels5.i, align 4
  %arrayidx11.i = getelementptr %struct.adc_tm5_channel, ptr %157, i32 %i.050.i
  %158 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx11.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %155, ptr noundef nonnull @.str.60, i32 noundef %159) #9
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %channels5.i, align 4
  %tzd25.i = getelementptr %struct.adc_tm5_channel, ptr %161, i32 %i.050.i, i32 7
  %162 = ptrtoint ptr %tzd25.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i115, ptr %tzd25.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %do.end.i118
  %inc.i119 = add nuw i32 %i.050.i, 1
  %163 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nchannels.i, align 4
  %cmp.i120 = icmp ult i32 %inc.i119, %164
  br i1 %cmp.i120, label %for.inc.i.for.body.i117_crit_edge, label %for.inc.i.if.end42_crit_edge

for.inc.i.if.end42_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.inc.i.for.body.i117_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i117

adc_tm5_register_tzd.exit:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %call.i115 to i32
  %166 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev13, align 4
  %168 = ptrtoint ptr %channels5.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %channels5.i, align 4
  %arrayidx18.i = getelementptr %struct.adc_tm5_channel, ptr %169, i32 %i.050.i
  %170 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx18.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.64, i32 noundef %171, i32 noundef %165) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end42:                                         ; preds = %for.inc.i.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %call43 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef null, ptr noundef nonnull @adc_tm5_isr, i32 noundef 8192, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %adc_tm5_register_tzd.exit, %do.end34, %do.end23, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end ], [ %retval.0.i124, %do.end23 ], [ %ret.0, %do.end34 ], [ %165, %adc_tm5_register_tzd.exit ], [ %call43, %if.end42 ], [ -19, %entry.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_tm5_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %status_low = alloca i8, align 1
  %status_high = alloca i8, align 1
  %ctl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_low) #6
  %0 = ptrtoint ptr %status_low to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status_low, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_high) #6
  %1 = ptrtoint ptr %status_high to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status_high, align 1, !annotation !169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctl) #6
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ctl, align 1, !annotation !169
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %base.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %conv.i, 10
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %status_low, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !172

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.adc_tm5_chip, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.79, i32 noundef %call.i) #9
  br label %cleanup68

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %base.i, align 4
  %conv.i96 = zext i16 %12 to i32
  %add.i97 = add nuw nsw i32 %conv.i96, 11
  %call.i98 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %add.i97, ptr noundef nonnull %status_high, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool4.not = icmp eq i32 %call.i98, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %do.end14, !prof !172

for.cond.preheader:                               ; preds = %if.end
  %nchannels = getelementptr inbounds %struct.adc_tm5_chip, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp103.not = icmp eq i32 %14, 0
  br i1 %cmp103.not, label %for.cond.preheader.cleanup68_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup68_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channels = getelementptr inbounds %struct.adc_tm5_chip, ptr %data, i32 0, i32 3
  %dev35 = getelementptr inbounds %struct.adc_tm5_chip, ptr %data, i32 0, i32 1
  br label %for.body

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.adc_tm5_chip, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.82, i32 noundef %call.i98) #9
  br label %cleanup68

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.adc_tm5_channel, ptr %18, i32 %i.0104
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %tzd = getelementptr %struct.adc_tm5_channel, ptr %18, i32 %i.0104, i32 7
  %21 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tzd, align 4
  %tobool19.not = icmp eq ptr %22, null
  br i1 %tobool19.not, label %for.body.cleanup_crit_edge, label %if.end21

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %23 = shl i32 %20, 3
  %conv = add i32 %23, 103
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base.i, align 4
  %conv.i100 = zext i16 %27 to i32
  %conv1.i = and i32 %conv, 65535
  %add.i101 = add nuw nsw i32 %conv1.i, %conv.i100
  %call.i102 = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef %add.i101, ptr noundef nonnull %ctl, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool24.not = icmp eq i32 %call.i102, 0
  br i1 %tobool24.not, label %if.end36, label %do.end34, !prof !172

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.85, i32 noundef %call.i102, i32 noundef %i.0104) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %30 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctl, align 1
  %conv37 = zext i8 %31 to i32
  %and = and i32 %conv37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %32 = ptrtoint ptr %status_low to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %status_low, align 1
  %conv41 = zext i8 %33 to i32
  %shl = shl nuw i32 1, %20
  %and42 = and i32 %shl, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp ne i32 %and42, 0
  %and45 = and i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46 = icmp ne i32 %and45, 0
  %34 = select i1 %tobool43.not, i1 %tobool46, i1 false
  %35 = ptrtoint ptr %status_high to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status_high, align 1
  %conv47 = zext i8 %36 to i32
  %and49 = and i32 %shl, %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %lor.lhs.false.critedge, label %land.rhs51

land.rhs51:                                       ; preds = %if.end40
  %37 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool54 = icmp ne i8 %37, 0
  %brmerge = select i1 %tobool54, i1 true, i1 %34
  br i1 %brmerge, label %land.rhs51.if.then61_crit_edge, label %land.rhs51.cleanup_crit_edge

land.rhs51.cleanup_crit_edge:                     ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs51.if.then61_crit_edge:                   ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

lor.lhs.false.critedge:                           ; preds = %if.end40
  br i1 %34, label %lor.lhs.false.critedge.if.then61_crit_edge, label %lor.lhs.false.critedge.cleanup_crit_edge

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.critedge.if.then61_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

if.then61:                                        ; preds = %lor.lhs.false.critedge.if.then61_crit_edge, %land.rhs51.if.then61_crit_edge
  %38 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channels, align 4
  %tzd64 = getelementptr %struct.adc_tm5_channel, ptr %39, i32 %i.0104, i32 7
  %40 = ptrtoint ptr %tzd64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tzd64, align 4
  call void @thermal_zone_device_update(ptr noundef %41, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %lor.lhs.false.critedge.cleanup_crit_edge, %land.rhs51.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end34, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %42 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nchannels, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup68_crit_edge

cleanup.cleanup68_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup68

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup68:                                        ; preds = %cleanup.cleanup68_crit_edge, %do.end14, %for.cond.preheader.cleanup68_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctl) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_high) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_low) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_decimation_from_dt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_avg_samples_from_dt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iio_channel_get_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_prescaling_from_dt(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_hw_settle_time_from_dt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_tm5_get_temp(ptr noundef readonly %data, ptr noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iio = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iio, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @iio_read_channel_processed(ptr noundef nonnull %1, ptr noundef %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp5.not = icmp eq i32 %call, 1
  %. = select i1 %cmp5.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_tm5_set_trips(ptr noundef readonly %data, i32 noundef %low, i32 noundef %high) #2 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  %buf.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip1 = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc_tm5_set_trips.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc_tm5_set_trips, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !173

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.adc_tm5_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc_tm5_set_trips.__UNIQUE_ID_ddebug197, ptr noundef %3, ptr noundef nonnull @.str.68, i32 noundef %5, i32 noundef %low, i32 noundef %high) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %high)
  %cmp = icmp eq i32 %high, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483646, i32 %low)
  %cmp8 = icmp slt i32 %low, -2147483646
  %or.cond = and i1 %cmp8, %cmp
  %6 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip1, align 4
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %10 = shl i32 %9, 3
  %conv.i = add i32 %10, 103
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %base.i.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %conv1.i.i = and i32 %conv.i, 65535
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add.i.i, i32 noundef 131, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #6
  %15 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 3
  %18 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 4
  %19 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 5
  %20 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 6
  %21 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 7
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %buf.i, align 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %25 = shl i32 %24, 3
  %conv.i24 = add i32 %25, 96
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %7, align 4
  %base.i.i25 = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 7
  %28 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %base.i.i25, align 4
  %conv.i.i26 = zext i16 %29 to i32
  %conv1.i.i27 = and i32 %conv.i24, 65528
  %add.i.i28 = add nuw nsw i32 %conv1.i.i27, %conv.i.i26
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef %add.i.i28, ptr noundef nonnull %buf.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.69, i32 noundef %33, i32 noundef %call.i.i) #9
  br label %adc_tm5_configure.exit

if.end.i:                                         ; preds = %if.else
  %adc_channel.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %adc_channel.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %adc_channel.i, align 4
  %conv5.i = trunc i32 %35 to i8
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv5.i, ptr %buf.i, align 8
  br i1 %cmp, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prescale.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 3
  %37 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prescale.i, align 4
  %data.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 2
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %call8.i = call zeroext i16 @qcom_adc_tm5_temp_volt_scale(i32 noundef %38, i32 noundef %42, i32 noundef %high) #6
  %conv10.i = trunc i16 %call8.i to i8
  %43 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv10.i, ptr %15, align 1
  %44 = lshr i16 %call8.i, 8
  %conv13.i = trunc i16 %44 to i8
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv13.i, ptr %16, align 2
  %46 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %21, align 1
  %48 = or i8 %47, 1
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %21, align 1
  %51 = and i8 %50, -2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then7.i
  %storemerge.i = phi i8 [ %51, %if.else.i ], [ %48, %if.then7.i ]
  %52 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %storemerge.i, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %low)
  %cmp23.not.i = icmp eq i32 %low, -2147483647
  br i1 %cmp23.not.i, label %if.else43.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %prescale27.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 3
  %53 = ptrtoint ptr %prescale27.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prescale27.i, align 4
  %data28.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 2
  %55 = ptrtoint ptr %data28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data28.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %call30.i = call zeroext i16 @qcom_adc_tm5_temp_volt_scale(i32 noundef %54, i32 noundef %58, i32 noundef %low) #6
  %conv33.i = trunc i16 %call30.i to i8
  %59 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv33.i, ptr %17, align 1
  %60 = lshr i16 %call30.i, 8
  %conv37.i = trunc i16 %60 to i8
  %61 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv37.i, ptr %18, align 4
  %62 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %21, align 1
  %64 = or i8 %63, 2
  br label %if.end48.i

if.else43.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = and i8 %storemerge.i, -3
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else43.i, %if.then25.i
  %storemerge160.i = phi i8 [ %65, %if.else43.i ], [ %64, %if.then25.i ]
  %66 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %storemerge160.i, ptr %21, align 1
  %67 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %19, align 1
  %68 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %20, align 2
  %70 = and i8 %69, -16
  store i8 %70, ptr %20, align 2
  %hw_settle_time.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 4
  %71 = ptrtoint ptr %hw_settle_time.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hw_settle_time.i, align 4
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 15
  %.masked.i = and i8 %69, -64
  %75 = or i8 %74, %.masked.i
  store i8 %75, ptr %20, align 2
  %cal_method.i = getelementptr inbounds %struct.adc_tm5_channel, ptr %data, i32 0, i32 2
  %76 = ptrtoint ptr %cal_method.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cal_method.i, align 4
  %.tr161.i = trunc i32 %77 to i8
  %78 = shl i8 %.tr161.i, 4
  %79 = and i8 %78, 48
  %conv113.i = or i8 %79, %75
  store i8 %conv113.i, ptr %20, align 2
  %80 = or i8 %storemerge160.i, -128
  store i8 %80, ptr %21, align 1
  %81 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %7, align 4
  %83 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %base.i.i25, align 4
  %conv.i165.i = zext i16 %84 to i32
  %add.i167.i = add nuw nsw i32 %conv1.i.i27, %conv.i165.i
  %call.i168.i = call i32 @regmap_bulk_write(ptr noundef %82, i32 noundef %add.i167.i, ptr noundef nonnull %buf.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168.i)
  %tobool120.not.i = icmp eq i32 %call.i168.i, 0
  br i1 %tobool120.not.i, label %if.end127.i, label %do.end124.i

do.end124.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev125.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 1
  %85 = ptrtoint ptr %dev125.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev125.i, align 4
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.72, i32 noundef %88, i32 noundef %call.i168.i) #9
  br label %adc_tm5_configure.exit

if.end127.i:                                      ; preds = %if.end48.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #6
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -128, ptr %data.i.i, align 1
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %7, align 4
  %92 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %base.i.i25, align 4
  %conv.i.i.i = zext i16 %93 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 70
  %call.i.i.i29 = call i32 @regmap_bulk_write(ptr noundef %91, i32 noundef %add.i.i.i, ptr noundef nonnull %data.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %cmp.i.i = icmp slt i32 %call.i.i.i29, 0
  br i1 %cmp.i.i, label %if.end127.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i

if.end127.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %if.end127.i
  %94 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -128, ptr %data.i.i, align 1
  %95 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %7, align 4
  %97 = ptrtoint ptr %base.i.i25 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %base.i.i25, align 4
  %conv.i17.i.i = zext i16 %98 to i32
  %add.i18.i.i = add nuw nsw i32 %conv.i17.i.i, 71
  %call.i19.i.i = call i32 @regmap_bulk_write(ptr noundef %96, i32 noundef %add.i18.i.i, ptr noundef nonnull %data.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %cmp2.i.i = icmp slt i32 %call.i19.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i.adc_tm5_enable.exit.i_crit_edge

if.end.i.i.adc_tm5_enable.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adc_tm5_enable.exit.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %if.end127.i.cleanup.sink.split.i.i_crit_edge
  %.str.77.sink.i.i = phi ptr [ @.str.74, %if.end127.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.77, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i.i29, %if.end127.i.cleanup.sink.split.i.i_crit_edge ], [ %call.i19.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %dev7.i.i = getelementptr inbounds %struct.adc_tm5_chip, ptr %7, i32 0, i32 1
  %99 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev7.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull %.str.77.sink.i.i) #9
  br label %adc_tm5_enable.exit.i

adc_tm5_enable.exit.i:                            ; preds = %cleanup.sink.split.i.i, %if.end.i.i.adc_tm5_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i.adc_tm5_enable.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #6
  br label %adc_tm5_configure.exit

adc_tm5_configure.exit:                           ; preds = %adc_tm5_enable.exit.i, %do.end124.i, %do.end.i
  %retval.0.i30 = phi i32 [ %call.i.i, %do.end.i ], [ %call.i168.i, %do.end124.i ], [ %retval.0.i.i, %adc_tm5_enable.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %adc_tm5_configure.exit, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i.i, %if.then9 ], [ %retval.0.i30, %adc_tm5_configure.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qcom_adc_tm5_temp_volt_scale(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_qcom_spmi_adc_tm5__208_665_adc_tm5_driver_init6, !1, !"__initcall__kmod_qcom_spmi_adc_tm5__208_665_adc_tm5_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_adc_tm5_driver_exit, !1, !"__exitcall_adc_tm5_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description209, !4, !"__UNIQUE_ID_description209", i1 false, i1 false}
!4 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_file210, !6, !"__UNIQUE_ID_file210", i1 false, i1 false}
!6 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_license211, !6, !"__UNIQUE_ID_license211", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 660, i32 11}
!10 = !{ptr @adc_tm5_driver, !11, !"adc_tm5_driver", i1 false, i1 false}
!11 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 658, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 602, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 616, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adc_tm5_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @adc_tm5_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 622, i32 3}
!24 = !{ptr @adc_tm5_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @adc_tm5_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 631, i32 3}
!28 = !{ptr @adc_tm5_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adc_tm5_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 637, i32 3}
!32 = !{ptr @adc_tm5_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adc_tm5_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 642, i32 21}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 552, i32 35}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 556, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adc_tm5_get_dt_data._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @adc_tm5_get_dt_data._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 564, i32 35}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 568, i32 4}
!47 = !{ptr @adc_tm5_get_dt_data._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @adc_tm5_get_dt_data._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @adc_tm5_data_pmic, !50, !"adc_tm5_data_pmic", i1 false, i1 false}
!50 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 142, i32 34}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 457, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adc_tm5_get_dt_channel_data._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 462, i32 3}
!58 = !{ptr @adc_tm5_get_dt_channel_data._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 473, i32 47}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 475, i32 3}
!64 = !{ptr @adc_tm5_get_dt_channel_data._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 481, i32 3}
!68 = !{ptr @adc_tm5_get_dt_channel_data._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 490, i32 4}
!72 = !{ptr @adc_tm5_get_dt_channel_data._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 494, i32 41}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 498, i32 4}
!78 = !{ptr @adc_tm5_get_dt_channel_data._entry.41, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 508, i32 35}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 512, i32 4}
!84 = !{ptr @adc_tm5_get_dt_channel_data._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @adc_tm5_get_dt_channel_data._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 521, i32 34}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 395, i32 4}
!90 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @adc_tm_hc_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @adc_tm_hc_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 405, i32 3}
!95 = !{ptr @adc_tm_hc_init._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @adc_tm_hc_init._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 419, i32 3}
!99 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @adc_tm5_init._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @adc_tm5_init._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @adc_tm5_init._entry.56, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 425, i32 4}
!104 = !{ptr @adc_tm5_init._entry_ptr.57, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @adc_tm5_init._entry.58, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 438, i32 3}
!107 = !{ptr @adc_tm5_init._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 372, i32 5}
!110 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @adc_tm5_register_tzd._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @adc_tm5_register_tzd._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 377, i32 4}
!116 = !{ptr @adc_tm5_register_tzd._entry.63, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @adc_tm5_register_tzd._entry_ptr.65, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @adc_tm5_ops, !119, !"adc_tm5_ops", i1 false, i1 false}
!119 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 353, i32 42}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 342, i32 2}
!122 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @adc_tm5_set_trips.__UNIQUE_ID_ddebug197, !121, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 283, i32 3}
!127 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @adc_tm5_configure._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @adc_tm5_configure._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 325, i32 3}
!132 = !{ptr @adc_tm5_configure._entry.71, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @adc_tm5_configure._entry_ptr.73, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 260, i32 3}
!136 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @adc_tm5_enable._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @adc_tm5_enable._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 267, i32 3}
!141 = !{ptr @adc_tm5_enable._entry.76, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @adc_tm5_enable._entry_ptr.78, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 181, i32 3}
!145 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @adc_tm5_isr._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @adc_tm5_isr._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 187, i32 3}
!150 = !{ptr @adc_tm5_isr._entry.81, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @adc_tm5_isr._entry_ptr.83, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 201, i32 4}
!154 = !{ptr @adc_tm5_isr._entry.84, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @adc_tm5_isr._entry_ptr.86, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @adc_tm5_match_table, !157, !"adc_tm5_match_table", i1 false, i1 false}
!157 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 645, i32 34}
!158 = !{ptr @adc_tm_hc_data_pmic, !159, !"adc_tm_hc_data_pmic", i1 false, i1 false}
!159 = !{!"../drivers/thermal/qcom/qcom-spmi-adc-tm5.c", i32 150, i32 34}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{!"auto-init"}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i8 0, i8 2}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2148789076, i64 2148789081, i64 2148789094, i64 2148789138, i64 2148789172, i64 2148789193}
