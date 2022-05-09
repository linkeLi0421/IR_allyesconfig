; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/qcom-spmi-vadc.c_pt.bc'
source_filename = "../drivers/iio/adc/qcom-spmi-vadc.c"
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
%struct.vadc_channels = type { ptr, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.vadc_priv = type { ptr, ptr, i16, i32, ptr, ptr, i8, i8, %struct.completion, [2 x %struct.vadc_linear_graph], %struct.mutex }
%struct.vadc_linear_graph = type { i32, i32, i32 }
%struct.vadc_channel_prop = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_qcom_spmi_vadc__193_931_vadc_driver_init6 = internal global ptr @vadc_driver_init, section ".initcall6.init", align 4
@vadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vadc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vadc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vadc_driver_exit = internal global ptr @vadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias194 = internal constant [45 x i8] c"qcom_spmi_vadc.alias=platform:qcom-spmi-vadc\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [65 x i8] c"qcom_spmi_vadc.description=Qualcomm SPMI PMIC voltage ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [51 x i8] c"qcom_spmi_vadc.file=drivers/iio/adc/qcom-spmi-vadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [30 x i8] c"qcom_spmi_vadc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [63 x i8] c"qcom_spmi_vadc.author=Stanimir Varbanov <svarbanov@mm-sol.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author199 = internal constant [58 x i8] c"qcom_spmi_vadc.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-spmi-vadc\00", [17 x i8] zeroinitializer }, align 32
@vadc_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-vadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@vadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vadc->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spmi-vadc\00", [22 x i8] zeroinitializer }, align 32
@vadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vadc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/adc/qcom-spmi-vadc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vadc_probe._entry_ptr = internal global ptr @vadc_probe._entry, section ".printk_index", align 4
@vadc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @vadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vadc_of_xlate, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vadc_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 824, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d is not ADC\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vadc_check_revision\00", [44 x i8] zeroinitializer }, align 32
@vadc_check_revision._entry_ptr = internal global ptr @vadc_check_revision._entry, section ".printk_index", align 4
@vadc_check_revision._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.6, i32 833, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d is not VADC\0A\00", [16 x i8] zeroinitializer }, align 32
@vadc_check_revision._entry_ptr.14 = internal global ptr @vadc_check_revision._entry.12, section ".printk_index", align 4
@vadc_check_revision._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.6, i32 842, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"revision %d not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@vadc_check_revision._entry_ptr.17 = internal global ptr @vadc_check_revision._entry.15, section ".printk_index", align 4
@vadc_chans = internal constant { [253 x %struct.vadc_channels], [1276 x i8] } { [253 x %struct.vadc_channels] [%struct.vadc_channels { ptr @.str.53, i32 4, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.54, i32 4, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.55, i32 3, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.56, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.57, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.58, i32 1, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.59, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.60, i32 1, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.61, i32 0, i32 9, i32 3, i32 2 }, %struct.vadc_channels { ptr @.str.62, i32 0, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.63, i32 0, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.64, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.65, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.66, i32 0, i32 9, i32 3, i32 4 }, %struct.vadc_channels { ptr @.str.67, i32 0, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.68, i32 0, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.69, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.70, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.71, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.72, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.73, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.74, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.75, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.76, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.77, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.78, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.79, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.80, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.81, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.82, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.83, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.84, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.85, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.86, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.87, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.88, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.89, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.90, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.91, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.92, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.93, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.94, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.95, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.96, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.97, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.98, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.99, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.100, i32 1, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.101, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.102, i32 0, i32 0, i32 3, i32 0 }, %struct.vadc_channels { ptr @.str.103, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.104, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.105, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.106, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.107, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.108, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.109, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.110, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.111, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.112, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.113, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels { ptr @.str.114, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.115, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.116, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.117, i32 0, i32 9, i32 3, i32 1 }, %struct.vadc_channels { ptr @.str.118, i32 0, i32 9, i32 3, i32 1 }, %struct.vadc_channels { ptr @.str.119, i32 0, i32 9, i32 3, i32 1 }, %struct.vadc_channels { ptr @.str.120, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.121, i32 0, i32 9, i32 3, i32 1 }, %struct.vadc_channels { ptr @.str.122, i32 0, i32 9, i32 3, i32 1 }, %struct.vadc_channels { ptr @.str.123, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels { ptr @.str.124, i32 0, i32 9, i32 3, i32 3 }, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels { ptr @.str.125, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.126, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.127, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.128, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.129, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.130, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.131, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.132, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.133, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.134, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels { ptr @.str.135, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels { ptr @.str.136, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.137, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.138, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.139, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.140, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.141, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.142, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.143, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.144, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels { ptr @.str.145, i32 0, i32 0, i32 1, i32 0 }, %struct.vadc_channels zeroinitializer, %struct.vadc_channels zeroinitializer, %struct.vadc_channels { ptr @.str.146, i32 0, i32 0, i32 1, i32 0 }], [1276 x i8] zeroinitializer }, align 32
@vadc_get_dt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 783, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Please define 1.25V channel\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vadc_get_dt_data\00", [47 x i8] zeroinitializer }, align 32
@vadc_get_dt_data._entry_ptr = internal global ptr @vadc_get_dt_data._entry, section ".printk_index", align 4
@vadc_get_dt_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 788, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Please define 0.625V channel\0A\00", [34 x i8] zeroinitializer }, align 32
@vadc_get_dt_data._entry_ptr.22 = internal global ptr @vadc_get_dt_data._entry.20, section ".printk_index", align 4
@vadc_get_dt_data._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.6, i32 793, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Please define VDD channel\0A\00", [37 x i8] zeroinitializer }, align 32
@vadc_get_dt_data._entry_ptr.25 = internal global ptr @vadc_get_dt_data._entry.23, section ".printk_index", align 4
@vadc_get_dt_data._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.6, i32 798, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Please define GND channel\0A\00", [37 x i8] zeroinitializer }, align 32
@vadc_get_dt_data._entry_ptr.28 = internal global ptr @vadc_get_dt_data._entry.26, section ".printk_index", align 4
@vadc_get_dt_channel_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 660, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid channel number %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vadc_get_dt_channel_data\00", [39 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry_ptr = internal global ptr @vadc_get_dt_channel_data._entry, section ".printk_index", align 4
@vadc_get_dt_channel_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.6, i32 665, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s invalid channel number %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry_ptr.33 = internal global ptr @vadc_get_dt_channel_data._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,decimation\00", [16 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.6, i32 677, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%02x invalid decimation %d\0A\00", [36 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry_ptr.37 = internal global ptr @vadc_get_dt_channel_data._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,pre-scaling\00", [47 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.6, i32 690, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%02x invalid pre-scaling <%d %d>\0A\00", [62 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry_ptr.41 = internal global ptr @vadc_get_dt_channel_data._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,hw-settle-time\00", [44 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.6, i32 703, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%02x invalid hw-settle-time %d us\0A\00", [61 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry_ptr.45 = internal global ptr @vadc_get_dt_channel_data._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,avg-samples\00", [47 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.30, ptr @.str.6, i32 716, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%02x invalid avg-samples %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data._entry_ptr.49 = internal global ptr @vadc_get_dt_channel_data._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,ratiometric\00", [47 x i8] zeroinitializer }, align 32
@vadc_get_dt_channel_data.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.30, ptr @.str.6, ptr @.str.52, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_spmi_vadc\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%02x name %s\0A\00", [18 x i8] zeroinitializer }, align 32
@vadc_prescale_ratios = internal constant { [8 x %struct.vadc_prescale_ratio], [32 x i8] } { [8 x %struct.vadc_prescale_ratio] [%struct.vadc_prescale_ratio { i32 1, i32 1 }, %struct.vadc_prescale_ratio { i32 1, i32 3 }, %struct.vadc_prescale_ratio { i32 1, i32 4 }, %struct.vadc_prescale_ratio { i32 1, i32 6 }, %struct.vadc_prescale_ratio { i32 1, i32 20 }, %struct.vadc_prescale_ratio { i32 1, i32 8 }, %struct.vadc_prescale_ratio { i32 10, i32 81 }, %struct.vadc_prescale_ratio { i32 1, i32 10 }], [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"USBIN\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCIN\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCHG_SNS\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPARE1_03\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB_ID_MV\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCOIN\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBAT_SNS\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VSYS\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIE_TEMP\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REF_625MV\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REF_1250MV\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHG_TEMP\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPARE1\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPARE2\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GND_REF\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VDD_VADC\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX1_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX2_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX3_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX4_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX5_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX6_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX7_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX8_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX9_1_1\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX10_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX11_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX12_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX13_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX14_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX15_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX16_1_1\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX1_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX2_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX3_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX4_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX5_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX6_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX7_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX8_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P_MUX9_1_3\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX10_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX11_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX12_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX13_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX14_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX15_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"P_MUX16_1_3\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LR_MUX1_BAT_THERM\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LR_MUX2_BAT_ID\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LR_MUX3_XO_THERM\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LR_MUX4_AMUX_THM1\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LR_MUX5_AMUX_THM2\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LR_MUX6_AMUX_THM3\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LR_MUX7_HW_ID\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LR_MUX8_AMUX_THM4\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LR_MUX9_AMUX_THM5\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LR_MUX10_USB_ID\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AMUX_PU1\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AMUX_PU2\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LR_MUX3_BUF_XO_THERM\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX1_PU1_BAT_THERM\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LR_MUX2_PU1_BAT_ID\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LR_MUX3_PU1_XO_THERM\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX4_PU1_AMUX_THM1\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX5_PU1_AMUX_THM2\00", [42 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX6_PU1_AMUX_THM3\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LR_MUX7_PU1_AMUX_HW_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX8_PU1_AMUX_THM4\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX9_PU1_AMUX_THM5\00", [42 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LR_MUX10_PU1_AMUX_USB_ID\00", [39 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LR_MUX3_BUF_PU1_XO_THERM\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX1_PU2_BAT_THERM\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LR_MUX2_PU2_BAT_ID\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LR_MUX3_PU2_XO_THERM\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX4_PU2_AMUX_THM1\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX5_PU2_AMUX_THM2\00", [42 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX6_PU2_AMUX_THM3\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LR_MUX7_PU2_AMUX_HW_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX8_PU2_AMUX_THM4\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_MUX9_PU2_AMUX_THM5\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LR_MUX10_PU2_AMUX_USB_ID\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LR_MUX3_BUF_PU2_XO_THERM\00", [39 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_MUX1_PU1_PU2_BAT_THERM\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LR_MUX2_PU1_PU2_BAT_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LR_MUX3_PU1_PU2_XO_THERM\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_MUX4_PU1_PU2_AMUX_THM1\00", [38 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_MUX5_PU1_PU2_AMUX_THM2\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_MUX6_PU1_PU2_AMUX_THM3\00", [38 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LR_MUX7_PU1_PU2_AMUX_HW_ID\00", [37 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_MUX8_PU1_PU2_AMUX_THM4\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_MUX9_PU1_PU2_AMUX_THM5\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LR_MUX10_PU1_PU2_AMUX_USB_ID\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LR_MUX3_BUF_PU1_PU2_XO_THERM\00", [35 x i8] zeroinitializer }, align 32
@vadc_get_channel.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.147, ptr @.str.6, ptr @.str.148, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vadc_get_channel\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no such channel %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@vadc_measure_ref_points._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.6, i32 402, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"measure reference points failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vadc_measure_ref_points\00", [40 x i8] zeroinitializer }, align 32
@vadc_measure_ref_points._entry_ptr = internal global ptr @vadc_measure_ref_points._entry, section ".printk_index", align 4
@vadc_do_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.6, i32 345, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"conversion failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vadc_do_conversion\00", [45 x i8] zeroinitializer }, align 32
@vadc_do_conversion._entry_ptr = internal global ptr @vadc_do_conversion._entry, section ".printk_index", align 4
@vadc_show_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.6, i32 204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mode:%02x en:%02x chan:%02x dig:%02x req:%02x sta1:%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vadc_show_status\00", [47 x i8] zeroinitializer }, align 32
@vadc_show_status._entry_ptr = internal global ptr @vadc_show_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967274]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.156 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 4, i64 6, i64 8, i64 10, i64 20]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"vadc_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 924, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 926, i32 14 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"vadc_match_table\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 918, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 863, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 877, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 894, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 901, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [10 x i8] c"vadc_info\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 497, i32 30 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 87, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 824, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 833, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 842, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [11 x i8] c"vadc_chans\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 547, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 783, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 788, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 793, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 798, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 660, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 665, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 672, i32 35 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 676, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 685, i32 41 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 689, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 698, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 702, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 711, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 715, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 724, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 729, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [21 x i8] c"vadc_prescale_ratios\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 125, i32 41 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 548, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 549, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 550, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 551, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 552, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 553, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 554, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 555, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 556, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 557, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 558, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 559, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 560, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 561, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 562, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 563, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 565, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 566, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 567, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 568, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 569, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 570, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 571, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 572, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 573, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 574, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 575, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 576, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 577, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 578, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 579, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 580, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 582, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 583, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 584, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 585, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 586, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 587, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 588, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 589, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 590, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 591, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 592, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 593, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 594, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 595, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 596, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 597, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 599, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 600, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 601, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 602, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 603, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 604, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 605, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 606, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 607, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 608, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 609, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 610, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 611, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 613, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 614, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 615, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 616, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 617, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 618, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 619, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 620, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 621, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 622, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 623, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 625, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 626, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 627, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 628, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 629, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 630, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 631, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 632, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 633, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 634, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 635, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 637, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 638, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 639, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 640, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 641, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 642, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 643, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 644, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 645, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 646, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 647, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 295, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 402, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 345, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.633 = private constant [36 x i8] c"../drivers/iio/adc/qcom-spmi-vadc.c\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.633, i32 202, i32 2 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__exitcall_vadc_driver_exit, ptr @__initcall__kmod_qcom_spmi_vadc__193_931_vadc_driver_init6, ptr @vadc_check_revision._entry, ptr @vadc_check_revision._entry.12, ptr @vadc_check_revision._entry.15, ptr @vadc_check_revision._entry_ptr, ptr @vadc_check_revision._entry_ptr.14, ptr @vadc_check_revision._entry_ptr.17, ptr @vadc_do_conversion._entry, ptr @vadc_do_conversion._entry_ptr, ptr @vadc_driver_exit, ptr @vadc_get_dt_channel_data._entry, ptr @vadc_get_dt_channel_data._entry.31, ptr @vadc_get_dt_channel_data._entry.35, ptr @vadc_get_dt_channel_data._entry.39, ptr @vadc_get_dt_channel_data._entry.43, ptr @vadc_get_dt_channel_data._entry.47, ptr @vadc_get_dt_channel_data._entry_ptr, ptr @vadc_get_dt_channel_data._entry_ptr.33, ptr @vadc_get_dt_channel_data._entry_ptr.37, ptr @vadc_get_dt_channel_data._entry_ptr.41, ptr @vadc_get_dt_channel_data._entry_ptr.45, ptr @vadc_get_dt_channel_data._entry_ptr.49, ptr @vadc_get_dt_data._entry, ptr @vadc_get_dt_data._entry.20, ptr @vadc_get_dt_data._entry.23, ptr @vadc_get_dt_data._entry.26, ptr @vadc_get_dt_data._entry_ptr, ptr @vadc_get_dt_data._entry_ptr.22, ptr @vadc_get_dt_data._entry_ptr.25, ptr @vadc_get_dt_data._entry_ptr.28, ptr @vadc_measure_ref_points._entry, ptr @vadc_measure_ref_points._entry_ptr, ptr @vadc_probe._entry, ptr @vadc_probe._entry_ptr, ptr @vadc_show_status._entry, ptr @vadc_show_status._entry_ptr, ptr @vadc_driver, ptr @.str, ptr @vadc_match_table, ptr @.str.1, ptr @vadc_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vadc_info, ptr @init_completion.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @vadc_chans, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @vadc_prescale_ratios, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_check_revision._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_check_revision._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_chans to i32), i32 5060, i32 6336, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_data._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_data._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_channel_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_channel_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_channel_data._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_channel_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_channel_data._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_get_dt_channel_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_prescale_ratios to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_measure_ref_points._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_do_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vadc_show_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vadc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @vadc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
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
  store i32 -1, ptr %reg, align 4, !annotation !329
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
  %call6 = call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 200) #7
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
  %dev12 = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev12, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %conv = trunc i32 %11 to i16
  %base = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %base, align 4
  %are_ref_measured = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %are_ref_measured to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %are_ref_measured, align 4
  %complete = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #7
  %lock = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 10
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vadc_probe.__key) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val.i, align 1, !annotation !329
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %base, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call.i.i101 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %add.i.i, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %tobool.not.i = icmp eq i32 %call.i.i101, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.vadc_check_revision.exit.thread_crit_edge

if.end9.vadc_check_revision.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_check_revision.exit.thread

if.end.i:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp.i = icmp ult i8 %21, 8
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #10
  br label %vadc_check_revision.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base, align 4
  %conv.i45.i = zext i16 %27 to i32
  %add.i46.i = add nuw nsw i32 %conv.i45.i, 5
  %call.i47.i = call i32 @regmap_bulk_read(ptr noundef %25, i32 noundef %add.i46.i, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool6.not.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.vadc_check_revision.exit.thread_crit_edge

if.end4.i.vadc_check_revision.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_check_revision.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp10.i = icmp eq i8 %29, 0
  br i1 %cmp10.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13, i32 noundef 0) #10
  br label %vadc_check_revision.exit.thread

if.end18.i:                                       ; preds = %if.end8.i
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 4
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %base, align 4
  %conv.i49.i = zext i16 %35 to i32
  %add.i50.i = add nuw nsw i32 %conv.i49.i, 1
  %call.i51.i = call i32 @regmap_bulk_read(ptr noundef %33, i32 noundef %add.i50.i, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool20.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.vadc_check_revision.exit.thread_crit_edge

if.end18.i.vadc_check_revision.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_check_revision.exit.thread

if.end22.i:                                       ; preds = %if.end18.i
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.i = icmp eq i8 %37, 0
  br i1 %cmp24.i, label %do.end29.i, label %if.end16

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.16, i32 noundef 0) #10
  br label %vadc_check_revision.exit.thread

vadc_check_revision.exit.thread:                  ; preds = %do.end29.i, %if.end18.i.vadc_check_revision.exit.thread_crit_edge, %do.end15.i, %if.end4.i.vadc_check_revision.exit.thread_crit_edge, %do.end.i, %if.end9.vadc_check_revision.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i51.i, %if.end18.i.vadc_check_revision.exit.thread_crit_edge ], [ %call.i47.i, %if.end4.i.vadc_check_revision.exit.thread_crit_edge ], [ %call.i.i101, %if.end9.vadc_check_revision.exit.thread_crit_edge ], [ -19, %do.end29.i ], [ -19, %do.end15.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end22.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %call17 = call fastcc i32 @vadc_get_dt_data(ptr noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  %40 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call21, label %if.end30 [
    i32 -517, label %if.then24.cleanup_crit_edge
    i32 -22, label %if.then24.cleanup_crit_edge104
  ]

if.then24.cleanup_crit_edge104:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %poll_eoc = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 7
  %41 = ptrtoint ptr %poll_eoc to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %poll_eoc, align 1
  br label %if.end35

if.else:                                          ; preds = %if.end20
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call21, ptr noundef nonnull @vadc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.else.if.end35_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.end30
  %call36 = call fastcc i32 @vadc_reset(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end42, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %call43 = call fastcc i32 @vadc_measure_ref_points(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 8
  %name47 = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 15
  %44 = ptrtoint ptr %name47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %name47, align 8
  %45 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %call6, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 17
  %46 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @vadc_info, ptr %info, align 8
  %iio_chans = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 5
  %47 = ptrtoint ptr %iio_chans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iio_chans, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 13
  %49 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %channels, align 8
  %nchannels = getelementptr inbounds %struct.vadc_priv, ptr %7, i32 0, i32 3
  %50 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nchannels, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call6, i32 0, i32 14
  %52 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num_channels, align 4
  %call48 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call6, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end42.cleanup_crit_edge, %do.end41, %if.else.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then24.cleanup_crit_edge104, %if.end16.cleanup_crit_edge, %vadc_check_revision.exit.thread, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %do.end41 ], [ %call48, %if.end46 ], [ -19, %entry.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.then24.cleanup_crit_edge ], [ %call21, %if.then24.cleanup_crit_edge104 ], [ %call.i, %if.else.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %retval.0.i.ph, %vadc_check_revision.exit.thread ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vadc_get_dt_data(ptr nocapture noundef %vadc, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %prop = alloca %struct.vadc_channel_prop, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %prop) #7
  %0 = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 6
  %1 = call ptr @memset(ptr %prop, i32 255, i32 28)
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %node, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_available_child_count.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

of_get_available_child_count.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nchannels156 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 3
  %2 = ptrtoint ptr %nchannels156 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nchannels156, align 4
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %node, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  %nchannels = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 3
  %3 = ptrtoint ptr %nchannels to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc.i, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_available_child_count.exit.cleanup_crit_edge, label %if.end

of_get_available_child_count.exit.cleanup_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %of_get_available_child_count.exit
  %dev = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 88) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !330

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %iio_chans159 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 5
  %6 = ptrtoint ptr %iio_chans159 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %iio_chans159, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %9, i32 noundef 3520) #7
  %iio_chans = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 5
  %10 = ptrtoint ptr %iio_chans to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %iio_chans, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end7

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nchannels, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 28) #7
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit104.thread, label %devm_kcalloc.exit104, !prof !330

devm_kcalloc.exit104.thread:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %chan_props162 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %15 = ptrtoint ptr %chan_props162 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %chan_props162, align 4
  br label %cleanup

devm_kcalloc.exit104:                             ; preds = %if.end7
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = extractvalue { i32, i1 } %13, 0
  %call5.i.i101 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef %18, i32 noundef 3520) #7
  %chan_props = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %19 = ptrtoint ptr %chan_props to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i101, ptr %chan_props, align 4
  %tobool12.not = icmp eq ptr %call5.i.i101, null
  br i1 %tobool12.not, label %devm_kcalloc.exit104.cleanup_crit_edge, label %if.end14

devm_kcalloc.exit104.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %devm_kcalloc.exit104
  %20 = ptrtoint ptr %iio_chans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iio_chans, align 4
  %call16 = tail call ptr @of_get_next_available_child(ptr noundef %node, ptr noundef null) #7
  %cmp.not177 = icmp eq ptr %call16, null
  br i1 %cmp.not177, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.end14.for.body_crit_edge
  %index.0180 = phi i32 [ %inc, %if.end21.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %child.0179 = phi ptr [ %call31, %if.end21.for.body_crit_edge ], [ %call16, %if.end14.for.body_crit_edge ]
  %iio_chan.0178 = phi ptr [ %incdec.ptr, %if.end21.for.body_crit_edge ], [ %21, %if.end14.for.body_crit_edge ]
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call18 = call fastcc i32 @vadc_get_dt_channel_data(ptr noundef %23, ptr noundef nonnull %prop, ptr noundef nonnull %child.0179)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.0179) #7
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %24 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prop, align 4
  %scale_fn_type = getelementptr [253 x %struct.vadc_channels], ptr @vadc_chans, i32 0, i32 %25, i32 4
  %26 = ptrtoint ptr %scale_fn_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scale_fn_type, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %0, align 4
  %29 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan_props, align 4
  %arrayidx24 = getelementptr %struct.vadc_channel_prop, ptr %30, i32 %index.0180
  %31 = call ptr @memcpy(ptr %arrayidx24, ptr %prop, i32 28)
  %arrayidx26 = getelementptr [253 x %struct.vadc_channels], ptr @vadc_chans, i32 0, i32 %25
  %channel28 = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.0178, i32 0, i32 1
  %32 = ptrtoint ptr %channel28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %channel28, align 4
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx26, align 4
  %datasheet_name29 = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.0178, i32 0, i32 18
  %35 = ptrtoint ptr %datasheet_name29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %datasheet_name29, align 4
  %info_mask = getelementptr [253 x %struct.vadc_channels], ptr @vadc_chans, i32 0, i32 %25, i32 3
  %36 = ptrtoint ptr %info_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %info_mask, align 4
  %info_mask_separate = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.0178, i32 0, i32 6
  %38 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %info_mask_separate, align 4
  %type = getelementptr [253 x %struct.vadc_channels], ptr @vadc_chans, i32 0, i32 %25, i32 2
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  %41 = ptrtoint ptr %iio_chan.0178 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %iio_chan.0178, align 4
  %indexed = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.0178, i32 0, i32 19
  %42 = ptrtoint ptr %indexed to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %indexed, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %indexed, align 4
  %inc = add i32 %index.0180, 1
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %iio_chan.0178, i32 0, i32 3
  %43 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %index.0180, ptr %address, align 4
  %incdec.ptr = getelementptr %struct.iio_chan_spec, ptr %iio_chan.0178, i32 1
  %call31 = tail call ptr @of_get_next_available_child(ptr noundef %node, ptr noundef nonnull %child.0179) #7
  %cmp.not = icmp eq ptr %call31, null
  br i1 %cmp.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.end14.for.end_crit_edge
  %44 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp16.not.i = icmp eq i32 %45, 0
  br i1 %cmp16.not.i, label %for.end.do.body.i_crit_edge, label %for.body.lr.ph.i

for.end.do.body.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %46 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan_props, align 4
  br label %for.body.i106

for.cond.i:                                       ; preds = %for.body.i106
  %inc.i105 = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i105, %45
  br i1 %exitcond.not.i, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.for.body.i106_crit_edge

for.cond.i.for.body.i106_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i106

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.body.i106:                                    ; preds = %for.cond.i.for.body.i106_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i105, %for.cond.i.for.body.i106_crit_edge ]
  %arrayidx.i = getelementptr %struct.vadc_channel_prop, ptr %47, i32 %i.017.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %49)
  %cmp1.i = icmp eq i32 %49, 10
  br i1 %cmp1.i, label %vadc_get_channel.exit.loopexit, label %for.cond.i

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %for.end.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_get_dt_data, %vadc_get_channel.exit.thread)) #7
          to label %do.end [label %vadc_get_channel.exit.thread], !srcloc !331

vadc_get_channel.exit.thread:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %51, ptr noundef nonnull @.str.148, i32 noundef 10) #7
  br label %do.end

vadc_get_channel.exit.loopexit:                   ; preds = %for.body.i106
  %phi.cmp = icmp eq ptr %arrayidx.i, null
  br i1 %phi.cmp, label %vadc_get_channel.exit.loopexit.do.end_crit_edge, label %if.end36

vadc_get_channel.exit.loopexit.do.end_crit_edge:  ; preds = %vadc_get_channel.exit.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %vadc_get_channel.exit.loopexit.do.end_crit_edge, %vadc_get_channel.exit.thread, %do.body.i
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end36:                                         ; preds = %vadc_get_channel.exit.loopexit
  %54 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp16.not.i108 = icmp eq i32 %55, 0
  br i1 %cmp16.not.i108, label %if.end36.do.body.i118_crit_edge, label %for.body.lr.ph.i110

if.end36.do.body.i118_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i118

for.body.lr.ph.i110:                              ; preds = %if.end36
  %56 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chan_props, align 4
  br label %for.body.i117

for.cond.i113:                                    ; preds = %for.body.i117
  %inc.i111 = add nuw i32 %i.017.i114, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, %55
  br i1 %exitcond.not.i112, label %for.cond.i113.do.body.i118_crit_edge, label %for.cond.i113.for.body.i117_crit_edge

for.cond.i113.for.body.i117_crit_edge:            ; preds = %for.cond.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i117

for.cond.i113.do.body.i118_crit_edge:             ; preds = %for.cond.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i118

for.body.i117:                                    ; preds = %for.cond.i113.for.body.i117_crit_edge, %for.body.lr.ph.i110
  %i.017.i114 = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %inc.i111, %for.cond.i113.for.body.i117_crit_edge ]
  %arrayidx.i115 = getelementptr %struct.vadc_channel_prop, ptr %57, i32 %i.017.i114
  %58 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %59)
  %cmp1.i116 = icmp eq i32 %59, 9
  br i1 %cmp1.i116, label %vadc_get_channel.exit122.loopexit, label %for.cond.i113

