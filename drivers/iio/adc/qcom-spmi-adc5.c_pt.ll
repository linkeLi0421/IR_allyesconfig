; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/qcom-spmi-adc5.c_pt.bc'
source_filename = "../drivers/iio/adc/qcom-spmi-adc5.c"
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
%struct.adc5_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adc5_channels = type { ptr, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.adc5_channel_prop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.adc5_chip = type { ptr, ptr, i16, i32, ptr, ptr, i8, %struct.completion, %struct.mutex, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_qcom_spmi_adc5__191_923_adc5_driver_init6 = internal global ptr @adc5_driver_init, section ".initcall6.init", align 4
@adc5_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adc5_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc5_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adc5_driver_exit = internal global ptr @adc5_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias192 = internal constant [45 x i8] c"qcom_spmi_adc5.alias=platform:qcom-spmi-adc5\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [71 x i8] c"qcom_spmi_adc5.description=Qualcomm Technologies Inc. PMIC5 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [51 x i8] c"qcom_spmi_adc5.file=drivers/iio/adc/qcom-spmi-adc5\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [30 x i8] c"qcom_spmi_adc5.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-spmi-adc5\00", [17 x i8] zeroinitializer }, align 32
@adc5_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-adc5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adc5_data_pmic }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-adc7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adc7_data_pmic }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-adc-rev2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adc5_data_pmic_rev2 }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@adc5_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@adc5_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 891, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adc get dt data failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc5_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/adc/qcom-spmi-adc5.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc5_probe._entry_ptr = internal global ptr @adc5_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pm-adc5\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@adc5_data_pmic = internal constant { %struct.adc5_data, [36 x i8] } { %struct.adc5_data { i32 28900, i32 10000, ptr @adc5_chans_pmic, ptr @adc5_info, ptr @.compoundliteral, ptr @.compoundliteral.10, ptr @.compoundliteral.11 }, [36 x i8] zeroinitializer }, align 32
@adc5_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adc5_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adc5_of_xlate, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 250, i32 420, i32 840], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 15, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 800, i32 900, i32 1, i32 2, i32 4, i32 6, i32 8, i32 10], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 15, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_gnd\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vref_1p25\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"die_temp\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_in_i_uv\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_in_v_div_16\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg_temp\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"amux_thm2\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chg_mid_chg\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xo_therm\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amux_thm1_100k_pu\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amux_thm2_100k_pu\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amux_thm3_100k_pu\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vph_pwr\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbat_sns\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chg_sbux\00", [23 x i8] zeroinitializer }, align 32
@adc5_chans_pmic = internal constant { <{ [154 x %struct.adc5_channels], [38 x %struct.adc5_channels] }>, [960 x i8] } { <{ [154 x %struct.adc5_channels], [38 x %struct.adc5_channels] }> <{ [154 x %struct.adc5_channels] [%struct.adc5_channels { ptr @.str.12, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.13, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.14, i32 0, i32 9, i32 2, i32 9 }, %struct.adc5_channels { ptr @.str.15, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.16, i32 8, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.17, i32 0, i32 9, i32 2, i32 11 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.18, i32 0, i32 9, i32 2, i32 12 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.19, i32 3, i32 0, i32 2, i32 5 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.20, i32 0, i32 9, i32 2, i32 7 }, %struct.adc5_channels { ptr @.str.21, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.22, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.23, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.24, i32 1, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.25, i32 1, i32 0, i32 2, i32 5 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.26, i32 1, i32 0, i32 2, i32 5 }], [38 x %struct.adc5_channels] zeroinitializer }>, [960 x i8] zeroinitializer }, align 32
@adc5_do_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ADC configure failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc5_do_conversion\00", [45 x i8] zeroinitializer }, align 32
@adc5_do_conversion._entry_ptr = internal global ptr @adc5_do_conversion._entry, section ".printk_index", align 4
@adc5_do_conversion._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EOC bit not set\0A\00", [47 x i8] zeroinitializer }, align 32
@adc5_do_conversion._entry_ptr.32 = internal global ptr @adc5_do_conversion._entry.30, section ".printk_index", align 4
@adc5_do_conversion.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.29, ptr @.str.5, ptr @.str.34, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_spmi_adc5\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Did not get completion timeout.\0A\00", [63 x i8] zeroinitializer }, align 32
@adc5_do_conversion._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 342, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@adc5_do_conversion._entry_ptr.36 = internal global ptr @adc5_do_conversion._entry.35, section ".printk_index", align 4
@adc5_read_voltage_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid data:0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adc5_read_voltage_data\00", [41 x i8] zeroinitializer }, align 32
@adc5_read_voltage_data._entry_ptr = internal global ptr @adc5_read_voltage_data._entry, section ".printk_index", align 4
@adc5_read_voltage_data.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.38, ptr @.str.5, ptr @.str.39, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage raw code:0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 627, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid channel number %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adc5_get_dt_channel_data\00", [39 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr = internal global ptr @adc5_get_dt_channel_data._entry, section ".printk_index", align 4
@adc7_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adc7_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adc7_of_xlate, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 642, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s invalid channel number %d\0A\00", [34 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.44 = internal global ptr @adc5_get_dt_channel_data._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.5, i32 653, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid channel name\0A\00", [42 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.48 = internal global ptr @adc5_get_dt_channel_data._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,decimation\00", [16 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.41, ptr @.str.5, i32 663, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%02x invalid decimation %d\0A\00", [36 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.52 = internal global ptr @adc5_get_dt_channel_data._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,pre-scaling\00", [47 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.5, i32 676, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%02x invalid pre-scaling <%d %d>\0A\00", [62 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.56 = internal global ptr @adc5_get_dt_channel_data._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,hw-settle-time\00", [44 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.41, ptr @.str.5, i32 692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid dig version read %d\0A\00", [35 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.60 = internal global ptr @adc5_get_dt_channel_data._entry.58, section ".printk_index", align 4
@adc5_get_dt_channel_data.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.41, ptr @.str.5, ptr @.str.61, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dig_ver:minor:%d, major:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.41, ptr @.str.5, i32 708, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%02x invalid hw-settle-time %d us\0A\00", [61 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.64 = internal global ptr @adc5_get_dt_channel_data._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,avg-samples\00", [47 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.41, ptr @.str.5, i32 721, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%02x invalid avg-samples %d\0A\00", [35 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data._entry_ptr.68 = internal global ptr @adc5_get_dt_channel_data._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,ratiometric\00", [47 x i8] zeroinitializer }, align 32
@adc5_get_dt_channel_data.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.41, ptr @.str.5, ptr @.str.70, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%02x name %s\0A\00", [18 x i8] zeroinitializer }, align 32
@adc7_do_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.71, ptr @.str.5, i32 367, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adc7_do_conversion\00", [45 x i8] zeroinitializer }, align 32
@adc7_do_conversion._entry_ptr = internal global ptr @adc7_do_conversion._entry, section ".printk_index", align 4
@adc7_do_conversion._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unexpected conversion fault\0A\00", [35 x i8] zeroinitializer }, align 32
@adc7_do_conversion._entry_ptr.74 = internal global ptr @adc7_do_conversion._entry.72, section ".printk_index", align 4
@adc7_data_pmic = internal constant { %struct.adc5_data, [36 x i8] } { %struct.adc5_data { i32 28900, i32 0, ptr @adc7_chans_pmic, ptr @adc7_info, ptr @.compoundliteral.75, ptr null, ptr @.compoundliteral.76 }, [36 x i8] zeroinitializer }, align 32
@adc5_data_pmic_rev2 = internal constant { %struct.adc5_data, [36 x i8] } { %struct.adc5_data { i32 16384, i32 6144, ptr @adc5_chans_rev2, ptr @adc5_info, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 85, i32 340, i32 1360], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 15, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 1000, i32 2000, i32 4000, i32 8000, i32 16000, i32 32000, i32 64000, i32 128000], [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amux_thm1_pu2\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amux_thm2_pu2\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amux_thm3_pu2\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amux_thm4_pu2\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amux_thm5_pu2\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amux_thm6_pu2\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio1_pu2\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio2_pu2\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio3_pu2\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio4_pu2\00", [22 x i8] zeroinitializer }, align 32
@adc7_chans_pmic = internal constant { <{ [144 x %struct.adc5_channels], [48 x %struct.adc5_channels] }>, [960 x i8] } { <{ [144 x %struct.adc5_channels], [48 x %struct.adc5_channels] }> <{ [144 x %struct.adc5_channels] [%struct.adc5_channels { ptr @.str.12, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.13, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.14, i32 0, i32 9, i32 2, i32 10 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.77, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.78, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.79, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.80, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.81, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.82, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.83, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.84, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.85, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels { ptr @.str.86, i32 0, i32 9, i32 2, i32 8 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.24, i32 1, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.25, i32 3, i32 0, i32 2, i32 5 }], [48 x %struct.adc5_channels] zeroinitializer }>, [960 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 512, i32 1024], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 800, i32 900, i32 1, i32 2, i32 4, i32 6, i32 8, i32 10], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 15, i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 700, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xo_therm_100k_pu\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amux_thm4_100k_pu\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amux_thm5_100k_pu\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcoin\00", [26 x i8] zeroinitializer }, align 32
@adc5_chans_rev2 = internal constant { <{ [134 x %struct.adc5_channels], [58 x %struct.adc5_channels] }>, [960 x i8] } { <{ [134 x %struct.adc5_channels], [58 x %struct.adc5_channels] }> <{ [134 x %struct.adc5_channels] [%struct.adc5_channels { ptr @.str.12, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.13, i32 0, i32 0, i32 2, i32 5 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.14, i32 0, i32 9, i32 2, i32 9 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.91, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.21, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.22, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.23, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.92, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels { ptr @.str.93, i32 0, i32 9, i32 2, i32 6 }, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels zeroinitializer, %struct.adc5_channels { ptr @.str.24, i32 1, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.25, i32 1, i32 0, i32 2, i32 5 }, %struct.adc5_channels { ptr @.str.94, i32 1, i32 0, i32 2, i32 5 }], [58 x %struct.adc5_channels] zeroinitializer }>, [960 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967274]
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"adc5_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 916, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 918, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"adc5_match_table\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 787, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 873, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 887, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 891, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 902, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 87, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"adc5_data_pmic\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 745, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"adc5_info\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 482, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 521, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 523, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 529, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 531, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 533, i32 23 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 535, i32 21 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 550, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 540, i32 24 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 542, i32 28 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 544, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 546, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 548, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 525, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 527, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 538, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"adc5_chans_pmic\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 520, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 325, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 332, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 339, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 342, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 189, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 193, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 627, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [10 x i8] c"adc7_info\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 487, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 642, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 651, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 653, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 658, i32 35 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 662, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 671, i32 41 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 675, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 685, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 692, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 696, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 707, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 716, i32 35 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 720, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 729, i32 34 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 740, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 367, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 379, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"adc7_data_pmic\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 760, i32 31 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c"adc5_data_pmic_rev2\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 772, i32 31 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 565, i32 29 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 567, i32 29 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 569, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 571, i32 29 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 573, i32 29 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 575, i32 29 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 577, i32 25 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 579, i32 25 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 581, i32 25 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 583, i32 25 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"adc7_chans_pmic\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 554, i32 35 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 610, i32 28 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 606, i32 29 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 608, i32 29 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 596, i32 18 }
@___asan_gen_.380 = private unnamed_addr constant [16 x i8] c"adc5_chans_rev2\00", align 1
@___asan_gen_.381 = private constant [36 x i8] c"../drivers/iio/adc/qcom-spmi-adc5.c\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 587, i32 35 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_adc5_driver_exit, ptr @__initcall__kmod_qcom_spmi_adc5__191_923_adc5_driver_init6, ptr @adc5_do_conversion._entry, ptr @adc5_do_conversion._entry.30, ptr @adc5_do_conversion._entry.35, ptr @adc5_do_conversion._entry_ptr, ptr @adc5_do_conversion._entry_ptr.32, ptr @adc5_do_conversion._entry_ptr.36, ptr @adc5_driver_exit, ptr @adc5_get_dt_channel_data._entry, ptr @adc5_get_dt_channel_data._entry.42, ptr @adc5_get_dt_channel_data._entry.46, ptr @adc5_get_dt_channel_data._entry.50, ptr @adc5_get_dt_channel_data._entry.54, ptr @adc5_get_dt_channel_data._entry.58, ptr @adc5_get_dt_channel_data._entry.62, ptr @adc5_get_dt_channel_data._entry.66, ptr @adc5_get_dt_channel_data._entry_ptr, ptr @adc5_get_dt_channel_data._entry_ptr.44, ptr @adc5_get_dt_channel_data._entry_ptr.48, ptr @adc5_get_dt_channel_data._entry_ptr.52, ptr @adc5_get_dt_channel_data._entry_ptr.56, ptr @adc5_get_dt_channel_data._entry_ptr.60, ptr @adc5_get_dt_channel_data._entry_ptr.64, ptr @adc5_get_dt_channel_data._entry_ptr.68, ptr @adc5_probe._entry, ptr @adc5_probe._entry_ptr, ptr @adc5_read_voltage_data._entry, ptr @adc5_read_voltage_data._entry_ptr, ptr @adc7_do_conversion._entry, ptr @adc7_do_conversion._entry.72, ptr @adc7_do_conversion._entry_ptr, ptr @adc7_do_conversion._entry_ptr.74, ptr @adc5_driver, ptr @.str, ptr @adc5_match_table, ptr @.str.1, ptr @adc5_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9, ptr @adc5_data_pmic, ptr @adc5_info, ptr @.compoundliteral, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @adc5_chans_pmic, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @adc7_info, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @adc7_data_pmic, ptr @adc5_data_pmic_rev2, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @adc7_chans_pmic, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @adc5_chans_rev2], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_data_pmic to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_chans_pmic to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_do_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_do_conversion._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_do_conversion._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_read_voltage_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc7_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_get_dt_channel_data._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc7_do_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc7_do_conversion._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc7_data_pmic to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_data_pmic_rev2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc7_chans_pmic to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc5_chans_rev2 to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc5_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adc5_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc5_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @adc5_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc5_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca %struct.adc5_channel_prop, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !200
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #7
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 180) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %7, align 4
  %dev12 = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev12, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %conv = trunc i32 %11 to i16
  %base = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %base, align 4
  %complete = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #7
  %lock = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 8
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @adc5_probe.__key) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %prop.i) #7
  %14 = call ptr @memset(ptr %prop.i, i32 255, i32 40)
  %call.i.i81 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i81, null
  br i1 %cmp.not5.i.i, label %of_get_available_child_count.exit.thread.i, label %if.end9.for.body.i.i_crit_edge

if.end9.for.body.i.i_crit_edge:                   ; preds = %if.end9
  br label %for.body.i.i

of_get_available_child_count.exit.thread.i:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %nchannels89.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %nchannels89.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nchannels89.i, align 4
  br label %do.end18

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end9.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i81, %if.end9.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i.i
  %nchannels.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i.i, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i, label %of_get_available_child_count.exit.i.do.end18_crit_edge, label %if.end.i

of_get_available_child_count.exit.i.do.end18_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end.i:                                         ; preds = %of_get_available_child_count.exit.i
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 88) #7
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !201

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %iio_chans92.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 5
  %19 = ptrtoint ptr %iio_chans92.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %iio_chans92.i, align 4
  br label %do.end18

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %20 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev12, align 4
  %22 = extractvalue { i32, i1 } %17, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %22, i32 noundef 3520) #7
  %iio_chans.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 5
  %23 = ptrtoint ptr %iio_chans.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i.i, ptr %iio_chans.i, align 4
  %tobool5.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool5.not.i, label %devm_kcalloc.exit.i.do.end18_crit_edge, label %if.end7.i

devm_kcalloc.exit.i.do.end18_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end7.i:                                        ; preds = %devm_kcalloc.exit.i
  %24 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nchannels.i, align 4
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 40) #7
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kcalloc.exit87.thread.i, label %devm_kcalloc.exit87.i, !prof !201

devm_kcalloc.exit87.thread.i:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %chan_props1195.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %chan_props1195.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %chan_props1195.i, align 4
  br label %do.end18

devm_kcalloc.exit87.i:                            ; preds = %if.end7.i
  %29 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev12, align 4
  %31 = extractvalue { i32, i1 } %26, 0
  %call5.i.i84.i = call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %31, i32 noundef 3520) #7
  %chan_props11.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 4
  %32 = ptrtoint ptr %chan_props11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i84.i, ptr %chan_props11.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i.i84.i, null
  br i1 %tobool13.not.i, label %devm_kcalloc.exit87.i.do.end18_crit_edge, label %if.end15.i

devm_kcalloc.exit87.i.do.end18_crit_edge:         ; preds = %devm_kcalloc.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.i:                                       ; preds = %devm_kcalloc.exit87.i
  %33 = ptrtoint ptr %iio_chans.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iio_chans.i, align 4
  %35 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev12, align 4
  %call19.i = call ptr @of_device_get_match_data(ptr noundef %36) #7
  %data.i = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 9
  %tobool21.not.i = icmp eq ptr %call19.i, null
  %spec.select.i = select i1 %tobool21.not.i, ptr @adc5_data_pmic, ptr %call19.i
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %spec.select.i, ptr %data.i, align 4
  %call25.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #7
  %cmp.not98.i = icmp eq ptr %call25.i, null
  br i1 %cmp.not98.i, label %if.end15.i.if.end19_crit_edge, label %for.body.lr.ph.i

if.end15.i.if.end19_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.lr.ph.i:                                 ; preds = %if.end15.i
  %scale_fn_type32.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop.i, i32 0, i32 8
  %datasheet_name.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop.i, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.0102.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end30.i.for.body.i_crit_edge ]
  %child.0101.i = phi ptr [ %call25.i, %for.body.lr.ph.i ], [ %call43.i, %if.end30.i.for.body.i_crit_edge ]
  %chan_props.0100.i = phi ptr [ %call5.i.i84.i, %for.body.lr.ph.i ], [ %incdec.ptr42.i, %if.end30.i.for.body.i_crit_edge ]
  %iio_chan.099.i = phi ptr [ %34, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end30.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %call27.i = call fastcc i32 @adc5_get_dt_channel_data(ptr noundef %7, ptr noundef nonnull %prop.i, ptr noundef nonnull %child.0101.i, ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.then29.i

if.then29.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.0101.i) #7
  br label %do.end18

if.end30.i:                                       ; preds = %for.body.i
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %adc_chans.i = getelementptr inbounds %struct.adc5_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %adc_chans.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adc_chans.i, align 4
  %44 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prop.i, align 4
  %scale_fn_type.i = getelementptr %struct.adc5_channels, ptr %43, i32 %45, i32 4
  %46 = ptrtoint ptr %scale_fn_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scale_fn_type.i, align 4
  %48 = ptrtoint ptr %scale_fn_type32.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %scale_fn_type32.i, align 4
  %49 = call ptr @memcpy(ptr %chan_props.0100.i, ptr %prop.i, i32 40)
  %50 = load ptr, ptr %adc_chans.i, align 4
  %channel38.i = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.099.i, i32 0, i32 1
  %51 = ptrtoint ptr %channel38.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %45, ptr %channel38.i, align 4
  %52 = ptrtoint ptr %datasheet_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %datasheet_name.i, align 4
  %datasheet_name39.i = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.099.i, i32 0, i32 18
  %54 = ptrtoint ptr %datasheet_name39.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %datasheet_name39.i, align 4
  %extend_name.i = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.099.i, i32 0, i32 17
  %55 = ptrtoint ptr %extend_name.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %extend_name.i, align 4
  %info_mask.i = getelementptr %struct.adc5_channels, ptr %50, i32 %45, i32 3
  %56 = ptrtoint ptr %info_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %info_mask.i, align 4
  %info_mask_separate.i = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.099.i, i32 0, i32 6
  %58 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %info_mask_separate.i, align 4
  %type.i = getelementptr %struct.adc5_channels, ptr %50, i32 %45, i32 2
  %59 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type.i, align 4
  %61 = ptrtoint ptr %iio_chan.099.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %iio_chan.099.i, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.099.i, i32 0, i32 3
  %62 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %index.0102.i, ptr %address.i, align 4
  %incdec.ptr.i = getelementptr %struct.iio_chan_spec, ptr %iio_chan.099.i, i32 1
  %incdec.ptr42.i = getelementptr %struct.adc5_channel_prop, ptr %chan_props.0100.i, i32 1
  %inc.i = add i32 %index.0102.i, 1
  %call43.i = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0101.i) #7
  %cmp.not.i = icmp eq ptr %call43.i, null
  br i1 %cmp.not.i, label %if.end30.i.if.end19_crit_edge, label %if.end30.i.for.body.i_crit_edge

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end30.i.if.end19_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end18:                                         ; preds = %if.then29.i, %devm_kcalloc.exit87.i.do.end18_crit_edge, %devm_kcalloc.exit87.thread.i, %devm_kcalloc.exit.i.do.end18_crit_edge, %devm_kcalloc.exit.thread.i, %of_get_available_child_count.exit.i.do.end18_crit_edge, %of_get_available_child_count.exit.thread.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit87.thread.i ], [ -12, %devm_kcalloc.exit.thread.i ], [ -22, %of_get_available_child_count.exit.thread.i ], [ -12, %devm_kcalloc.exit87.i.do.end18_crit_edge ], [ -12, %devm_kcalloc.exit.i.do.end18_crit_edge ], [ -22, %of_get_available_child_count.exit.i.do.end18_crit_edge ], [ %call27.i, %if.then29.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %prop.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end30.i.if.end19_crit_edge, %if.end15.i.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %prop.i) #7
  %call20 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %63 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %if.end29 [
    i32 -517, label %if.then23.cleanup_crit_edge
    i32 -22, label %if.then23.cleanup_crit_edge97
  ]