do.body.i118:                                     ; preds = %for.cond.i113.do.body.i118_crit_edge, %if.end36.do.body.i118_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_get_dt_data, %vadc_get_channel.exit122.thread)) #7
          to label %do.end42 [label %vadc_get_channel.exit122.thread], !srcloc !331

vadc_get_channel.exit122.thread:                  ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %61, ptr noundef nonnull @.str.148, i32 noundef 9) #7
  br label %do.end42

vadc_get_channel.exit122.loopexit:                ; preds = %for.body.i117
  %phi.cmp187 = icmp eq ptr %arrayidx.i115, null
  br i1 %phi.cmp187, label %vadc_get_channel.exit122.loopexit.do.end42_crit_edge, label %if.end44

vadc_get_channel.exit122.loopexit.do.end42_crit_edge: ; preds = %vadc_get_channel.exit122.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %vadc_get_channel.exit122.loopexit.do.end42_crit_edge, %vadc_get_channel.exit122.thread, %do.body.i118
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end44:                                         ; preds = %vadc_get_channel.exit122.loopexit
  %64 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp16.not.i124 = icmp eq i32 %65, 0
  br i1 %cmp16.not.i124, label %if.end44.do.body.i134_crit_edge, label %for.body.lr.ph.i126

if.end44.do.body.i134_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i134