if.then23.cleanup_crit_edge97:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %poll_eoc = getelementptr inbounds %struct.adc5_chip, ptr %7, i32 0, i32 6
  %64 = ptrtoint ptr %poll_eoc to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %poll_eoc, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end19
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call20, ptr noundef nonnull @adc5_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.else.if.end34_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.end29
  %65 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev, align 8
  %name35 = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 15
  %67 = ptrtoint ptr %name35 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %name35, align 8
  %68 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %call6, align 8
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i, align 4
  %info = getelementptr inbounds %struct.adc5_data, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 4
  %info36 = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 17
  %73 = ptrtoint ptr %info36 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %info36, align 8
  %74 = ptrtoint ptr %iio_chans.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iio_chans.i, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 13
  %76 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %channels, align 8
  %77 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nchannels.i, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 14
  %79 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %num_channels, align 4
  %call37 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call6, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then23.cleanup_crit_edge97, %do.end18, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end18 ], [ %call37, %if.end34 ], [ -19, %entry.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call20, %if.then23.cleanup_crit_edge ], [ %call20, %if.then23.cleanup_crit_edge97 ], [ %call.i, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc5_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.adc5_chip, ptr %dev_id, i32 0, i32 7
  tail call void @complete(ptr noundef %complete) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc5_get_dt_channel_data(ptr nocapture noundef readonly %adc, ptr nocapture noundef %prop, ptr noundef %node, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %chan = alloca i32, align 4
  %value = alloca i32, align 4
  %varr = alloca [2 x i32], align 4
  %dig_version = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chan, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %varr) #7
  %4 = ptrtoint ptr %varr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %varr, align 4, !annotation !200
  %5 = getelementptr inbounds [2 x i32], ptr %varr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !200
  %dev2 = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %chan, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef %1) #10
  br label %cleanup144

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 9
  %9 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data3, align 4
  %info = getelementptr inbounds %struct.adc5_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %cmp = icmp eq ptr %12, @adc7_info
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %14, 8
  %and = and i32 %14, 255
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %chan, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %16 = phi i32 [ %and, %if.then4 ], [ %14, %if.end.if.end5_crit_edge ]
  %sid.0 = phi i32 [ %shr, %if.then4 ], [ 0, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %16)
  %cmp6 = icmp ugt i32 %16, 181
  br i1 %cmp6, label %if.end5.do.end11_crit_edge, label %lor.lhs.false

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