for.body.lr.ph.i126:                              ; preds = %if.end44
  %66 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chan_props, align 4
  br label %for.body.i133

for.cond.i129:                                    ; preds = %for.body.i133
  %inc.i127 = add nuw i32 %i.017.i130, 1
  %exitcond.not.i128 = icmp eq i32 %inc.i127, %65
  br i1 %exitcond.not.i128, label %for.cond.i129.do.body.i134_crit_edge, label %for.cond.i129.for.body.i133_crit_edge

for.cond.i129.for.body.i133_crit_edge:            ; preds = %for.cond.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i133

for.cond.i129.do.body.i134_crit_edge:             ; preds = %for.cond.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i134

for.body.i133:                                    ; preds = %for.cond.i129.for.body.i133_crit_edge, %for.body.lr.ph.i126
  %i.017.i130 = phi i32 [ 0, %for.body.lr.ph.i126 ], [ %inc.i127, %for.cond.i129.for.body.i133_crit_edge ]
  %arrayidx.i131 = getelementptr %struct.vadc_channel_prop, ptr %67, i32 %i.017.i130
  %68 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %69)
  %cmp1.i132 = icmp eq i32 %69, 15
  br i1 %cmp1.i132, label %vadc_get_channel.exit138.loopexit, label %for.cond.i129

do.body.i134:                                     ; preds = %for.cond.i129.do.body.i134_crit_edge, %if.end44.do.body.i134_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_get_dt_data, %vadc_get_channel.exit138.thread)) #7
          to label %do.end50 [label %vadc_get_channel.exit138.thread], !srcloc !331

vadc_get_channel.exit138.thread:                  ; preds = %do.body.i134
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %71, ptr noundef nonnull @.str.148, i32 noundef 15) #7
  br label %do.end50

vadc_get_channel.exit138.loopexit:                ; preds = %for.body.i133
  %phi.cmp188 = icmp eq ptr %arrayidx.i131, null
  br i1 %phi.cmp188, label %vadc_get_channel.exit138.loopexit.do.end50_crit_edge, label %if.end52

vadc_get_channel.exit138.loopexit.do.end50_crit_edge: ; preds = %vadc_get_channel.exit138.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end50:                                         ; preds = %vadc_get_channel.exit138.loopexit.do.end50_crit_edge, %vadc_get_channel.exit138.thread, %do.body.i134
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end52:                                         ; preds = %vadc_get_channel.exit138.loopexit
  %74 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp16.not.i140 = icmp eq i32 %75, 0
  br i1 %cmp16.not.i140, label %if.end52.do.body.i150_crit_edge, label %for.body.lr.ph.i142

if.end52.do.body.i150_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i150

for.body.lr.ph.i142:                              ; preds = %if.end52
  %76 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chan_props, align 4
  br label %for.body.i149

for.cond.i145:                                    ; preds = %for.body.i149
  %inc.i143 = add nuw i32 %i.017.i146, 1
  %exitcond.not.i144 = icmp eq i32 %inc.i143, %75
  br i1 %exitcond.not.i144, label %for.cond.i145.do.body.i150_crit_edge, label %for.cond.i145.for.body.i149_crit_edge

for.cond.i145.for.body.i149_crit_edge:            ; preds = %for.cond.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i149

for.cond.i145.do.body.i150_crit_edge:             ; preds = %for.cond.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i150

for.body.i149:                                    ; preds = %for.cond.i145.for.body.i149_crit_edge, %for.body.lr.ph.i142
  %i.017.i146 = phi i32 [ 0, %for.body.lr.ph.i142 ], [ %inc.i143, %for.cond.i145.for.body.i149_crit_edge ]
  %arrayidx.i147 = getelementptr %struct.vadc_channel_prop, ptr %77, i32 %i.017.i146
  %78 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %79)
  %cmp1.i148 = icmp eq i32 %79, 14
  br i1 %cmp1.i148, label %vadc_get_channel.exit154.loopexit, label %for.cond.i145

do.body.i150:                                     ; preds = %for.cond.i145.do.body.i150_crit_edge, %if.end52.do.body.i150_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_get_dt_data, %vadc_get_channel.exit154.thread)) #7
          to label %do.end58 [label %vadc_get_channel.exit154.thread], !srcloc !331

vadc_get_channel.exit154.thread:                  ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %81, ptr noundef nonnull @.str.148, i32 noundef 14) #7
  br label %do.end58

vadc_get_channel.exit154.loopexit:                ; preds = %for.body.i149
  %phi.cmp189 = icmp eq ptr %arrayidx.i147, null
  br i1 %phi.cmp189, label %vadc_get_channel.exit154.loopexit.do.end58_crit_edge, label %vadc_get_channel.exit154.loopexit.cleanup_crit_edge

vadc_get_channel.exit154.loopexit.cleanup_crit_edge: ; preds = %vadc_get_channel.exit154.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vadc_get_channel.exit154.loopexit.do.end58_crit_edge: ; preds = %vadc_get_channel.exit154.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end58:                                         ; preds = %vadc_get_channel.exit154.loopexit.do.end58_crit_edge, %vadc_get_channel.exit154.thread, %do.body.i150
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.27) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %vadc_get_channel.exit154.loopexit.cleanup_crit_edge, %do.end50, %do.end42, %do.end, %if.then20, %devm_kcalloc.exit104.cleanup_crit_edge, %devm_kcalloc.exit104.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %of_get_available_child_count.exit.cleanup_crit_edge, %of_get_available_child_count.exit.thread
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ -19, %do.end58 ], [ -19, %do.end50 ], [ -19, %do.end42 ], [ -19, %do.end ], [ -22, %of_get_available_child_count.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit104.cleanup_crit_edge ], [ -22, %of_get_available_child_count.exit.thread ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit104.thread ], [ 0, %vadc_get_channel.exit154.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %prop) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vadc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.vadc_priv, ptr %dev_id, i32 0, i32 8
  tail call void @complete(ptr noundef %complete) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vadc_reset(ptr nocapture noundef readonly %vadc) unnamed_addr #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !329
  %1 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vadc, align 4
  %base.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 2
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 208
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %add.i, i32 noundef 165) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vadc, align 4
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %base.i, align 4
  %conv.i21 = zext i16 %8 to i32
  %add.i22 = add nuw nsw i32 %conv.i21, 218
  %call.i23 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %add.i22, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool2.not = icmp eq i32 %call.i23, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vadc, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %base.i, align 4
  %conv.i25 = zext i16 %12 to i32
  %add.i26 = add nuw nsw i32 %conv.i25, 208
  %call.i27 = call i32 @regmap_write(ptr noundef %10, i32 noundef %add.i26, i32 noundef 165) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool6.not = icmp eq i32 %call.i27, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = or i8 %14, 4
  store i8 %15, ptr %data, align 1
  %16 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vadc, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %base.i, align 4
  %conv.i29 = zext i16 %19 to i32
  %add.i30 = add nuw nsw i32 %conv.i29, 218
  %conv2.i = zext i8 %15 to i32
  %call.i31 = call i32 @regmap_write(ptr noundef %17, i32 noundef %add.i30, i32 noundef %conv2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i31, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i23, %if.end.cleanup_crit_edge ], [ %call.i27, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vadc_measure_ref_points(ptr noundef %vadc) unnamed_addr #2 align 64 {
entry:
  %read_1 = alloca i16, align 2
  %read_2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_1) #7
  %0 = ptrtoint ptr %read_1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %read_1, align 2, !annotation !329
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read_2) #7
  %1 = ptrtoint ptr %read_2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %read_2, align 2, !annotation !329
  %graph = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 9
  %arrayidx = getelementptr %struct.vadc_priv, ptr %vadc, i32 0, i32 9, i32 1
  %dx = getelementptr %struct.vadc_priv, ptr %vadc, i32 0, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %dx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1800, ptr %dx, align 4
  %dx3 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 9, i32 0, i32 1
  %3 = ptrtoint ptr %dx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 625000, ptr %dx3, align 4
  %nchannels.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 3
  %4 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not.i = icmp eq i32 %5, 0
  br i1 %cmp16.not.i, label %entry.do.body.i_crit_edge, label %for.body.lr.ph.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %entry
  %chan_props.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %6 = ptrtoint ptr %chan_props.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_props.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vadc_channel_prop, ptr %7, i32 %i.017.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp1.i = icmp eq i32 %9, 10
  br i1 %cmp1.i, label %for.body.i.vadc_get_channel.exit_crit_edge, label %for.cond.i

for.body.i.vadc_get_channel.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_get_channel.exit

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_measure_ref_points, %if.then6.i)) #7
          to label %vadc_get_channel.exit [label %if.then6.i], !srcloc !331

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %11, ptr noundef nonnull @.str.148, i32 noundef 10) #7
  br label %vadc_get_channel.exit

vadc_get_channel.exit:                            ; preds = %if.then6.i, %do.body.i, %for.body.i.vadc_get_channel.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then6.i ], [ null, %do.body.i ], [ %arrayidx.i, %for.body.i.vadc_get_channel.exit_crit_edge ]
  %call4 = call fastcc i32 @vadc_do_conversion(ptr noundef %vadc, ptr noundef %retval.0.i, ptr noundef nonnull %read_1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %vadc_get_channel.exit.do.end_crit_edge

vadc_get_channel.exit.do.end_crit_edge:           ; preds = %vadc_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %vadc_get_channel.exit
  %12 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16.not.i79 = icmp eq i32 %13, 0
  br i1 %cmp16.not.i79, label %if.end.do.body.i89_crit_edge, label %for.body.lr.ph.i81

if.end.do.body.i89_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i89

for.body.lr.ph.i81:                               ; preds = %if.end
  %chan_props.i80 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %14 = ptrtoint ptr %chan_props.i80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan_props.i80, align 4
  br label %for.body.i88

for.cond.i84:                                     ; preds = %for.body.i88
  %inc.i82 = add nuw i32 %i.017.i85, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, %13
  br i1 %exitcond.not.i83, label %for.cond.i84.do.body.i89_crit_edge, label %for.cond.i84.for.body.i88_crit_edge

for.cond.i84.for.body.i88_crit_edge:              ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i88

for.cond.i84.do.body.i89_crit_edge:               ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i89

for.body.i88:                                     ; preds = %for.cond.i84.for.body.i88_crit_edge, %for.body.lr.ph.i81
  %i.017.i85 = phi i32 [ 0, %for.body.lr.ph.i81 ], [ %inc.i82, %for.cond.i84.for.body.i88_crit_edge ]
  %arrayidx.i86 = getelementptr %struct.vadc_channel_prop, ptr %15, i32 %i.017.i85
  %16 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %cmp1.i87 = icmp eq i32 %17, 12
  br i1 %cmp1.i87, label %for.body.i88.vadc_get_channel.exit93_crit_edge, label %for.cond.i84

for.body.i88.vadc_get_channel.exit93_crit_edge:   ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_get_channel.exit93

do.body.i89:                                      ; preds = %for.cond.i84.do.body.i89_crit_edge, %if.end.do.body.i89_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_measure_ref_points, %vadc_get_channel.exit93.thread)) #7
          to label %vadc_get_channel.exit93 [label %vadc_get_channel.exit93.thread], !srcloc !331

vadc_get_channel.exit93.thread:                   ; preds = %do.body.i89
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i90 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i90 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i90, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %19, ptr noundef nonnull @.str.148, i32 noundef 12) #7
  br label %if.then7

vadc_get_channel.exit93:                          ; preds = %do.body.i89, %for.body.i88.vadc_get_channel.exit93_crit_edge
  %retval.0.i92 = phi ptr [ null, %do.body.i89 ], [ %arrayidx.i86, %for.body.i88.vadc_get_channel.exit93_crit_edge ]
  %tobool6.not = icmp eq ptr %retval.0.i92, null
  br i1 %tobool6.not, label %vadc_get_channel.exit93.if.then7_crit_edge, label %vadc_get_channel.exit93.if.end9_crit_edge