lor.lhs.false:                                    ; preds = %if.end5
  %adc_chans = getelementptr inbounds %struct.adc5_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %adc_chans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adc_chans, align 4
  %arrayidx = getelementptr %struct.adc5_channels, ptr %18, i32 %16
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %lor.lhs.false.do.end11_crit_edge, label %if.end12

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %if.end5.do.end11_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.43, ptr noundef %1, i32 noundef %16) #10
  br label %cleanup144

if.end12:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %prop, align 4
  %sid13 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 4
  %22 = ptrtoint ptr %sid13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sid.0, ptr %sid13, align 4
  %call14 = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.45, ptr noundef null) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %cond.end, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

cond.end:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node, align 4
  %tobool17.not = icmp eq ptr %24, null
  br i1 %tobool17.not, label %do.end21, label %cond.end.if.end22_crit_edge

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end21:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.47) #10
  br label %cleanup144

if.end22:                                         ; preds = %cond.end.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %cond224 = phi ptr [ %24, %cond.end.if.end22_crit_edge ], [ %call14, %if.end12.if.end22_crit_edge ]
  %datasheet_name23 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 9
  %25 = ptrtoint ptr %datasheet_name23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond224, ptr %datasheet_name23, align 4
  %call.i.i217 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.49, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i217)
  %tobool25.not = icmp sgt i32 %call.i.i217, -1
  br i1 %tobool25.not, label %if.then26, label %if.end22.if.end36_crit_edge

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then26:                                        ; preds = %if.end22
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %decimation = getelementptr inbounds %struct.adc5_data, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %decimation to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %decimation, align 4
  %call27 = call i32 @qcom_adc5_decimation_from_dt(i32 noundef %27, ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan, align 4
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef %31, i32 noundef %33) #10
  br label %cleanup144

if.end36:                                         ; preds = %if.then26.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %.sink229 = phi i32 [ %call27, %if.then26.if.end36_crit_edge ], [ 2, %if.end22.if.end36_crit_edge ]
  %decimation35 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 3
  %34 = ptrtoint ptr %decimation35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink229, ptr %decimation35, align 4
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.53, ptr noundef nonnull %varr, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool38.not = icmp sgt i32 %call.i, -1
  br i1 %tobool38.not, label %if.then39, label %if.else51

if.then39:                                        ; preds = %if.end36
  %35 = ptrtoint ptr %varr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %varr, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %5, align 4
  %call42 = call i32 @qcom_adc5_prescaling_from_dt(i32 noundef %36, i32 noundef %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %if.then39.if.end57_crit_edge

if.then39.if.end57_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end47:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chan, align 4
  %41 = ptrtoint ptr %varr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %varr, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.55, i32 noundef %40, i32 noundef %42, i32 noundef %44) #10
  br label %cleanup144

if.else51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data3, align 4
  %adc_chans53 = getelementptr inbounds %struct.adc5_data, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %adc_chans53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adc_chans53, align 4
  %49 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prop, align 4
  %prescale_index = getelementptr %struct.adc5_channels, ptr %48, i32 %50, i32 1
  %51 = ptrtoint ptr %prescale_index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %prescale_index, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.then39.if.end57_crit_edge
  %.sink230 = phi i32 [ %52, %if.else51 ], [ %call42, %if.then39.if.end57_crit_edge ]
  %prescale56 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 5
  %53 = ptrtoint ptr %prescale56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink230, ptr %prescale56, align 4
  %call.i.i218 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.57, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i218)
  %tobool59.not = icmp sgt i32 %call.i.i218, -1
  br i1 %tobool59.not, label %if.then60, label %if.else106

if.then60:                                        ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dig_version) #7
  %54 = ptrtoint ptr %dig_version to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %dig_version, align 1, !annotation !200
  %55 = getelementptr inbounds [2 x i8], ptr %dig_version, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 1, !annotation !200
  %57 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adc, align 4
  %base.i = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 2
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %60 to i32
  %call.i219 = call i32 @regmap_bulk_read(ptr noundef %58, i32 noundef %conv.i, ptr noundef nonnull %dig_version, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool63.not = icmp eq i32 %call.i219, 0
  br i1 %tobool63.not, label %do.body69, label %do.end67

do.end67:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef %call.i219) #10
  br label %cleanup.thread

do.body69:                                        ; preds = %if.then60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc5_get_dt_channel_data.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc5_get_dt_channel_data, %if.then74)) #7
          to label %do.end80 [label %if.then74], !srcloc !202

if.then74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %dig_version to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dig_version, align 1
  %conv = zext i8 %62 to i32
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %55, align 1
  %conv77 = zext i8 %64 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc5_get_dt_channel_data.__UNIQUE_ID_ddebug189, ptr noundef %8, ptr noundef nonnull @.str.61, i32 noundef %conv, i32 noundef %conv77) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %do.body69
  %65 = ptrtoint ptr %dig_version to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dig_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp83 = icmp ugt i8 %66, 2
  br i1 %cmp83, label %land.lhs.true, label %do.end80.lor.lhs.false89_crit_edge

do.end80.lor.lhs.false89_crit_edge:               ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false89

land.lhs.true:                                    ; preds = %do.end80
  %67 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %68)
  %cmp87 = icmp ugt i8 %68, 4
  br i1 %cmp87, label %land.lhs.true.if.then94_crit_edge, label %land.lhs.true.lor.lhs.false89_crit_edge

land.lhs.true.lor.lhs.false89_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false89

land.lhs.true.if.then94_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

lor.lhs.false89:                                  ; preds = %land.lhs.true.lor.lhs.false89_crit_edge, %do.end80.lor.lhs.false89_crit_edge
  %69 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data3, align 4
  %info91 = getelementptr inbounds %struct.adc5_data, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %info91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info91, align 4
  %cmp92 = icmp eq ptr %72, @adc7_info
  br i1 %cmp92, label %lor.lhs.false89.if.then94_crit_edge, label %if.else96

lor.lhs.false89.if.then94_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false89.if.then94_crit_edge, %land.lhs.true.if.then94_crit_edge
  %hw_settle_2 = getelementptr inbounds %struct.adc5_data, ptr %data, i32 0, i32 6
  br label %if.end98