vadc_get_channel.exit93.if.end9_crit_edge:        ; preds = %vadc_get_channel.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

vadc_get_channel.exit93.if.then7_crit_edge:       ; preds = %vadc_get_channel.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %vadc_get_channel.exit93.if.then7_crit_edge, %vadc_get_channel.exit93.thread
  %20 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp16.not.i95 = icmp eq i32 %21, 0
  br i1 %cmp16.not.i95, label %if.then7.do.body.i105_crit_edge, label %for.body.lr.ph.i97

if.then7.do.body.i105_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i105

for.body.lr.ph.i97:                               ; preds = %if.then7
  %chan_props.i96 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %22 = ptrtoint ptr %chan_props.i96 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_props.i96, align 4
  br label %for.body.i104

for.cond.i100:                                    ; preds = %for.body.i104
  %inc.i98 = add nuw i32 %i.017.i101, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, %21
  br i1 %exitcond.not.i99, label %for.cond.i100.do.body.i105_crit_edge, label %for.cond.i100.for.body.i104_crit_edge

for.cond.i100.for.body.i104_crit_edge:            ; preds = %for.cond.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i104

for.cond.i100.do.body.i105_crit_edge:             ; preds = %for.cond.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i105

for.body.i104:                                    ; preds = %for.cond.i100.for.body.i104_crit_edge, %for.body.lr.ph.i97
  %i.017.i101 = phi i32 [ 0, %for.body.lr.ph.i97 ], [ %inc.i98, %for.cond.i100.for.body.i104_crit_edge ]
  %arrayidx.i102 = getelementptr %struct.vadc_channel_prop, ptr %23, i32 %i.017.i101
  %24 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %cmp1.i103 = icmp eq i32 %25, 9
  br i1 %cmp1.i103, label %for.body.i104.if.end9_crit_edge, label %for.cond.i100

for.body.i104.if.end9_crit_edge:                  ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body.i105:                                     ; preds = %for.cond.i100.do.body.i105_crit_edge, %if.then7.do.body.i105_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_measure_ref_points, %if.then6.i107)) #7
          to label %if.end9 [label %if.then6.i107], !srcloc !331

if.then6.i107:                                    ; preds = %do.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i106 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i106, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %27, ptr noundef nonnull @.str.148, i32 noundef 9) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6.i107, %do.body.i105, %for.body.i104.if.end9_crit_edge, %vadc_get_channel.exit93.if.end9_crit_edge
  %prop.0 = phi ptr [ %retval.0.i92, %vadc_get_channel.exit93.if.end9_crit_edge ], [ null, %if.then6.i107 ], [ null, %do.body.i105 ], [ %arrayidx.i102, %for.body.i104.if.end9_crit_edge ]
  %call10 = call fastcc i32 @vadc_do_conversion(ptr noundef %vadc, ptr noundef %prop.0, ptr noundef nonnull %read_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end13:                                         ; preds = %if.end9
  %28 = ptrtoint ptr %read_1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %read_1, align 2
  %30 = ptrtoint ptr %read_2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %read_2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp = icmp eq i16 %29, %31
  br i1 %cmp, label %if.end13.do.end_crit_edge, label %if.end17

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17:                                         ; preds = %if.end13
  %conv14 = zext i16 %31 to i32
  %conv = zext i16 %29 to i32
  %sub = sub nsw i32 %conv, %conv14
  %32 = ptrtoint ptr %graph to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %graph, align 4
  %gnd = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 9, i32 0, i32 2
  %33 = ptrtoint ptr %gnd to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv14, ptr %gnd, align 4
  %34 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16.not.i111 = icmp eq i32 %35, 0
  br i1 %cmp16.not.i111, label %if.end17.do.body.i121_crit_edge, label %for.body.lr.ph.i113

if.end17.do.body.i121_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i121

for.body.lr.ph.i113:                              ; preds = %if.end17
  %chan_props.i112 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %36 = ptrtoint ptr %chan_props.i112 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_props.i112, align 4
  br label %for.body.i120

for.cond.i116:                                    ; preds = %for.body.i120
  %inc.i114 = add nuw i32 %i.017.i117, 1
  %exitcond.not.i115 = icmp eq i32 %inc.i114, %35
  br i1 %exitcond.not.i115, label %for.cond.i116.do.body.i121_crit_edge, label %for.cond.i116.for.body.i120_crit_edge

for.cond.i116.for.body.i120_crit_edge:            ; preds = %for.cond.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i120

for.cond.i116.do.body.i121_crit_edge:             ; preds = %for.cond.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i121

for.body.i120:                                    ; preds = %for.cond.i116.for.body.i120_crit_edge, %for.body.lr.ph.i113
  %i.017.i117 = phi i32 [ 0, %for.body.lr.ph.i113 ], [ %inc.i114, %for.cond.i116.for.body.i120_crit_edge ]
  %arrayidx.i118 = getelementptr %struct.vadc_channel_prop, ptr %37, i32 %i.017.i117
  %38 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %39)
  %cmp1.i119 = icmp eq i32 %39, 15
  br i1 %cmp1.i119, label %for.body.i120.vadc_get_channel.exit125_crit_edge, label %for.cond.i116

for.body.i120.vadc_get_channel.exit125_crit_edge: ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_get_channel.exit125

do.body.i121:                                     ; preds = %for.cond.i116.do.body.i121_crit_edge, %if.end17.do.body.i121_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_measure_ref_points, %if.then6.i123)) #7
          to label %vadc_get_channel.exit125 [label %if.then6.i123], !srcloc !331

if.then6.i123:                                    ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i122 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %40 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i122, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %41, ptr noundef nonnull @.str.148, i32 noundef 15) #7
  br label %vadc_get_channel.exit125

vadc_get_channel.exit125:                         ; preds = %if.then6.i123, %do.body.i121, %for.body.i120.vadc_get_channel.exit125_crit_edge
  %retval.0.i124 = phi ptr [ null, %if.then6.i123 ], [ null, %do.body.i121 ], [ %arrayidx.i118, %for.body.i120.vadc_get_channel.exit125_crit_edge ]
  %call26 = call fastcc i32 @vadc_do_conversion(ptr noundef %vadc, ptr noundef %retval.0.i124, ptr noundef nonnull %read_1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %vadc_get_channel.exit125.do.end_crit_edge

vadc_get_channel.exit125.do.end_crit_edge:        ; preds = %vadc_get_channel.exit125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end29:                                         ; preds = %vadc_get_channel.exit125
  %42 = ptrtoint ptr %nchannels.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nchannels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp16.not.i127 = icmp eq i32 %43, 0
  br i1 %cmp16.not.i127, label %if.end29.do.body.i137_crit_edge, label %for.body.lr.ph.i129

if.end29.do.body.i137_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i137

for.body.lr.ph.i129:                              ; preds = %if.end29
  %chan_props.i128 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 4
  %44 = ptrtoint ptr %chan_props.i128 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan_props.i128, align 4
  br label %for.body.i136

for.cond.i132:                                    ; preds = %for.body.i136
  %inc.i130 = add nuw i32 %i.017.i133, 1
  %exitcond.not.i131 = icmp eq i32 %inc.i130, %43
  br i1 %exitcond.not.i131, label %for.cond.i132.do.body.i137_crit_edge, label %for.cond.i132.for.body.i136_crit_edge

for.cond.i132.for.body.i136_crit_edge:            ; preds = %for.cond.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i136

for.cond.i132.do.body.i137_crit_edge:             ; preds = %for.cond.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i137

for.body.i136:                                    ; preds = %for.cond.i132.for.body.i136_crit_edge, %for.body.lr.ph.i129
  %i.017.i133 = phi i32 [ 0, %for.body.lr.ph.i129 ], [ %inc.i130, %for.cond.i132.for.body.i136_crit_edge ]
  %arrayidx.i134 = getelementptr %struct.vadc_channel_prop, ptr %45, i32 %i.017.i133
  %46 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %47)
  %cmp1.i135 = icmp eq i32 %47, 14
  br i1 %cmp1.i135, label %for.body.i136.vadc_get_channel.exit141_crit_edge, label %for.cond.i132

for.body.i136.vadc_get_channel.exit141_crit_edge: ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_get_channel.exit141

do.body.i137:                                     ; preds = %for.cond.i132.do.body.i137_crit_edge, %if.end29.do.body.i137_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_measure_ref_points, %if.then6.i139)) #7
          to label %vadc_get_channel.exit141 [label %if.then6.i139], !srcloc !331

if.then6.i139:                                    ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i138 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i138 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i138, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_channel.__UNIQUE_ID_ddebug191, ptr noundef %49, ptr noundef nonnull @.str.148, i32 noundef 14) #7
  br label %vadc_get_channel.exit141

vadc_get_channel.exit141:                         ; preds = %if.then6.i139, %do.body.i137, %for.body.i136.vadc_get_channel.exit141_crit_edge
  %retval.0.i140 = phi ptr [ null, %if.then6.i139 ], [ null, %do.body.i137 ], [ %arrayidx.i134, %for.body.i136.vadc_get_channel.exit141_crit_edge ]
  %call31 = call fastcc i32 @vadc_do_conversion(ptr noundef %vadc, ptr noundef %retval.0.i140, ptr noundef nonnull %read_2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %vadc_get_channel.exit141.do.end_crit_edge

vadc_get_channel.exit141.do.end_crit_edge:        ; preds = %vadc_get_channel.exit141
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end34:                                         ; preds = %vadc_get_channel.exit141
  %50 = ptrtoint ptr %read_1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %read_1, align 2
  %52 = ptrtoint ptr %read_2 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %read_2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp37 = icmp eq i16 %51, %53
  br i1 %cmp37, label %if.end34.do.end_crit_edge, label %err

if.end34.do.end_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

err:                                              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %conv36 = zext i16 %53 to i32
  %conv35 = zext i16 %51 to i32
  %sub43 = sub nsw i32 %conv35, %conv36
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub43, ptr %arrayidx, align 4
  %gnd50 = getelementptr %struct.vadc_priv, ptr %vadc, i32 0, i32 9, i32 1, i32 2
  %55 = ptrtoint ptr %gnd50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv36, ptr %gnd50, align 4
  br label %if.end53

do.end:                                           ; preds = %if.end34.do.end_crit_edge, %vadc_get_channel.exit141.do.end_crit_edge, %vadc_get_channel.exit125.do.end_crit_edge, %if.end13.do.end_crit_edge, %if.end9.do.end_crit_edge, %vadc_get_channel.exit.do.end_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end34.do.end_crit_edge ], [ -22, %if.end13.do.end_crit_edge ], [ %call31, %vadc_get_channel.exit141.do.end_crit_edge ], [ %call26, %vadc_get_channel.exit125.do.end_crit_edge ], [ %call10, %if.end9.do.end_crit_edge ], [ %call4, %vadc_get_channel.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.149) #10
  br label %if.end53