if.else96:                                        ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #9
  %hw_settle_1 = getelementptr inbounds %struct.adc5_data, ptr %data, i32 0, i32 5
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then94
  %hw_settle_1.sink = phi ptr [ %hw_settle_1, %if.else96 ], [ %hw_settle_2, %if.then94 ]
  %73 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %73)
  %.sink231 = load i32, ptr %value, align 4
  %74 = ptrtoint ptr %hw_settle_1.sink to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_settle_1.sink, align 4
  %call97 = call i32 @qcom_adc5_hw_settle_time_from_dt(i32 noundef %.sink231, ptr noundef %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp99 = icmp slt i32 %call97, 0
  br i1 %cmp99, label %do.end104, label %cleanup

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chan, align 4
  %78 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.63, i32 noundef %77, i32 noundef %79) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end104, %do.end67
  %retval.0.ph = phi i32 [ %call.i219, %do.end67 ], [ %call97, %do.end104 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dig_version) #7
  br label %cleanup144

cleanup:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %hw_settle_time = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 6
  %80 = ptrtoint ptr %hw_settle_time to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call97, ptr %hw_settle_time, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dig_version) #7
  br label %if.end108

if.else106:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %hw_settle_time107 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 6
  %81 = ptrtoint ptr %hw_settle_time107 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %hw_settle_time107, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %cleanup
  %call.i.i220 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.65, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i220)
  %tobool110.not = icmp sgt i32 %call.i.i220, -1
  br i1 %tobool110.not, label %if.then111, label %if.end108.if.end122_crit_edge

if.end108.if.end122_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then111:                                       ; preds = %if.end108
  %82 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value, align 4
  %call112 = call i32 @qcom_adc5_avg_samples_from_dt(i32 noundef %83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %do.end118, label %if.then111.if.end122_crit_edge

if.then111.if.end122_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

do.end118:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chan, align 4
  %86 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.67, i32 noundef %85, i32 noundef %87) #10
  br label %cleanup144

if.end122:                                        ; preds = %if.then111.if.end122_crit_edge, %if.end108.if.end122_crit_edge
  %.sink233 = phi i32 [ %call112, %if.then111.if.end122_crit_edge ], [ 0, %if.end108.if.end122_crit_edge ]
  %avg_samples121 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 7
  %88 = ptrtoint ptr %avg_samples121 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.sink233, ptr %avg_samples121, align 4
  %call.i221 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.69, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i221, null
  %.sink = select i1 %tobool.i.not, i32 2, i32 1
  %89 = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.sink, ptr %89, align 4
  %cal_val = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 2
  %91 = ptrtoint ptr %cal_val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %cal_val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc5_get_dt_channel_data.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc5_get_dt_channel_data, %if.then140)) #7
          to label %cleanup144 [label %if.then140], !srcloc !202

if.then140:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %chan, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc5_get_dt_channel_data.__UNIQUE_ID_ddebug190, ptr noundef %8, ptr noundef nonnull @.str.70, i32 noundef %93, ptr noundef %1) #7
  br label %cleanup144

cleanup144:                                       ; preds = %if.then140, %if.end122, %do.end118, %cleanup.thread, %do.end47, %do.end32, %do.end21, %do.end11, %do.end
  %retval.1 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end11 ], [ %call112, %do.end118 ], [ %call42, %do.end47 ], [ %call27, %do.end32 ], [ -22, %do.end21 ], [ 0, %if.then140 ], [ %retval.0.ph, %cleanup.thread ], [ 0, %if.end122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %varr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc5_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_code_volt.i = alloca i16, align 2
  %adc_code_cur.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_code_volt.i) #7
  %2 = ptrtoint ptr %adc_code_volt.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %adc_code_volt.i, align 2, !annotation !200
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_code_cur.i) #7
  %chan_props.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %chan_props.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan_props.i, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cond.i = icmp eq i32 %mask, 1
  br i1 %cond.i, label %sw.bb.i, label %entry.adc_read_raw_common.exit_crit_edge

entry.adc_read_raw_common.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc_read_raw_common.exit

sw.bb.i:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6
  %call1.i = call fastcc i32 @adc5_do_conversion(ptr noundef %1, ptr noundef %arrayidx.i, ptr noundef %chan, ptr noundef nonnull %adc_code_volt.i, ptr noundef nonnull %adc_code_cur.i) #7, !callees !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.adc_read_raw_common.exit_crit_edge

sw.bb.i.adc_read_raw_common.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc_read_raw_common.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %scale_fn_type.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 8
  %7 = ptrtoint ptr %scale_fn_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scale_fn_type.i, align 4
  %prescale.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 5
  %9 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prescale.i, align 4
  %data.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %adc_code_volt.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %adc_code_volt.i, align 2
  %call2.i = tail call i32 @qcom_adc5_hw_scale(i32 noundef %8, i32 noundef %10, ptr noundef %12, i16 noundef zeroext %14, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %.call2.i = select i1 %tobool3.not.i, i32 1, i32 %call2.i
  br label %adc_read_raw_common.exit

adc_read_raw_common.exit:                         ; preds = %if.end.i, %sw.bb.i.adc_read_raw_common.exit_crit_edge, %entry.adc_read_raw_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %sw.bb.i.adc_read_raw_common.exit_crit_edge ], [ %.call2.i, %if.end.i ], [ -22, %entry.adc_read_raw_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_code_cur.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_code_volt.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @adc5_of_xlate(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %iiospec) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %nchannels = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chan_props = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_props, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adc5_channel_prop, ptr %5, i32 %i.09
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp2 = icmp eq i32 %9, %7
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %i.09, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc5_do_conversion(ptr noundef %adc, ptr nocapture noundef readonly %prop, ptr nocapture noundef readnone %chan, ptr nocapture noundef %data_volt, ptr nocapture noundef readnone %data_cur) #2 align 64 {
entry:
  %status1.i61 = alloca i8, align 1
  %status1.i = alloca i8, align 1
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  %1 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adc, align 4
  %base.i.i = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 66
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i.i, ptr noundef nonnull %buf.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %adc5_configure.exit.thread

adc5_configure.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %5 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 5
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 3
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.i, align 1
  %cal_val.i.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 2
  %12 = ptrtoint ptr %cal_val.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cal_val.i.i, align 4
  %.tr.i.i = trunc i32 %13 to i8
  %14 = shl i8 %.tr.i.i, 6
  %.masked.i.i = and i8 %11, -125
  %15 = or i8 %14, %.masked.i.i
  %cal_method.i.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 1
  %16 = ptrtoint ptr %cal_method.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cal_method.i.i, align 4
  %.tr1.i.i = trunc i32 %17 to i8
  %18 = shl i8 %.tr1.i.i, 4
  %19 = or i8 %15, %18
  %decimation.i.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 3
  %20 = ptrtoint ptr %decimation.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %decimation.i.i, align 4
  %.tr3.i.i = trunc i32 %21 to i8
  %22 = shl i8 %.tr3.i.i, 2
  %conv17.i.i = or i8 %19, %22
  store i8 %conv17.i.i, ptr %buf.i, align 1
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %9, align 1
  %25 = and i8 %24, -8
  %avg_samples.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 7
  %26 = ptrtoint ptr %avg_samples.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %avg_samples.i, align 4
  %28 = trunc i32 %27 to i8
  %conv5.i = or i8 %25, %28
  store i8 %conv5.i, ptr %9, align 1
  %29 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prop, align 4
  %conv6.i = trunc i32 %30 to i8
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv6.i, ptr %8, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 1
  %34 = and i8 %33, -16
  %hw_settle_time.i = getelementptr inbounds %struct.adc5_channel_prop, ptr %prop, i32 0, i32 6
  %35 = ptrtoint ptr %hw_settle_time.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_settle_time.i, align 4
  %37 = trunc i32 %36 to i8
  %conv15.i = or i8 %34, %37
  store i8 %conv15.i, ptr %7, align 1
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 1
  %40 = or i8 %39, -128
  store i8 %40, ptr %6, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %5, align 1
  %43 = or i8 %42, -128
  store i8 %43, ptr %5, align 1
  %poll_eoc.i = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 6
  %44 = ptrtoint ptr %poll_eoc.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %poll_eoc.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool24.not.i = icmp eq i8 %45, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end.i.adc5_configure.exit_crit_edge

if.end.i.adc5_configure.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc5_configure.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %complete.i = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 7
  %46 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %complete.i, align 4
  br label %adc5_configure.exit

adc5_configure.exit:                              ; preds = %if.then25.i, %if.end.i.adc5_configure.exit_crit_edge
  %47 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adc, align 4
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %base.i.i, align 4
  %conv.i39.i = zext i16 %50 to i32
  %add.i40.i = add nuw nsw i32 %conv.i39.i, 66
  %call.i41.i = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef %add.i40.i, ptr noundef nonnull %buf.i, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not, label %if.end, label %adc5_configure.exit.do.end_crit_edge

adc5_configure.exit.do.end_crit_edge:             ; preds = %adc5_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %adc5_configure.exit.do.end_crit_edge, %adc5_configure.exit.thread
  %retval.0.i5378 = phi i32 [ %call.i.i, %adc5_configure.exit.thread ], [ %call.i41.i, %adc5_configure.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i5378) #10
  br label %unlock

if.end:                                           ; preds = %adc5_configure.exit
  %53 = ptrtoint ptr %poll_eoc.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %poll_eoc.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool1.not = icmp eq i8 %54, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status1.i) #7
  %55 = ptrtoint ptr %status1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %status1.i, align 1, !annotation !200
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %if.then2
  %count.012.i = phi i32 [ 0, %if.then2 ], [ %inc.i, %if.end6.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adc, align 4
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %base.i.i, align 4
  %conv.i.i55 = zext i16 %59 to i32
  %add.i.i56 = add nuw nsw i32 %conv.i.i55, 8
  %call.i.i57 = call i32 @regmap_bulk_read(ptr noundef %57, i32 noundef %add.i.i56, ptr noundef nonnull %status1.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool.not.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %tobool.not.i58, label %if.end.i59, label %for.body.i.do.end8_crit_edge

for.body.i.do.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.end.i59:                                       ; preds = %for.body.i
  %60 = ptrtoint ptr %status1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %status1.i, align 1
  %62 = and i8 %61, 3
  store i8 %62, ptr %status1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp3.i = icmp eq i8 %62, 1
  br i1 %cmp3.i, label %adc5_poll_wait_eoc.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i59
  call void @usleep_range_state(i32 noundef 263, i32 noundef 264, i32 noundef 2) #7
  %inc.i = add nuw nsw i32 %count.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %if.end6.i.do.end8_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end6.i.do.end8_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

adc5_poll_wait_eoc.exit:                          ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status1.i) #7
  br label %if.end34

do.end8:                                          ; preds = %if.end6.i.do.end8_crit_edge, %for.body.i.do.end8_crit_edge
  %retval.0.i60.ph = phi i32 [ -110, %if.end6.i.do.end8_crit_edge ], [ %call.i.i57, %for.body.i.do.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status1.i) #7
  %dev9 = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %63 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.31) #10
  br label %unlock