if.end53:                                         ; preds = %do.end, %err
  %ret.0147 = phi i32 [ %ret.0.ph, %do.end ], [ 0, %err ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read_1) #7
  ret i32 %ret.0147
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
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vadc_get_dt_channel_data(ptr noundef %dev, ptr nocapture noundef %prop, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %chan = alloca i32, align 4
  %value = alloca i32, align 4
  %varr = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chan, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %varr) #7
  %4 = ptrtoint ptr %varr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %varr, align 4, !annotation !329
  %5 = getelementptr inbounds [2 x i32], ptr %varr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !329
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %chan, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %8)
  %cmp = icmp ugt i32 %8, 252
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef %1, i32 noundef %8) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prop, align 4
  %call.i.i124 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.34, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i124)
  %tobool9.not = icmp sgt i32 %call.i.i124, -1
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then10:                                        ; preds = %if.end7
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %call11 = call i32 @qcom_vadc_decimation_from_dt(i32 noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %13, i32 noundef %15) #10
  br label %cleanup

if.end19:                                         ; preds = %if.then10.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %.sink141 = phi i32 [ %call11, %if.then10.if.end19_crit_edge ], [ 0, %if.end7.if.end19_crit_edge ]
  %decimation18 = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 2
  %16 = ptrtoint ptr %decimation18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink141, ptr %decimation18, align 4
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.38, ptr noundef nonnull %varr, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool21.not = icmp sgt i32 %call.i, -1
  br i1 %tobool21.not, label %if.then22, label %if.else33

if.then22:                                        ; preds = %if.end19
  %17 = ptrtoint ptr %varr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %varr, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %21 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %18, label %if.then22.do.end29_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 10, label %land.lhs.true.6.i
  ]

if.then22.do.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

land.lhs.true.i:                                  ; preds = %if.then22
  %22 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %20, label %land.lhs.true.i.do.end29_crit_edge [
    i32 1, label %land.lhs.true.i.if.end37_crit_edge
    i32 3, label %for.end.fold.split.i
    i32 4, label %for.end.fold.split17.i
    i32 6, label %for.end.fold.split18.i
    i32 20, label %for.end.fold.split19.i
    i32 8, label %for.end.fold.split20.i
    i32 10, label %for.end.fold.split21.i
  ]

land.lhs.true.i.if.end37_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true.i.do.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

land.lhs.true.6.i:                                ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %20)
  %cmp5.6.i = icmp eq i32 %20, 81
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.end37_crit_edge, label %land.lhs.true.6.i.do.end29_crit_edge

land.lhs.true.6.i.do.end29_crit_edge:             ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

land.lhs.true.6.i.if.end37_crit_edge:             ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.end.fold.split.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.end.fold.split17.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.end.fold.split18.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.end.fold.split19.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.end.fold.split20.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.end.fold.split21.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end29:                                         ; preds = %land.lhs.true.6.i.do.end29_crit_edge, %land.lhs.true.i.do.end29_crit_edge, %if.then22.do.end29_crit_edge
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chan, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %24, i32 noundef %18, i32 noundef %20) #10
  br label %cleanup

if.else33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prop, align 4
  %prescale_index = getelementptr [253 x %struct.vadc_channels], ptr @vadc_chans, i32 0, i32 %26, i32 1
  %27 = ptrtoint ptr %prescale_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prescale_index, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %for.end.fold.split21.i, %for.end.fold.split20.i, %for.end.fold.split19.i, %for.end.fold.split18.i, %for.end.fold.split17.i, %for.end.fold.split.i, %land.lhs.true.6.i.if.end37_crit_edge, %land.lhs.true.i.if.end37_crit_edge
  %.sink142 = phi i32 [ %28, %if.else33 ], [ 7, %for.end.fold.split21.i ], [ 5, %for.end.fold.split20.i ], [ 4, %for.end.fold.split19.i ], [ 3, %for.end.fold.split18.i ], [ 2, %for.end.fold.split17.i ], [ 1, %for.end.fold.split.i ], [ 0, %land.lhs.true.i.if.end37_crit_edge ], [ 6, %land.lhs.true.6.i.if.end37_crit_edge ]
  %prescale36 = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 3
  %29 = ptrtoint ptr %prescale36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink142, ptr %prescale36, align 4
  %call.i.i125 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.42, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i125)
  %tobool39.not = icmp sgt i32 %call.i.i125, -1
  br i1 %tobool39.not, label %if.then40, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then40:                                        ; preds = %if.end37
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %31)
  %cmp.i = icmp ult i32 %31, 1001
  %.frozen = freeze i32 %31
  %div.i = udiv i32 %.frozen, 100
  %32 = mul i32 %div.i, 100
  %rem.i.decomposed = sub i32 %.frozen, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp ne i32 %rem.i.decomposed, 0
  %33 = and i1 %cmp.i, %tobool.not.i
  br i1 %33, label %if.then40.do.end46_crit_edge, label %lor.lhs.false.i

if.then40.do.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

lor.lhs.false.i:                                  ; preds = %if.then40
  %.frozen145 = freeze i32 %31
  %div7.i = udiv i32 %.frozen145, 2000
  %34 = mul i32 %div7.i, 2000
  %rem3.i.decomposed = sub i32 %.frozen145, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.decomposed)
  %tobool4.not.i = icmp eq i32 %rem3.i.decomposed, 0
  %or.cond16.i = or i1 %cmp.i, %tobool4.not.i
  br i1 %or.cond16.i, label %vadc_hw_settle_time_from_dt.exit, label %lor.lhs.false.i.do.end46_crit_edge

lor.lhs.false.i.do.end46_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

vadc_hw_settle_time_from_dt.exit:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %div7.i, 10
  %value.addr.0.i = select i1 %cmp.i, i32 %div.i, i32 %add.i
  br label %if.end50

do.end46:                                         ; preds = %lor.lhs.false.i.do.end46_crit_edge, %if.then40.do.end46_crit_edge
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %36, i32 noundef %31) #10
  br label %cleanup

if.end50:                                         ; preds = %vadc_hw_settle_time_from_dt.exit, %if.end37.if.end50_crit_edge
  %.sink143 = phi i32 [ %value.addr.0.i, %vadc_hw_settle_time_from_dt.exit ], [ 0, %if.end37.if.end50_crit_edge ]
  %hw_settle_time49 = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 4
  %37 = ptrtoint ptr %hw_settle_time49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink143, ptr %hw_settle_time49, align 4
  %call.i.i127 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.46, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i127)
  %tobool52.not = icmp sgt i32 %call.i.i127, -1
  br i1 %tobool52.not, label %if.then53, label %if.end50.if.end63_crit_edge

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then53:                                        ; preds = %if.end50
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i.i, label %if.then53.do.end59_crit_edge, label %is_power_of_2.exit.i

if.then53.do.end59_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

is_power_of_2.exit.i:                             ; preds = %if.then53
  %40 = call i32 @llvm.ctpop.i32(i32 %39) #7, !range !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp1.i.i = icmp ugt i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %39)
  %cmp.i128 = icmp ugt i32 %39, 512
  %or.cond.i = or i1 %cmp.i128, %cmp1.i.i
  br i1 %or.cond.i, label %is_power_of_2.exit.i.do.end59_crit_edge, label %if.end60

is_power_of_2.exit.i.do.end59_crit_edge:          ; preds = %is_power_of_2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end59:                                         ; preds = %is_power_of_2.exit.i.do.end59_crit_edge, %if.then53.do.end59_crit_edge
  %41 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %42, i32 noundef %39) #10
  br label %cleanup

if.end60:                                         ; preds = %is_power_of_2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = call i32 @llvm.cttz.i32(i32 %39, i1 true) #7, !range !332
  br label %if.end63

if.end63:                                         ; preds = %if.end60, %if.end50.if.end63_crit_edge
  %.sink144 = phi i32 [ %43, %if.end60 ], [ 0, %if.end50.if.end63_crit_edge ]
  %avg_samples62 = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 5
  %44 = ptrtoint ptr %avg_samples62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink144, ptr %avg_samples62, align 4
  %call.i130 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.50, ptr noundef null) #7
  %tobool.i.not = icmp ne ptr %call.i130, null
  %.sink = zext i1 %tobool.i.not to i32
  %45 = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %45, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vadc_get_dt_channel_data.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vadc_get_dt_channel_data, %if.then74)) #7
          to label %cleanup [label %if.then74], !srcloc !331