if.else:                                          ; preds = %if.end
  %complete = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 7
  %call12 = call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body15, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body15:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc5_do_conversion.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc5_do_conversion, %if.then20)) #7
          to label %do.end24 [label %if.then20], !srcloc !202

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %65 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc5_do_conversion.__UNIQUE_ID_ddebug188, ptr noundef %66, ptr noundef nonnull @.str.34) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status1.i61) #7
  %67 = ptrtoint ptr %status1.i61 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %status1.i61, align 1, !annotation !200
  br label %for.body.i68

for.body.i68:                                     ; preds = %if.end6.i73.for.body.i68_crit_edge, %do.end24
  %count.012.i63 = phi i32 [ 0, %do.end24 ], [ %inc.i71, %if.end6.i73.for.body.i68_crit_edge ]
  %68 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adc, align 4
  %70 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %base.i.i, align 4
  %conv.i.i64 = zext i16 %71 to i32
  %add.i.i65 = add nuw nsw i32 %conv.i.i64, 8
  %call.i.i66 = call i32 @regmap_bulk_read(ptr noundef %69, i32 noundef %add.i.i65, ptr noundef nonnull %status1.i61, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %tobool.not.i67 = icmp eq i32 %call.i.i66, 0
  br i1 %tobool.not.i67, label %if.end.i70, label %for.body.i68.do.end30_crit_edge

for.body.i68.do.end30_crit_edge:                  ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.end.i70:                                       ; preds = %for.body.i68
  %72 = ptrtoint ptr %status1.i61 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %status1.i61, align 1
  %74 = and i8 %73, 3
  store i8 %74, ptr %status1.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp3.i69 = icmp eq i8 %74, 1
  br i1 %cmp3.i69, label %adc5_poll_wait_eoc.exit75, label %if.end6.i73

if.end6.i73:                                      ; preds = %if.end.i70
  call void @usleep_range_state(i32 noundef 263, i32 noundef 264, i32 noundef 2) #7
  %inc.i71 = add nuw nsw i32 %count.012.i63, 1
  %exitcond.not.i72 = icmp eq i32 %inc.i71, 400
  br i1 %exitcond.not.i72, label %if.end6.i73.do.end30_crit_edge, label %if.end6.i73.for.body.i68_crit_edge

if.end6.i73.for.body.i68_crit_edge:               ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i68

if.end6.i73.do.end30_crit_edge:                   ; preds = %if.end6.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

adc5_poll_wait_eoc.exit75:                        ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status1.i61) #7
  br label %if.end34

do.end30:                                         ; preds = %if.end6.i73.do.end30_crit_edge, %for.body.i68.do.end30_crit_edge
  %retval.0.i74.ph = phi i32 [ -110, %if.end6.i73.do.end30_crit_edge ], [ %call.i.i66, %for.body.i68.do.end30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status1.i61) #7
  %dev31 = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %75 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.31) #10
  br label %unlock

if.end34:                                         ; preds = %adc5_poll_wait_eoc.exit75, %if.else.if.end34_crit_edge, %adc5_poll_wait_eoc.exit
  %call35 = call fastcc i32 @adc5_read_voltage_data(ptr noundef %adc, ptr noundef %data_volt)
  br label %unlock

unlock:                                           ; preds = %if.end34, %do.end30, %do.end8, %do.end
  %ret.0 = phi i32 [ %retval.0.i5378, %do.end ], [ %retval.0.i60.ph, %do.end8 ], [ %call35, %if.end34 ], [ %retval.0.i74.ph, %do.end30 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_hw_scale(i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adc5_read_voltage_data(ptr nocapture noundef readonly %adc, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %rslt_lsb = alloca i8, align 1
  %rslt_msb = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rslt_lsb) #7
  %0 = ptrtoint ptr %rslt_lsb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rslt_lsb, align 1, !annotation !200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rslt_msb) #7
  %1 = ptrtoint ptr %rslt_msb to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rslt_msb, align 1, !annotation !200
  %2 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc, align 4
  %base.i = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 80
  %call.i = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %rslt_lsb, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adc, align 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %base.i, align 4
  %conv.i35 = zext i16 %9 to i32
  %add.i36 = add nuw nsw i32 %conv.i35, 81
  %call.i37 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef %add.i36, ptr noundef nonnull %rslt_msb, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool2.not = icmp eq i32 %call.i37, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %rslt_msb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rslt_msb, align 1
  %conv = zext i8 %11 to i16
  %shl = shl nuw i16 %conv, 8
  %12 = ptrtoint ptr %rslt_lsb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rslt_lsb, align 1
  %conv5 = zext i8 %13 to i16
  %or = or i16 %shl, %conv5
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %or)
  %cmp = icmp eq i16 %or, -32768
  br i1 %cmp, label %do.end, label %do.body12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.37, i32 noundef 32768) #10
  br label %cleanup