if.then74:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vadc_get_dt_channel_data.__UNIQUE_ID_ddebug192, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %48, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.end63, %do.end59, %do.end46, %do.end29, %do.end16, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end6 ], [ -22, %do.end59 ], [ -22, %do.end46 ], [ -22, %do.end29 ], [ %call11, %do.end16 ], [ 0, %if.then74 ], [ 0, %if.end63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %varr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_vadc_decimation_from_dt(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vadc_do_conversion(ptr noundef %vadc, ptr nocapture noundef readonly %prop, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vadc, align 4
  %base.i.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop, align 4
  %6 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vadc, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %base.i.i, align 4
  %conv.i50.i = zext i16 %9 to i32
  %add.i51.i = add nuw nsw i32 %conv.i50.i, 72
  %conv2.i.i = and i32 %5, 255
  %call.i52.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add.i51.i, i32 noundef %conv2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool2.not.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end4.i:                                        ; preds = %if.end.i
  %decimation5.i = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 2
  %10 = ptrtoint ptr %decimation5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %decimation5.i, align 4
  %conv6.i = shl i32 %11, 2
  %12 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vadc, align 4
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base.i.i, align 4
  %conv.i54.i = zext i16 %15 to i32
  %add.i55.i = add nuw nsw i32 %conv.i54.i, 80
  %conv2.i56.i = and i32 %conv6.i, 252
  %call.i57.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add.i55.i, i32 noundef %conv2.i56.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %tobool8.not.i = icmp eq i32 %call.i57.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end4.i.unlock_crit_edge

if.end4.i.unlock_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end10.i:                                       ; preds = %if.end4.i
  %hw_settle_time.i = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 4
  %16 = ptrtoint ptr %hw_settle_time.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_settle_time.i, align 4
  %18 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vadc, align 4
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base.i.i, align 4
  %conv.i59.i = zext i16 %21 to i32
  %add.i60.i = add nuw nsw i32 %conv.i59.i, 81
  %conv2.i61.i = and i32 %17, 255
  %call.i62.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add.i60.i, i32 noundef %conv2.i61.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool13.not.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.unlock_crit_edge

if.end10.i.unlock_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end15.i:                                       ; preds = %if.end10.i
  %avg_samples.i = getelementptr inbounds %struct.vadc_channel_prop, ptr %prop, i32 0, i32 5
  %22 = ptrtoint ptr %avg_samples.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %avg_samples.i, align 4
  %24 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vadc, align 4
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base.i.i, align 4
  %conv.i64.i = zext i16 %27 to i32
  %add.i65.i = add nuw nsw i32 %conv.i64.i, 90
  %conv2.i66.i = and i32 %23, 255
  %call.i67.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add.i65.i, i32 noundef %conv2.i66.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool18.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool18.not.i, label %vadc_configure.exit, label %if.end15.i.unlock_crit_edge

if.end15.i.unlock_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

vadc_configure.exit:                              ; preds = %if.end15.i
  %28 = ptrtoint ptr %avg_samples.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %avg_samples.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not.i = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vadc, align 4
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %base.i.i, align 4
  %conv.i73.i = zext i16 %33 to i32
  %add.i74.i = add nuw nsw i32 %conv.i73.i, 91
  %..i = select i1 %tobool22.not.i, i32 0, i32 128
  %call.i71.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %add.i74.i, i32 noundef %..i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool.not = icmp eq i32 %call.i71.i, 0
  br i1 %tobool.not, label %if.end, label %vadc_configure.exit.unlock_crit_edge

vadc_configure.exit.unlock_crit_edge:             ; preds = %vadc_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %vadc_configure.exit
  %poll_eoc = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 7
  %34 = ptrtoint ptr %poll_eoc to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %poll_eoc, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool1.not = icmp eq i8 %35, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %complete = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 8
  %36 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %complete, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %37 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vadc, align 4
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %base.i.i, align 4
  %conv.i.i55 = zext i16 %40 to i32
  %add.i.i56 = add nuw nsw i32 %conv.i.i55, 70
  %call.i.i57 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %add.i.i56, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool5.not = icmp eq i32 %call.i.i57, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.unlock_crit_edge

if.end3.unlock_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %if.end3
  %41 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vadc, align 4
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %base.i.i, align 4
  %conv.i = zext i16 %44 to i32
  %add.i = add nuw nsw i32 %conv.i, 82
  %call.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add.i, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_disable_crit_edge

if.end7.err_disable_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable

if.end11:                                         ; preds = %if.end7
  %45 = ptrtoint ptr %avg_samples.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %avg_samples.i, align 4
  %mul12 = shl i32 4000, %46
  %47 = ptrtoint ptr %poll_eoc to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %poll_eoc, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool14.not = icmp eq i8 %48, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call fastcc i32 @vadc_poll_wait_eoc(ptr noundef %vadc, i32 noundef %mul12)
  br label %if.end26

if.else:                                          ; preds = %if.end11
  %complete17 = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 8
  %call18 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete17, i32 noundef %mul12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else.err_disable_crit_edge, label %if.end21

if.else.err_disable_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable

if.end21:                                         ; preds = %if.else
  %call22 = tail call fastcc i32 @vadc_poll_wait_eoc(ptr noundef %vadc, i32 noundef 2000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.end21.err_disable_crit_edge

if.end21.err_disable_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %if.end21.if.end26_crit_edge, %if.then15
  %49 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vadc, align 4
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %base.i.i, align 4
  %conv.i59 = zext i16 %52 to i32
  %add.i60 = add nuw nsw i32 %conv.i59, 96
  %call.i61 = tail call i32 @regmap_bulk_read(ptr noundef %50, i32 noundef %add.i60, ptr noundef %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i63, label %if.end26.err_disable_crit_edge

if.end26.err_disable_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable

if.end.i63:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %data, align 2
  %55 = tail call i16 @llvm.umax.i16(i16 %54, i16 24576) #7
  %56 = tail call i16 @llvm.umin.i16(i16 %55, i16 -22528) #7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %data, align 2
  br label %err_disable

err_disable:                                      ; preds = %if.end.i63, %if.end26.err_disable_crit_edge, %if.end21.err_disable_crit_edge, %if.else.err_disable_crit_edge, %if.end7.err_disable_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end7.err_disable_crit_edge ], [ %call22, %if.end21.err_disable_crit_edge ], [ -110, %if.else.err_disable_crit_edge ], [ %call.i61, %if.end26.err_disable_crit_edge ], [ 0, %if.end.i63 ]
  %58 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vadc, align 4
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %base.i.i, align 4
  %conv.i.i65 = zext i16 %61 to i32
  %add.i.i66 = add nuw nsw i32 %conv.i.i65, 70
  %call.i.i67 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %add.i.i66, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool29.not = icmp eq i32 %ret.0, 0
  br i1 %tobool29.not, label %err_disable.unlock_crit_edge, label %do.end

err_disable.unlock_crit_edge:                     ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end:                                           ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.151) #10
  br label %unlock

unlock:                                           ; preds = %do.end, %err_disable.unlock_crit_edge, %if.end3.unlock_crit_edge, %vadc_configure.exit.unlock_crit_edge, %if.end15.i.unlock_crit_edge, %if.end10.i.unlock_crit_edge, %if.end4.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.1 = phi i32 [ %call.i71.i, %vadc_configure.exit.unlock_crit_edge ], [ %call.i.i57, %if.end3.unlock_crit_edge ], [ %ret.0, %do.end ], [ 0, %err_disable.unlock_crit_edge ], [ %call.i67.i, %if.end15.i.unlock_crit_edge ], [ %call.i62.i, %if.end10.i.unlock_crit_edge ], [ %call.i57.i, %if.end4.i.unlock_crit_edge ], [ %call.i52.i, %if.end.i.unlock_crit_edge ], [ %call.i.i, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vadc_poll_wait_eoc(ptr nocapture noundef readonly %vadc, i32 noundef %interval_us) unnamed_addr #2 align 64 {
entry:
  %mode.i = alloca i8, align 1
  %sta1.i = alloca i8, align 1
  %chan.i = alloca i8, align 1
  %dig.i = alloca i8, align 1
  %en.i = alloca i8, align 1
  %req.i = alloca i8, align 1
  %sta1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta1) #7
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sta1, align 1, !annotation !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %interval_us)
  %1 = icmp ult i32 %interval_us, 2000
  br i1 %1, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div = udiv i32 %interval_us, 2000
  %base.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %count.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end6.for.body_crit_edge ]
  %2 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vadc, align 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call.i = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %sta1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %sta1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sta1, align 1
  %8 = and i8 %7, 3
  store i8 %8, ptr %sta1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp3 = icmp eq i8 %8, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #7
  %inc = add nuw nsw i32 %count.015, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode.i) #7
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %mode.i, align 1, !annotation !329
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta1.i) #7
  %10 = ptrtoint ptr %sta1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %sta1.i, align 1, !annotation !329
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chan.i) #7
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %chan.i, align 1, !annotation !329
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dig.i) #7
  %12 = ptrtoint ptr %dig.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %dig.i, align 1, !annotation !329
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %en.i) #7
  %13 = ptrtoint ptr %en.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %en.i, align 1, !annotation !329
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req.i) #7
  %14 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %req.i, align 1, !annotation !329
  %15 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vadc, align 4
  %base.i.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %18 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef %add.i.i, ptr noundef nonnull %mode.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.vadc_show_status.exit_crit_edge

for.end.vadc_show_status.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_show_status.exit

if.end.i:                                         ; preds = %for.end
  %19 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vadc, align 4
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %base.i.i, align 4
  %conv.i44.i = zext i16 %22 to i32
  %add.i45.i = add nuw nsw i32 %conv.i44.i, 80
  %call.i46.i = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef %add.i45.i, ptr noundef nonnull %dig.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool2.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.vadc_show_status.exit_crit_edge

if.end.i.vadc_show_status.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_show_status.exit

if.end4.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vadc, align 4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %base.i.i, align 4
  %conv.i48.i = zext i16 %26 to i32
  %add.i49.i = add nuw nsw i32 %conv.i48.i, 72
  %call.i50.i = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef %add.i49.i, ptr noundef nonnull %chan.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool6.not.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.vadc_show_status.exit_crit_edge

if.end4.i.vadc_show_status.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_show_status.exit

if.end8.i:                                        ; preds = %if.end4.i
  %27 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vadc, align 4
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %base.i.i, align 4
  %conv.i52.i = zext i16 %30 to i32
  %add.i53.i = add nuw nsw i32 %conv.i52.i, 82
  %call.i54.i = call i32 @regmap_bulk_read(ptr noundef %28, i32 noundef %add.i53.i, ptr noundef nonnull %req.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool10.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.vadc_show_status.exit_crit_edge

if.end8.i.vadc_show_status.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_show_status.exit

if.end12.i:                                       ; preds = %if.end8.i
  %31 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vadc, align 4
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %base.i.i, align 4
  %conv.i56.i = zext i16 %34 to i32
  %add.i57.i = add nuw nsw i32 %conv.i56.i, 8
  %call.i58.i = call i32 @regmap_bulk_read(ptr noundef %32, i32 noundef %add.i57.i, ptr noundef nonnull %sta1.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool14.not.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.vadc_show_status.exit_crit_edge

if.end12.i.vadc_show_status.exit_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_show_status.exit

if.end16.i:                                       ; preds = %if.end12.i
  %35 = ptrtoint ptr %vadc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vadc, align 4
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %base.i.i, align 4
  %conv.i60.i = zext i16 %38 to i32
  %add.i61.i = add nuw nsw i32 %conv.i60.i, 70
  %call.i62.i = call i32 @regmap_bulk_read(ptr noundef %36, i32 noundef %add.i61.i, ptr noundef nonnull %en.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool18.not.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool18.not.i, label %do.end.i, label %if.end16.i.vadc_show_status.exit_crit_edge

if.end16.i.vadc_show_status.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vadc_show_status.exit

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.vadc_priv, ptr %vadc, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mode.i, align 1
  %conv.i13 = zext i8 %42 to i32
  %43 = ptrtoint ptr %en.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %en.i, align 1
  %conv21.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %chan.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %chan.i, align 1
  %conv22.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %dig.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dig.i, align 1
  %conv23.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %req.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %req.i, align 1
  %conv24.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sta1.i, align 1
  %conv25.i = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.153, i32 noundef %conv.i13, i32 noundef %conv21.i, i32 noundef %conv22.i, i32 noundef %conv23.i, i32 noundef %conv24.i, i32 noundef %conv25.i) #10
  br label %vadc_show_status.exit

vadc_show_status.exit:                            ; preds = %do.end.i, %if.end16.i.vadc_show_status.exit_crit_edge, %if.end12.i.vadc_show_status.exit_crit_edge, %if.end8.i.vadc_show_status.exit_crit_edge, %if.end4.i.vadc_show_status.exit_crit_edge, %if.end.i.vadc_show_status.exit_crit_edge, %for.end.vadc_show_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %en.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dig.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chan.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i) #7
  br label %cleanup

cleanup:                                          ; preds = %vadc_show_status.exit, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %vadc_show_status.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_code = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_code) #7
  %2 = ptrtoint ptr %adc_code to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %adc_code, align 2, !annotation !329
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %chan_props = getelementptr inbounds %struct.vadc_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %chan_props to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_props, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %arrayidx = getelementptr %struct.vadc_channel_prop, ptr %5, i32 %7
  %call1 = call fastcc i32 @vadc_do_conversion(ptr noundef %1, ptr noundef %arrayidx, ptr noundef nonnull %adc_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %scale_fn_type = getelementptr %struct.vadc_channel_prop, ptr %5, i32 %7, i32 6
  %8 = ptrtoint ptr %scale_fn_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scale_fn_type, align 4
  %calibration = getelementptr %struct.vadc_channel_prop, ptr %5, i32 %7, i32 1
  %10 = ptrtoint ptr %calibration to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %calibration, align 4
  %arrayidx2 = getelementptr %struct.vadc_priv, ptr %1, i32 0, i32 9, i32 %11
  %prescale = getelementptr %struct.vadc_channel_prop, ptr %5, i32 %7, i32 3
  %12 = ptrtoint ptr %prescale to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prescale, align 4
  %arrayidx3 = getelementptr [8 x %struct.vadc_prescale_ratio], ptr @vadc_prescale_ratios, i32 0, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %14 = ptrtoint ptr %adc_code to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %adc_code, align 2
  %call5 = call i32 @qcom_vadc_scale(i32 noundef %9, ptr noundef %arrayidx2, ptr noundef %arrayidx3, i1 noundef zeroext %cmp, i16 noundef zeroext %15, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %chan_props10 = getelementptr inbounds %struct.vadc_priv, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %chan_props10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_props10, align 4
  %address11 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %18 = ptrtoint ptr %address11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %address11, align 4
  %arrayidx12 = getelementptr %struct.vadc_channel_prop, ptr %17, i32 %19
  %call13 = call fastcc i32 @vadc_do_conversion(ptr noundef %1, ptr noundef %arrayidx12, ptr noundef nonnull %adc_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %adc_code to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %adc_code, align 2
  %conv = zext i16 %21 to i32
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call13, %sw.bb9.sw.epilog_crit_edge ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ %call5, %if.end.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end16, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 1, %if.end16 ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_code) #7
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @vadc_of_xlate(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %iiospec) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %nchannels = getelementptr inbounds %struct.vadc_priv, ptr %1, i32 0, i32 3
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
  %iio_chans = getelementptr inbounds %struct.vadc_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %iio_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iio_chans, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %iiospec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %channel = getelementptr %struct.iio_chan_spec, ptr %5, i32 %i.09, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_vadc_scale(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__initcall__kmod_qcom_spmi_vadc__193_931_vadc_driver_init6, !1, !"__initcall__kmod_qcom_spmi_vadc__193_931_vadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 931, i32 1}
!2 = !{ptr @__exitcall_vadc_driver_exit, !1, !"__exitcall_vadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias194, !4, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 933, i32 1}
!5 = !{ptr @__UNIQUE_ID_description195, !6, !"__UNIQUE_ID_description195", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 934, i32 1}
!7 = !{ptr @__UNIQUE_ID_file196, !8, !"__UNIQUE_ID_file196", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 935, i32 1}
!9 = !{ptr @__UNIQUE_ID_license197, !8, !"__UNIQUE_ID_license197", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author198, !11, !"__UNIQUE_ID_author198", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 936, i32 1}
!12 = !{ptr @__UNIQUE_ID_author199, !13, !"__UNIQUE_ID_author199", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 937, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 926, i32 14}
!16 = !{ptr @vadc_driver, !17, !"vadc_driver", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 924, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 863, i32 35}
!20 = !{ptr @vadc_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 877, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 894, i32 12}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 901, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vadc_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @vadc_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @init_completion.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/completion.h", i32 87, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 824, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vadc_check_revision._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @vadc_check_revision._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 833, i32 3}
!43 = !{ptr @vadc_check_revision._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vadc_check_revision._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 842, i32 3}
!47 = !{ptr @vadc_check_revision._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vadc_check_revision._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 783, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vadc_get_dt_data._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @vadc_get_dt_data._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 788, i32 3}
!56 = !{ptr @vadc_get_dt_data._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vadc_get_dt_data._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 793, i32 3}
!60 = !{ptr @vadc_get_dt_data._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vadc_get_dt_data._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 798, i32 3}
!64 = !{ptr @vadc_get_dt_data._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @vadc_get_dt_data._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 660, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vadc_get_dt_channel_data._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @vadc_get_dt_channel_data._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 665, i32 3}
!73 = !{ptr @vadc_get_dt_channel_data._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vadc_get_dt_channel_data._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 672, i32 35}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 676, i32 4}
!79 = !{ptr @vadc_get_dt_channel_data._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @vadc_get_dt_channel_data._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 685, i32 41}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 689, i32 4}
!85 = !{ptr @vadc_get_dt_channel_data._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @vadc_get_dt_channel_data._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 698, i32 35}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 702, i32 4}
!91 = !{ptr @vadc_get_dt_channel_data._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @vadc_get_dt_channel_data._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 711, i32 35}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 715, i32 4}
!97 = !{ptr @vadc_get_dt_channel_data._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @vadc_get_dt_channel_data._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 724, i32 34}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 729, i32 2}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @vadc_get_dt_channel_data.__UNIQUE_ID_ddebug192, !102, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!105 = !{ptr @vadc_prescale_ratios, !106, !"vadc_prescale_ratios", i1 false, i1 false}
!106 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 125, i32 41}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 548, i32 2}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 549, i32 2}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 550, i32 2}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 551, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 552, i32 2}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 553, i32 2}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 554, i32 2}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 555, i32 2}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 556, i32 2}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 557, i32 2}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 558, i32 2}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 559, i32 2}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 560, i32 2}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 561, i32 2}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 562, i32 2}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 563, i32 2}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 565, i32 2}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 566, i32 2}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 567, i32 2}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 568, i32 2}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 569, i32 2}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 570, i32 2}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 571, i32 2}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 572, i32 2}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 573, i32 2}
!157 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 574, i32 2}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 575, i32 2}
!161 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 576, i32 2}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 577, i32 2}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 578, i32 2}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 579, i32 2}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 580, i32 2}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 582, i32 2}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 583, i32 2}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 584, i32 2}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 585, i32 2}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 586, i32 2}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 587, i32 2}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 588, i32 2}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 589, i32 2}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 590, i32 2}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 591, i32 2}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 592, i32 2}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 593, i32 2}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 594, i32 2}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 595, i32 2}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 596, i32 2}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 597, i32 2}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 599, i32 2}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 600, i32 2}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 601, i32 2}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 602, i32 2}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 603, i32 2}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 604, i32 2}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 605, i32 2}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 606, i32 2}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 607, i32 2}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 608, i32 2}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 609, i32 2}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 610, i32 2}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 611, i32 2}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 613, i32 2}
!231 = !{ptr @.str.115, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 614, i32 2}
!233 = !{ptr @.str.116, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 615, i32 2}
!235 = !{ptr @.str.117, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 616, i32 2}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 617, i32 2}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 618, i32 2}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 619, i32 2}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 620, i32 2}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 621, i32 2}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 622, i32 2}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 623, i32 2}
!251 = !{ptr @.str.125, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 625, i32 2}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 626, i32 2}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 627, i32 2}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 628, i32 2}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 629, i32 2}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 630, i32 2}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 631, i32 2}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 632, i32 2}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 633, i32 2}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 634, i32 2}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 635, i32 2}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 637, i32 2}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 638, i32 2}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 639, i32 2}
!279 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 640, i32 2}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 641, i32 2}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 642, i32 2}
!285 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 643, i32 2}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 644, i32 2}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 645, i32 2}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 646, i32 2}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 647, i32 2}
!295 = !{ptr @vadc_chans, !296, !"vadc_chans", i1 false, i1 false}
!296 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 547, i32 35}
!297 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 295, i32 2}
!299 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @vadc_get_channel.__UNIQUE_ID_ddebug191, !298, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!301 = !{ptr @.str.149, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 402, i32 3}
!303 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @vadc_measure_ref_points._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @vadc_measure_ref_points._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.151, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 345, i32 3}
!308 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @vadc_do_conversion._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @vadc_do_conversion._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.153, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 202, i32 2}
!313 = !{ptr @.str.154, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @vadc_show_status._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @vadc_show_status._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @vadc_info, !317, !"vadc_info", i1 false, i1 false}
!317 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 497, i32 30}
!318 = !{ptr @vadc_match_table, !319, !"vadc_match_table", i1 false, i1 false}
!319 = !{!"../drivers/iio/adc/qcom-spmi-vadc.c", i32 918, i32 34}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{!"auto-init"}
!330 = !{!"branch_weights", i32 1, i32 2000}
!331 = !{i64 2148821641, i64 2148821646, i64 2148821659, i64 2148821703, i64 2148821737, i64 2148821758}
!332 = !{i32 0, i32 33}
!333 = !{i8 0, i8 2}