do.body12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc5_read_voltage_data.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc5_read_voltage_data, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !202

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.adc5_chip, ptr %adc, i32 0, i32 1
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data, align 2
  %conv19 = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc5_read_voltage_data.__UNIQUE_ID_ddebug187, ptr noundef %18, ptr noundef nonnull @.str.39, i32 noundef %conv19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body12, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i37, %if.end.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rslt_msb) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rslt_lsb) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_decimation_from_dt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_prescaling_from_dt(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_hw_settle_time_from_dt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_adc5_avg_samples_from_dt(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc7_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %conv_req.i.i = alloca i8, align 1
  %buf.i.i = alloca [4 x i8], align 4
  %status.i = alloca i8, align 1
  %adc_code_volt.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_code_volt.i) #7
  %2 = ptrtoint ptr %adc_code_volt.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %adc_code_volt.i, align 2, !annotation !200
  %chan_props.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %chan_props.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan_props.i, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cond.i = icmp eq i32 %mask, 1
  br i1 %cond.i, label %sw.bb.i, label %entry.adc_read_raw_common.exit_crit_edge

entry.adc_read_raw_common.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc_read_raw_common.exit

sw.bb.i:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #7
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %status.i, align 1, !annotation !200
  %lock.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conv_req.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %sid.i.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 4
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %buf.i.i, align 4
  %12 = ptrtoint ptr %sid.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sid.i.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %base.i.i.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %base.i.i.i, align 4
  %conv.i.i.i = zext i16 %17 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 64
  %conv3.i.i.i = and i32 %13, 255
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i.i.i, i32 noundef 15, i32 noundef %conv3.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.adc7_configure.exit.thread.i_crit_edge

sw.bb.i.adc7_configure.exit.thread.i_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc7_configure.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base.i.i.i, align 4
  %conv.i48.i.i = zext i16 %21 to i32
  %add.i49.i.i = add nuw nsw i32 %conv.i48.i.i, 66
  %call.i.i.i = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %add.i49.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.adc7_configure.exit.thread.i_crit_edge

if.end.i.i.adc7_configure.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc7_configure.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.i.i, align 4
  %cal_val.i.i.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 2
  %24 = ptrtoint ptr %cal_val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cal_val.i.i.i, align 4
  %.tr.i.i.i = trunc i32 %25 to i8
  %26 = shl i8 %.tr.i.i.i, 6
  %.masked.i.i.i = and i8 %23, -125
  %27 = or i8 %26, %.masked.i.i.i
  %cal_method.i.i.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 1
  %28 = ptrtoint ptr %cal_method.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cal_method.i.i.i, align 4
  %.tr1.i.i.i = trunc i32 %29 to i8
  %30 = shl i8 %.tr1.i.i.i, 4
  %31 = or i8 %27, %30
  %decimation.i.i.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 3
  %32 = ptrtoint ptr %decimation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %decimation.i.i.i, align 4
  %.tr3.i.i.i = trunc i32 %33 to i8
  %34 = shl i8 %.tr3.i.i.i, 2
  %conv17.i.i.i = or i8 %31, %34
  store i8 %conv17.i.i.i, ptr %buf.i.i, align 4
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %8, align 1
  %37 = and i8 %36, -8
  %avg_samples.i.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 7
  %38 = ptrtoint ptr %avg_samples.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %avg_samples.i.i, align 4
  %40 = trunc i32 %39 to i8
  %conv10.i.i = or i8 %37, %40
  store i8 %conv10.i.i, ptr %8, align 1
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %conv11.i.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv11.i.i, ptr %9, align 2
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %10, align 1
  %46 = and i8 %45, -16
  %hw_settle_time.i.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 6
  %47 = ptrtoint ptr %hw_settle_time.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hw_settle_time.i.i, align 4
  %49 = trunc i32 %48 to i8
  %conv20.i.i = or i8 %46, %49
  store i8 %conv20.i.i, ptr %10, align 1
  %50 = ptrtoint ptr %conv_req.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -128, ptr %conv_req.i.i, align 1
  %poll_eoc.i.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %poll_eoc.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %poll_eoc.i.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool21.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.end4.i.i.if.end23.i.i_crit_edge

if.end4.i.i.if.end23.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

if.then22.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %complete.i.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 7
  %53 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %complete.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then22.i.i, %if.end4.i.i.if.end23.i.i_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %base.i.i.i, align 4
  %conv.i51.i.i = zext i16 %57 to i32
  %add.i52.i.i = add nuw nsw i32 %conv.i51.i.i, 66
  %call.i53.i.i = call i32 @regmap_bulk_write(ptr noundef %55, i32 noundef %add.i52.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i.i)
  %tobool26.not.i.i = icmp eq i32 %call.i53.i.i, 0
  br i1 %tobool26.not.i.i, label %adc7_configure.exit.i, label %if.end23.i.i.adc7_configure.exit.thread.i_crit_edge

if.end23.i.i.adc7_configure.exit.thread.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc7_configure.exit.thread.i

adc7_configure.exit.thread.i:                     ; preds = %if.end23.i.i.adc7_configure.exit.thread.i_crit_edge, %if.end.i.i.adc7_configure.exit.thread.i_crit_edge, %sw.bb.i.adc7_configure.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i53.i.i, %if.end23.i.i.adc7_configure.exit.thread.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.adc7_configure.exit.thread.i_crit_edge ], [ %call.i.i.i.i, %sw.bb.i.adc7_configure.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conv_req.i.i) #7
  br label %do.end.i

adc7_configure.exit.i:                            ; preds = %if.end23.i.i
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %60 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %base.i.i.i, align 4
  %conv.i55.i.i = zext i16 %61 to i32
  %add.i56.i.i = add nuw nsw i32 %conv.i55.i.i, 71
  %call.i57.i.i = call i32 @regmap_bulk_write(ptr noundef %59, i32 noundef %add.i56.i.i, ptr noundef nonnull %conv_req.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conv_req.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i.i)
  %tobool.not.i1 = icmp eq i32 %call.i57.i.i, 0
  br i1 %tobool.not.i1, label %if.end.i3, label %adc7_configure.exit.i.do.end.i_crit_edge

adc7_configure.exit.i.do.end.i_crit_edge:         ; preds = %adc7_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %adc7_configure.exit.i.do.end.i_crit_edge, %adc7_configure.exit.thread.i
  %retval.0.i28.i = phi i32 [ %retval.0.i.ph.i, %adc7_configure.exit.thread.i ], [ %call.i57.i.i, %adc7_configure.exit.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i28.i) #10
  br label %adc7_do_conversion.exit.thread

if.end.i3:                                        ; preds = %adc7_configure.exit.i
  %complete.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 7
  %call2.i2 = call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 1) #7
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %66 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %base.i.i.i, align 4
  %conv.i.i = zext i16 %67 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %65, i32 noundef %add.i.i, ptr noundef nonnull %status.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i3.adc7_do_conversion.exit.thread_crit_edge

if.end.i3.adc7_do_conversion.exit.thread_crit_edge: ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc7_do_conversion.exit.thread

if.end6.i:                                        ; preds = %if.end.i3
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %tobool7.not.i = icmp sgt i8 %69, -1
  br i1 %tobool7.not.i, label %adc7_do_conversion.exit, label %do.end11.i

do.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev12.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev12.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.73) #10
  br label %adc7_do_conversion.exit.thread

adc7_do_conversion.exit.thread:                   ; preds = %do.end11.i, %if.end.i3.adc7_do_conversion.exit.thread_crit_edge, %do.end.i
  %ret.0.i.ph = phi i32 [ -5, %do.end11.i ], [ %call.i.i, %if.end.i3.adc7_do_conversion.exit.thread_crit_edge ], [ %retval.0.i28.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  br label %adc_read_raw_common.exit

adc7_do_conversion.exit:                          ; preds = %if.end6.i
  %call14.i = call fastcc i32 @adc5_read_voltage_data(ptr noundef %1, ptr noundef nonnull %adc_code_volt.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %adc7_do_conversion.exit.adc_read_raw_common.exit_crit_edge

adc7_do_conversion.exit.adc_read_raw_common.exit_crit_edge: ; preds = %adc7_do_conversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc_read_raw_common.exit

if.end.i:                                         ; preds = %adc7_do_conversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  %scale_fn_type.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 8
  %72 = ptrtoint ptr %scale_fn_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %scale_fn_type.i, align 4
  %prescale.i = getelementptr %struct.adc5_channel_prop, ptr %4, i32 %6, i32 5
  %74 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %prescale.i, align 4
  %data.i = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 9
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %78 = ptrtoint ptr %adc_code_volt.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %adc_code_volt.i, align 2
  %call2.i = call i32 @qcom_adc5_hw_scale(i32 noundef %73, i32 noundef %75, ptr noundef %77, i16 noundef zeroext %79, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %.call2.i = select i1 %tobool3.not.i, i32 1, i32 %call2.i
  br label %adc_read_raw_common.exit

adc_read_raw_common.exit:                         ; preds = %if.end.i, %adc7_do_conversion.exit.adc_read_raw_common.exit_crit_edge, %adc7_do_conversion.exit.thread, %entry.adc_read_raw_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call14.i, %adc7_do_conversion.exit.adc_read_raw_common.exit_crit_edge ], [ %.call2.i, %if.end.i ], [ -22, %entry.adc_read_raw_common.exit_crit_edge ], [ %ret.0.i.ph, %adc7_do_conversion.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_code_volt.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @adc7_of_xlate(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %iiospec) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %nchannels = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chan_props = getelementptr inbounds %struct.adc5_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_props, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adc5_channel_prop, ptr %5, i32 %i.014
  %sid = getelementptr %struct.adc5_channel_prop, ptr %5, i32 %i.014, i32 4
  %8 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid, align 4
  %shl = shl i32 %9, 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %7)
  %cmp4 = icmp eq i32 %or, %7
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %i.014, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !136, !137, !138, !140, !142, !143, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__initcall__kmod_qcom_spmi_adc5__191_923_adc5_driver_init6, !1, !"__initcall__kmod_qcom_spmi_adc5__191_923_adc5_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 923, i32 1}
!2 = !{ptr @__exitcall_adc5_driver_exit, !1, !"__exitcall_adc5_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias192, !4, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 925, i32 1}
!5 = !{ptr @__UNIQUE_ID_description193, !6, !"__UNIQUE_ID_description193", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 926, i32 1}
!7 = !{ptr @__UNIQUE_ID_file194, !8, !"__UNIQUE_ID_file194", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 927, i32 1}
!9 = !{ptr @__UNIQUE_ID_license195, !8, !"__UNIQUE_ID_license195", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 918, i32 11}
!12 = !{ptr @adc5_driver, !13, !"adc5_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 916, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 873, i32 35}
!16 = !{ptr @adc5_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 887, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 891, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adc5_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @adc5_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 902, i32 12}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @adc5_data_pmic, !33, !"adc5_data_pmic", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 745, i32 31}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 521, i32 20}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 523, i32 21}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 529, i32 21}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 531, i32 21}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 533, i32 23}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 535, i32 21}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 550, i32 21}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 540, i32 24}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 542, i32 28}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 544, i32 29}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 546, i32 29}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 548, i32 29}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 525, i32 20}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 527, i32 21}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 538, i32 17}
!64 = !{ptr @adc5_chans_pmic, !65, !"adc5_chans_pmic", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 520, i32 35}
!66 = !{ptr @adc5_info, !67, !"adc5_info", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 482, i32 30}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 325, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @adc5_do_conversion._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @adc5_do_conversion._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 332, i32 4}
!75 = !{ptr @adc5_do_conversion._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @adc5_do_conversion._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 339, i32 4}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @adc5_do_conversion.__UNIQUE_ID_ddebug188, !78, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!81 = !{ptr @adc5_do_conversion._entry.35, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 342, i32 5}
!83 = !{ptr @adc5_do_conversion._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 189, i32 3}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @adc5_read_voltage_data._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @adc5_read_voltage_data._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 193, i32 2}
!91 = !{ptr @adc5_read_voltage_data.__UNIQUE_ID_ddebug187, !90, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 627, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @adc5_get_dt_channel_data._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @adc5_get_dt_channel_data._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 642, i32 3}
!99 = !{ptr @adc5_get_dt_channel_data._entry.42, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @adc5_get_dt_channel_data._entry_ptr.44, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 651, i32 5}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 653, i32 3}
!105 = !{ptr @adc5_get_dt_channel_data._entry.46, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @adc5_get_dt_channel_data._entry_ptr.48, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 658, i32 35}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 662, i32 4}
!111 = !{ptr @adc5_get_dt_channel_data._entry.50, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @adc5_get_dt_channel_data._entry_ptr.52, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 671, i32 41}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 675, i32 4}
!117 = !{ptr @adc5_get_dt_channel_data._entry.54, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @adc5_get_dt_channel_data._entry_ptr.56, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 685, i32 35}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 692, i32 4}
!123 = !{ptr @adc5_get_dt_channel_data._entry.58, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @adc5_get_dt_channel_data._entry_ptr.60, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 696, i32 3}
!127 = !{ptr @adc5_get_dt_channel_data.__UNIQUE_ID_ddebug189, !126, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 707, i32 4}
!130 = !{ptr @adc5_get_dt_channel_data._entry.62, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @adc5_get_dt_channel_data._entry_ptr.64, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 716, i32 35}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 720, i32 4}
!136 = !{ptr @adc5_get_dt_channel_data._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @adc5_get_dt_channel_data._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 729, i32 34}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 740, i32 2}
!142 = !{ptr @adc5_get_dt_channel_data.__UNIQUE_ID_ddebug190, !141, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!143 = !{ptr @adc7_info, !144, !"adc7_info", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 487, i32 30}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 367, i32 3}
!147 = !{ptr @adc7_do_conversion._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @adc7_do_conversion._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 379, i32 3}
!151 = !{ptr @adc7_do_conversion._entry.72, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @adc7_do_conversion._entry_ptr.74, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @adc5_match_table, !154, !"adc5_match_table", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 787, i32 34}
!155 = !{ptr @adc7_data_pmic, !156, !"adc7_data_pmic", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 760, i32 31}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 565, i32 29}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 567, i32 29}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 569, i32 29}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 571, i32 29}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 573, i32 29}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 575, i32 29}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 577, i32 25}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 579, i32 25}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 581, i32 25}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 583, i32 25}
!177 = !{ptr @adc7_chans_pmic, !178, !"adc7_chans_pmic", i1 false, i1 false}
!178 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 554, i32 35}
!179 = !{ptr @adc5_data_pmic_rev2, !180, !"adc5_data_pmic_rev2", i1 false, i1 false}
!180 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 772, i32 31}
!181 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 610, i32 28}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 606, i32 29}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 608, i32 29}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 596, i32 18}
!189 = !{ptr @adc5_chans_rev2, !190, !"adc5_chans_rev2", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/qcom-spmi-adc5.c", i32 587, i32 35}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"auto-init"}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2148823210, i64 2148823215, i64 2148823228, i64 2148823272, i64 2148823306, i64 2148823327}
!203 = distinct !{ptr @adc5_do_conversion, null}
!204 = !{i8 0, i8 2}
