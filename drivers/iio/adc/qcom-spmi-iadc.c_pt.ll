; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/qcom-spmi-iadc.c_pt.bc'
source_filename = "../drivers/iio/adc/qcom-spmi-iadc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iadc_chip = type { ptr, ptr, i16, i8, [2 x i32], [2 x i16], i16, %struct.mutex, %struct.completion }

@__initcall__kmod_qcom_spmi_iadc__189_580_iadc_driver_init6 = internal global ptr @iadc_driver_init, section ".initcall6.init", align 4
@iadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iadc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iadc_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iadc_driver_exit = internal global ptr @iadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias190 = internal constant [45 x i8] c"qcom_spmi_iadc.alias=platform:qcom-spmi-iadc\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [65 x i8] c"qcom_spmi_iadc.description=Qualcomm SPMI PMIC current ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [51 x i8] c"qcom_spmi_iadc.file=drivers/iio/adc/qcom-spmi-iadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [30 x i8] c"qcom_spmi_iadc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [58 x i8] c"qcom_spmi_iadc.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-spmi-iadc\00", [17 x i8] zeroinitializer }, align 32
@iadc_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-iadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&iadc->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@iadc_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_spmi_iadc\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iadc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/adc/qcom-spmi-iadc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sense resistors %d and %d micro Ohm\0A\00", [59 x i8] zeroinitializer }, align 32
@iadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 535, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iadc_probe._entry_ptr = internal global ptr @iadc_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spmi-iadc\00", [22 x i8] zeroinitializer }, align 32
@iadc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 552, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed offset calibration\0A\00", [37 x i8] zeroinitializer }, align 32
@iadc_probe._entry_ptr.13 = internal global ptr @iadc_probe._entry.11, section ".printk_index", align 4
@iadc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @iadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iadc_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.37, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.38, i8 64 }], [48 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@iadc_version_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 405, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d is not ADC\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iadc_version_check\00", [45 x i8] zeroinitializer }, align 32
@iadc_version_check._entry_ptr = internal global ptr @iadc_version_check._entry, section ".printk_index", align 4
@iadc_version_check._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 414, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%d is not IADC\0A\00", [16 x i8] zeroinitializer }, align 32
@iadc_version_check._entry_ptr.19 = internal global ptr @iadc_version_check._entry.17, section ".printk_index", align 4
@iadc_version_check._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.5, i32 423, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"revision %d not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@iadc_version_check._entry_ptr.22 = internal global ptr @iadc_version_check._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qcom,external-resistor-micro-ohms\00", [62 x i8] zeroinitializer }, align 32
@iadc_rsense_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 441, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"external resistor can't be zero Ohms\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iadc_rsense_read\00", [47 x i8] zeroinitializer }, align 32
@iadc_rsense_read._entry_ptr = internal global ptr @iadc_rsense_read._entry, section ".printk_index", align 4
@iadc_update_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: internal offset == gain %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iadc_update_offset\00", [45 x i8] zeroinitializer }, align 32
@iadc_update_offset._entry_ptr = internal global ptr @iadc_update_offset._entry, section ".printk_index", align 4
@iadc_update_offset._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 388, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: external offset == gain %d\0A\00", [61 x i8] zeroinitializer }, align 32
@iadc_update_offset._entry_ptr.30 = internal global ptr @iadc_update_offset._entry.28, section ".printk_index", align 4
@iadc_do_conversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 305, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"conversion failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iadc_do_conversion\00", [45 x i8] zeroinitializer }, align 32
@iadc_do_conversion._entry_ptr = internal global ptr @iadc_do_conversion._entry, section ".printk_index", align 4
@iadc_status_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 194, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mode:%02x en:%02x chan:%02x dig:%02x req:%02x sta1:%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iadc_status_show\00", [47 x i8] zeroinitializer }, align 32
@iadc_status_show._entry_ptr = internal global ptr @iadc_status_show._entry, section ".printk_index", align 4
@iadc_read_raw.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iadc_read_raw\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"off %d gain %d adc %d %duV I %duA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTERNAL_RSENSE\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXTERNAL_RSENSE\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"iadc_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 572, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 574, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"iadc_match_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 565, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 506, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 508, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 522, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 535, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 541, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 552, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"iadc_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 349, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"iadc_channels\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 466, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 87, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 405, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 414, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 423, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 435, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 441, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 376, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 387, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 305, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 192, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 334, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 469, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [36 x i8] c"../drivers/iio/adc/qcom-spmi-iadc.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 477, i32 21 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_iadc_driver_exit, ptr @__initcall__kmod_qcom_spmi_iadc__189_580_iadc_driver_init6, ptr @iadc_do_conversion._entry, ptr @iadc_do_conversion._entry_ptr, ptr @iadc_driver_exit, ptr @iadc_probe._entry, ptr @iadc_probe._entry.11, ptr @iadc_probe._entry_ptr, ptr @iadc_probe._entry_ptr.13, ptr @iadc_rsense_read._entry, ptr @iadc_rsense_read._entry_ptr, ptr @iadc_status_show._entry, ptr @iadc_status_show._entry_ptr, ptr @iadc_update_offset._entry, ptr @iadc_update_offset._entry.28, ptr @iadc_update_offset._entry_ptr, ptr @iadc_update_offset._entry_ptr.30, ptr @iadc_version_check._entry, ptr @iadc_version_check._entry.17, ptr @iadc_version_check._entry.20, ptr @iadc_version_check._entry_ptr, ptr @iadc_version_check._entry_ptr.19, ptr @iadc_version_check._entry_ptr.22, ptr @iadc_driver, ptr @.str, ptr @iadc_match_table, ptr @iadc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @iadc_info, ptr @iadc_channels, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_version_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_version_check._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_version_check._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_rsense_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_update_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_update_offset._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_do_conversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iadc_status_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iadc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @iadc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i.i139 = alloca i32, align 4
  %val.i.i127 = alloca i32, align 4
  %val.i57.i = alloca i32, align 4
  %val.i47.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %res, align 4, !annotation !104
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 176) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %dev4 = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev4, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call5 = tail call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #5
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %4, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %complete = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #5
  %lock = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @iadc_probe.__key) #5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %res, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res, align 4
  %conv = trunc i32 %11 to i16
  %base = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i.i, align 4, !annotation !104
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %conv.i.i = and i32 %11, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call.i.i125 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp.i.i = icmp slt i32 %call.i.i125, 0
  br i1 %cmp.i.i, label %iadc_read.exit.thread.i, label %if.end.i

iadc_read.exit.thread.i:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %18 = and i32 %17, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i = icmp eq i32 %18, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = and i32 %17, 255
  %19 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %conv.i) #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i47.i) #5
  %21 = ptrtoint ptr %val.i47.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i47.i, align 4, !annotation !104
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %base, align 4
  %conv.i49.i = zext i16 %25 to i32
  %add.i50.i = add nuw nsw i32 %conv.i49.i, 5
  %call.i51.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %add.i50.i, ptr noundef nonnull %val.i47.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %iadc_read.exit56.thread.i, label %if.end10.i

iadc_read.exit56.thread.i:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i47.i) #5
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i
  %26 = ptrtoint ptr %val.i47.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i47.i, align 4
  %conv3.i53.i = trunc i32 %27 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i47.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv3.i53.i)
  %cmp12.i = icmp ult i8 %conv3.i53.i, 3
  br i1 %cmp12.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.i = and i32 %27, 255
  %28 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef %conv11.i) #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i57.i) #5
  %30 = ptrtoint ptr %val.i57.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i57.i, align 4, !annotation !104
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %4, align 4
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %base, align 4
  %conv.i59.i = zext i16 %34 to i32
  %add.i60.i = add nuw nsw i32 %conv.i59.i, 1
  %call.i61.i = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i60.i, ptr noundef nonnull %val.i57.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp.i62.i = icmp slt i32 %call.i61.i, 0
  br i1 %cmp.i62.i, label %iadc_read.exit66.thread.i, label %if.end25.i

iadc_read.exit66.thread.i:                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i57.i) #5
  br label %cleanup

if.end25.i:                                       ; preds = %if.end20.i
  %35 = ptrtoint ptr %val.i57.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i57.i, align 4
  %conv3.i63.i = trunc i32 %36 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i57.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i63.i)
  %cmp27.i = icmp eq i8 %conv3.i63.i, 0
  br i1 %cmp27.i, label %do.end32.i, label %if.end17

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef 0) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end25.i
  %rsense.i = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.iadc_chip, ptr %4, i32 0, i32 4, i32 1
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i128

if.end.thread.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10000, ptr %arrayidx.i, align 4
  br label %if.end6.i

if.end.i128:                                      ; preds = %if.end17
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr.i = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i, label %do.end.i130, label %if.end.i128.if.end6.i_crit_edge

if.end.i128.if.end6.i_crit_edge:                  ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

do.end.i130:                                      ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i128.if.end6.i_crit_edge, %if.end.thread.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i127) #5
  %43 = ptrtoint ptr %val.i.i127 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i.i127, align 4, !annotation !104
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %base, align 4
  %conv.i.i132 = zext i16 %47 to i32
  %add.i.i133 = add nuw nsw i32 %conv.i.i132, 244
  %call.i.i134 = call i32 @regmap_read(ptr noundef %45, i32 noundef %add.i.i133, ptr noundef nonnull %val.i.i127) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %cmp.i.i135 = icmp slt i32 %call.i.i134, 0
  br i1 %cmp.i.i135, label %iadc_read.exit.thread.i136, label %do.body23

iadc_read.exit.thread.i136:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i127) #5
  br label %cleanup

do.body23:                                        ; preds = %if.end6.i
  %48 = ptrtoint ptr %val.i.i127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i.i127, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i127) #5
  %and13.i = and i32 %49, 127
  %50 = sub nsw i32 0, %and13.i
  %51 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool11.not31.not.i = icmp eq i32 %51, 0
  %52 = select i1 %tobool11.not31.not.i, i32 %and13.i, i32 %50
  %mul16.i = mul nsw i32 %52, 15625
  %add.i = add nsw i32 %mul16.i, 10000000
  %div36.i = udiv i32 %add.i, 1000
  %53 = ptrtoint ptr %rsense.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div36.i, ptr %rsense.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iadc_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iadc_probe, %if.then28)) #5
          to label %do.end34 [label %if.then28], !srcloc !105

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev4, align 4
  %56 = ptrtoint ptr %rsense.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rsense.i, align 4
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iadc_probe.__UNIQUE_ID_ddebug188, ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef %57, i32 noundef %59) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body23
  %call35 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call35)
  %cmp36 = icmp eq i32 %call35, -517
  br i1 %cmp36, label %do.end34.cleanup_crit_edge, label %if.end39

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp40 = icmp slt i32 %call35, 0
  br i1 %cmp40, label %if.then42, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %poll_eoc = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 3
  %60 = ptrtoint ptr %poll_eoc to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %poll_eoc, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %4, align 4
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %base, align 4
  %conv.i.i141 = zext i16 %64 to i32
  %add.i.i142 = add nuw nsw i32 %conv.i.i141, 208
  %call.i.i143 = call i32 @regmap_write(ptr noundef %62, i32 noundef %add.i.i142, i32 noundef 165) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %cmp.i144 = icmp slt i32 %call.i.i143, 0
  br i1 %cmp.i144, label %if.end43.do.end50_crit_edge, label %if.end.i146

if.end43.do.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.end.i146:                                      ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i139) #5
  %65 = ptrtoint ptr %val.i.i139 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %val.i.i139, align 4, !annotation !104
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %4, align 4
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %base, align 4
  %conv.i21.i = zext i16 %69 to i32
  %add.i22.i = add nuw nsw i32 %conv.i21.i, 218
  %call.i23.i = call i32 @regmap_read(ptr noundef %67, i32 noundef %add.i22.i, ptr noundef nonnull %val.i.i139) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp.i.i145 = icmp slt i32 %call.i23.i, 0
  br i1 %cmp.i.i145, label %iadc_read.exit.thread.i147, label %if.end4.i

iadc_read.exit.thread.i147:                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i139) #5
  br label %do.end50

if.end4.i:                                        ; preds = %if.end.i146
  %70 = ptrtoint ptr %val.i.i139 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i.i139, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i139) #5
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %4, align 4
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %base, align 4
  %conv.i25.i = zext i16 %75 to i32
  %add.i26.i = add nuw nsw i32 %conv.i25.i, 208
  %call.i27.i = call i32 @regmap_write(ptr noundef %73, i32 noundef %add.i26.i, i32 noundef 165) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp6.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp6.i, label %if.end4.i.do.end50_crit_edge, label %iadc_reset.exit

if.end4.i.do.end50_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

iadc_reset.exit:                                  ; preds = %if.end4.i
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %4, align 4
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %base, align 4
  %conv.i29.i = zext i16 %79 to i32
  %add.i30.i = add nuw nsw i32 %conv.i29.i, 218
  %80 = and i32 %71, 251
  %conv2.i.i = or i32 %80, 4
  %call.i31.i = call i32 @regmap_write(ptr noundef %77, i32 noundef %add.i30.i, i32 noundef %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp45 = icmp slt i32 %call.i31.i, 0
  br i1 %cmp45, label %iadc_reset.exit.do.end50_crit_edge, label %if.end51

iadc_reset.exit.do.end50_crit_edge:               ; preds = %iadc_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

do.end50:                                         ; preds = %iadc_reset.exit.do.end50_crit_edge, %if.end4.i.do.end50_crit_edge, %iadc_read.exit.thread.i147, %if.end43.do.end50_crit_edge
  %retval.0.i148164 = phi i32 [ %call.i31.i, %iadc_reset.exit.do.end50_crit_edge ], [ %call.i23.i, %iadc_read.exit.thread.i147 ], [ %call.i27.i, %if.end4.i.do.end50_crit_edge ], [ %call.i.i143, %if.end43.do.end50_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end51:                                         ; preds = %iadc_reset.exit
  %poll_eoc52 = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 3
  %81 = ptrtoint ptr %poll_eoc52 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %poll_eoc52, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool53.not = icmp eq i8 %82, 0
  br i1 %tobool53.not, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.end51
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call35, ptr noundef nonnull @iadc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.then57, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %call.i149 = call i32 @irq_set_irq_wake(i32 noundef %call35, i32 noundef 1) #5
  br label %if.end63

if.else60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev4, align 4
  %call62 = call i32 @device_init_wakeup(ptr noundef %84, i1 noundef zeroext true) #5
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %if.then57
  %gain.i = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 6
  %call.i150 = call fastcc i32 @iadc_do_conversion(ptr noundef %4, i32 noundef 3, ptr noundef %gain.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp.i151 = icmp slt i32 %call.i150, 0
  br i1 %cmp.i151, label %if.end63.do.end70_crit_edge, label %if.end.i152

if.end63.do.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

if.end.i152:                                      ; preds = %if.end63
  %offset.i = getelementptr inbounds %struct.iadc_chip, ptr %4, i32 0, i32 5
  %call1.i = call fastcc i32 @iadc_do_conversion(ptr noundef %4, i32 noundef 6, ptr noundef %offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i152.do.end70_crit_edge, label %if.end4.i153

if.end.i152.do.end70_crit_edge:                   ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

if.end4.i153:                                     ; preds = %if.end.i152
  %85 = ptrtoint ptr %gain.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %gain.i, align 4
  %87 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %88)
  %cmp9.i = icmp eq i16 %86, %88
  br i1 %cmp9.i, label %if.end4.i153.cleanup.sink.split.i_crit_edge, label %if.end14.i

if.end4.i153.cleanup.sink.split.i_crit_edge:      ; preds = %if.end4.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end14.i:                                       ; preds = %if.end4.i153
  %arrayidx16.i = getelementptr %struct.iadc_chip, ptr %4, i32 0, i32 5, i32 1
  %call17.i = call fastcc i32 @iadc_do_conversion(ptr noundef %4, i32 noundef 5, ptr noundef %arrayidx16.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end14.i.do.end70_crit_edge, label %if.end21.i

if.end14.i.do.end70_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

if.end21.i:                                       ; preds = %if.end14.i
  %89 = ptrtoint ptr %gain.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %gain.i, align 4
  %91 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx16.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %92)
  %cmp27.i154 = icmp eq i16 %90, %92
  br i1 %cmp27.i154, label %if.end21.i.cleanup.sink.split.i_crit_edge, label %if.end71

if.end21.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end21.i.cleanup.sink.split.i_crit_edge, %if.end4.i153.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i16 [ %86, %if.end4.i153.cleanup.sink.split.i_crit_edge ], [ %90, %if.end21.i.cleanup.sink.split.i_crit_edge ]
  %.str.29.sink.i = phi ptr [ @.str.26, %if.end4.i153.cleanup.sink.split.i_crit_edge ], [ @.str.29, %if.end21.i.cleanup.sink.split.i_crit_edge ]
  %conv23.i = zext i16 %.sink.i to i32
  %93 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull %.str.29.sink.i, i32 noundef %conv23.i) #8
  br label %do.end70

do.end70:                                         ; preds = %cleanup.sink.split.i, %if.end14.i.do.end70_crit_edge, %if.end.i152.do.end70_crit_edge, %if.end63.do.end70_crit_edge
  %retval.0.i156.ph = phi i32 [ -22, %cleanup.sink.split.i ], [ %call17.i, %if.end14.i.do.end70_crit_edge ], [ %call1.i, %if.end.i152.do.end70_crit_edge ], [ %call.i150, %if.end63.do.end70_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end71:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev, align 8
  %name72 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %97 = ptrtoint ptr %name72 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %name72, align 8
  %98 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %99 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @iadc_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %100 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @iadc_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %101 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %num_channels, align 4
  %call73 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end70, %if.then54.cleanup_crit_edge, %do.end50, %do.end34.cleanup_crit_edge, %iadc_read.exit.thread.i136, %do.end.i130, %do.end32.i, %iadc_read.exit66.thread.i, %do.end17.i, %iadc_read.exit56.thread.i, %do.end.i, %iadc_read.exit.thread.i, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i148164, %do.end50 ], [ %retval.0.i156.ph, %do.end70 ], [ %call73, %if.end71 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ -517, %do.end34.cleanup_crit_edge ], [ %call.i, %if.then54.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end17.i ], [ -19, %do.end32.i ], [ -19, %iadc_read.exit.thread.i ], [ -19, %iadc_read.exit56.thread.i ], [ -19, %iadc_read.exit66.thread.i ], [ -19, %do.end.i130 ], [ -19, %iadc_read.exit.thread.i136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iadc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.iadc_chip, ptr %dev_id, i32 0, i32 8
  tail call void @complete(ptr noundef %complete) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iadc_do_conversion(ptr noundef %iadc, i32 noundef %chan, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iadc, align 4
  %base.i.i = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i31 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i31, label %entry.exit_crit_edge, label %if.end.i

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iadc, align 4
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %base.i.i, align 4
  %conv.i59.i = zext i16 %7 to i32
  %add.i60.i = add nuw nsw i32 %conv.i59.i, 72
  %conv2.i.i = and i32 %chan, 255
  %call.i61.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add.i60.i, i32 noundef %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp2.i = icmp slt i32 %call.i61.i, 0
  br i1 %cmp2.i, label %if.end.i.exit_crit_edge, label %if.end5.i

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iadc, align 4
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %base.i.i, align 4
  %conv.i63.i = zext i16 %11 to i32
  %add.i64.i = add nuw nsw i32 %conv.i63.i, 80
  %call.i65.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %add.i64.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %cmp7.i = icmp slt i32 %call.i65.i, 0
  br i1 %cmp7.i, label %if.end5.i.exit_crit_edge, label %if.end10.i

if.end5.i.exit_crit_edge:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end10.i:                                       ; preds = %if.end5.i
  %12 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iadc, align 4
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base.i.i, align 4
  %conv.i67.i = zext i16 %15 to i32
  %add.i68.i = add nuw nsw i32 %conv.i67.i, 81
  %call.i69.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add.i68.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp12.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp12.i, label %if.end10.i.exit_crit_edge, label %if.end15.i

if.end10.i.exit_crit_edge:                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end15.i:                                       ; preds = %if.end10.i
  %16 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iadc, align 4
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %base.i.i, align 4
  %conv.i71.i = zext i16 %19 to i32
  %add.i72.i = add nuw nsw i32 %conv.i71.i, 90
  %call.i73.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add.i72.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp17.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp17.i, label %if.end15.i.exit_crit_edge, label %if.end20.i

if.end15.i.exit_crit_edge:                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end20.i:                                       ; preds = %if.end15.i
  %20 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iadc, align 4
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base.i.i, align 4
  %conv.i75.i = zext i16 %23 to i32
  %add.i76.i = add nuw nsw i32 %conv.i75.i, 91
  %call.i77.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add.i76.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %cmp22.i = icmp slt i32 %call.i77.i, 0
  br i1 %cmp22.i, label %if.end20.i.exit_crit_edge, label %if.end25.i

if.end20.i.exit_crit_edge:                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end25.i:                                       ; preds = %if.end20.i
  %poll_eoc.i = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 3
  %24 = ptrtoint ptr %poll_eoc.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %poll_eoc.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then26.i, label %if.end25.i.if.end27.i_crit_edge

if.end25.i.if.end27.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %complete.i = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 8
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %complete.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end25.i.if.end27.i_crit_edge
  %27 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iadc, align 4
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %base.i.i, align 4
  %conv.i.i.i = zext i16 %30 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 70
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %add.i.i.i, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp29.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp29.i, label %if.end27.i.exit_crit_edge, label %iadc_configure.exit

if.end27.i.exit_crit_edge:                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

iadc_configure.exit:                              ; preds = %if.end27.i
  %31 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iadc, align 4
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %base.i.i, align 4
  %conv.i79.i = zext i16 %34 to i32
  %add.i80.i = add nuw nsw i32 %conv.i79.i, 82
  %call.i81.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %add.i80.i, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp = icmp slt i32 %call.i81.i, 0
  br i1 %cmp, label %iadc_configure.exit.exit_crit_edge, label %if.end

iadc_configure.exit.exit_crit_edge:               ; preds = %iadc_configure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %iadc_configure.exit
  %35 = ptrtoint ptr %poll_eoc.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %poll_eoc.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else:                                          ; preds = %if.end
  %complete = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 8
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 4000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef %spec.select.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.exit_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.sink = phi i32 [ 4000, %if.end.if.end10_crit_edge ], [ 2000, %if.else.if.end10_crit_edge ]
  %call8 = tail call fastcc i32 @iadc_poll_wait_eoc(ptr noundef %iadc, i32 noundef %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool11.not = icmp eq i32 %call8, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.exit_crit_edge

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iadc, align 4
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %base.i.i, align 4
  %conv.i = zext i16 %40 to i32
  %add.i = add nuw nsw i32 %conv.i, 96
  %call.i32 = tail call i32 @regmap_bulk_read(ptr noundef %38, i32 noundef %add.i, ptr noundef %data, i32 noundef 2) #5
  br label %exit

exit:                                             ; preds = %if.then12, %if.end10.exit_crit_edge, %if.else.exit_crit_edge, %iadc_configure.exit.exit_crit_edge, %if.end27.i.exit_crit_edge, %if.end20.i.exit_crit_edge, %if.end15.i.exit_crit_edge, %if.end10.i.exit_crit_edge, %if.end5.i.exit_crit_edge, %if.end.i.exit_crit_edge, %entry.exit_crit_edge
  %ret.1 = phi i32 [ %call.i81.i, %iadc_configure.exit.exit_crit_edge ], [ %call8, %if.end10.exit_crit_edge ], [ %call.i32, %if.then12 ], [ %call.i.i.i, %if.end27.i.exit_crit_edge ], [ %call.i77.i, %if.end20.i.exit_crit_edge ], [ %call.i73.i, %if.end15.i.exit_crit_edge ], [ %call.i69.i, %if.end10.i.exit_crit_edge ], [ %call.i65.i, %if.end5.i.exit_crit_edge ], [ %call.i61.i, %if.end.i.exit_crit_edge ], [ %call.i.i, %entry.exit_crit_edge ], [ -110, %if.else.exit_crit_edge ]
  %41 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iadc, align 4
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %base.i.i, align 4
  %conv.i.i34 = zext i16 %44 to i32
  %add.i.i35 = add nuw nsw i32 %conv.i.i34, 70
  %call.i.i36 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add.i.i35, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp16 = icmp slt i32 %ret.1, 0
  br i1 %cmp16, label %do.end, label %exit.if.end18_crit_edge

exit.if.end18_crit_edge:                          ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 1
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.31) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %exit.if.end18_crit_edge
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iadc_poll_wait_eoc(ptr nocapture noundef readonly %iadc, i32 noundef %interval_us) unnamed_addr #2 align 64 {
entry:
  %val.i83.i = alloca i32, align 4
  %val.i73.i = alloca i32, align 4
  %val.i63.i = alloca i32, align 4
  %val.i53.i = alloca i32, align 4
  %val.i43.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %interval_us)
  %0 = icmp ult i32 %interval_us, 2000
  br i1 %0, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div = udiv i32 %interval_us, 2000
  %base.i = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %count.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end7.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %2 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iadc, align 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %iadc_read.exit.thread, label %if.end

iadc_read.exit.thread:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #5
  %inc = add nuw nsw i32 %count.021, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i.i, align 4, !annotation !104
  %10 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iadc, align 4
  %base.i.i = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %base.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %iadc_read.exit.thread.i, label %if.end.i14

iadc_read.exit.thread.i:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %cleanup

if.end.i14:                                       ; preds = %for.end
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i43.i) #5
  %16 = ptrtoint ptr %val.i43.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i43.i, align 4, !annotation !104
  %17 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iadc, align 4
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %base.i.i, align 4
  %conv.i45.i = zext i16 %20 to i32
  %add.i46.i = add nuw nsw i32 %conv.i45.i, 80
  %call.i47.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %add.i46.i, ptr noundef nonnull %val.i43.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp.i48.i = icmp slt i32 %call.i47.i, 0
  br i1 %cmp.i48.i, label %iadc_read.exit52.thread.i, label %if.end4.i

iadc_read.exit52.thread.i:                        ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i43.i) #5
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i14
  %21 = ptrtoint ptr %val.i43.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i43.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i43.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i53.i) #5
  %23 = ptrtoint ptr %val.i53.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i53.i, align 4, !annotation !104
  %24 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iadc, align 4
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %base.i.i, align 4
  %conv.i55.i = zext i16 %27 to i32
  %add.i56.i = add nuw nsw i32 %conv.i55.i, 72
  %call.i57.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %add.i56.i, ptr noundef nonnull %val.i53.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %cmp.i58.i = icmp slt i32 %call.i57.i, 0
  br i1 %cmp.i58.i, label %iadc_read.exit62.thread.i, label %if.end8.i

iadc_read.exit62.thread.i:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i53.i) #5
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %28 = ptrtoint ptr %val.i53.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i53.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i53.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i63.i) #5
  %30 = ptrtoint ptr %val.i63.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i63.i, align 4, !annotation !104
  %31 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iadc, align 4
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %base.i.i, align 4
  %conv.i65.i = zext i16 %34 to i32
  %add.i66.i = add nuw nsw i32 %conv.i65.i, 82
  %call.i67.i = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i66.i, ptr noundef nonnull %val.i63.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %cmp.i68.i = icmp slt i32 %call.i67.i, 0
  br i1 %cmp.i68.i, label %iadc_read.exit72.thread.i, label %if.end12.i

iadc_read.exit72.thread.i:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i63.i) #5
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  %35 = ptrtoint ptr %val.i63.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i63.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i63.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i73.i) #5
  %37 = ptrtoint ptr %val.i73.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val.i73.i, align 4, !annotation !104
  %38 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iadc, align 4
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %base.i.i, align 4
  %conv.i75.i = zext i16 %41 to i32
  %add.i76.i = add nuw nsw i32 %conv.i75.i, 8
  %call.i77.i = call i32 @regmap_read(ptr noundef %39, i32 noundef %add.i76.i, ptr noundef nonnull %val.i73.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %cmp.i78.i = icmp slt i32 %call.i77.i, 0
  br i1 %cmp.i78.i, label %iadc_read.exit82.thread.i, label %if.end16.i

iadc_read.exit82.thread.i:                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i73.i) #5
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  %42 = ptrtoint ptr %val.i73.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i73.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i73.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i83.i) #5
  %44 = ptrtoint ptr %val.i83.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %val.i83.i, align 4, !annotation !104
  %45 = ptrtoint ptr %iadc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iadc, align 4
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %base.i.i, align 4
  %conv.i85.i = zext i16 %48 to i32
  %add.i86.i = add nuw nsw i32 %conv.i85.i, 70
  %call.i87.i = call i32 @regmap_read(ptr noundef %46, i32 noundef %add.i86.i, ptr noundef nonnull %val.i83.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %cmp.i88.i = icmp slt i32 %call.i87.i, 0
  br i1 %cmp.i88.i, label %iadc_read.exit92.thread.i, label %do.end.i

iadc_read.exit92.thread.i:                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i83.i) #5
  br label %cleanup

do.end.i:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %val.i83.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i83.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i83.i) #5
  %dev.i = getelementptr inbounds %struct.iadc_chip, ptr %iadc, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %conv.i15 = and i32 %15, 255
  %conv21.i = and i32 %50, 255
  %conv22.i = and i32 %29, 255
  %conv23.i = and i32 %22, 255
  %conv24.i = and i32 %36, 255
  %conv25.i = and i32 %43, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.33, i32 noundef %conv.i15, i32 noundef %conv21.i, i32 noundef %conv22.i, i32 noundef %conv23.i, i32 noundef %conv24.i, i32 noundef %conv25.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %iadc_read.exit92.thread.i, %iadc_read.exit82.thread.i, %iadc_read.exit72.thread.i, %iadc_read.exit62.thread.i, %iadc_read.exit52.thread.i, %iadc_read.exit.thread.i, %if.end.cleanup_crit_edge, %iadc_read.exit.thread
  %retval.0 = phi i32 [ %call.i, %iadc_read.exit.thread ], [ -110, %iadc_read.exit.thread.i ], [ -110, %iadc_read.exit52.thread.i ], [ -110, %iadc_read.exit62.thread.i ], [ -110, %iadc_read.exit72.thread.i ], [ -110, %iadc_read.exit82.thread.i ], [ -110, %iadc_read.exit92.thread.i ], [ -110, %do.end.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %adc_raw = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_raw) #5
  %2 = ptrtoint ptr %adc_raw to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %adc_raw, align 2, !annotation !104
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.iadc_chip, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %call1 = call fastcc i32 @iadc_do_conversion(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %adc_raw)
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %adc_raw to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %adc_raw, align 2
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.iadc_chip, ptr %1, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv4 = zext i16 %11 to i32
  %sub = sub i16 %7, %11
  %conv6 = zext i16 %sub to i32
  %mul = mul nuw nsw i32 %conv6, 17857
  %gain = getelementptr inbounds %struct.iadc_chip, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %gain to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %gain, align 4
  %conv7 = zext i16 %13 to i32
  %sub12 = sub nsw i32 %conv7, %conv4
  %div = sdiv i32 %mul, %sub12
  %arrayidx14 = getelementptr %struct.iadc_chip, ptr %1, i32 0, i32 4, i32 %9
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %div15 = udiv i32 %div, %15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iadc_read_raw.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iadc_read_raw, %if.then19)) #5
          to label %do.end [label %if.then19], !srcloc !105

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iadc_chip, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel, align 4
  %arrayidx22 = getelementptr %struct.iadc_chip, ptr %1, i32 0, i32 5, i32 %19
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %21 to i32
  %22 = ptrtoint ptr %gain to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %gain, align 4
  %conv25 = zext i16 %23 to i32
  %24 = ptrtoint ptr %adc_raw to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %adc_raw, align 2
  %conv26 = zext i16 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iadc_read_raw.__UNIQUE_ID_ddebug187, ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %div, i32 noundef %div15) #5
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div15, ptr %val, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val, align 4
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb28, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb28 ], [ 1, %do.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_raw) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_qcom_spmi_iadc__189_580_iadc_driver_init6, !1, !"__initcall__kmod_qcom_spmi_iadc__189_580_iadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 580, i32 1}
!2 = !{ptr @__exitcall_iadc_driver_exit, !1, !"__exitcall_iadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias190, !4, !"__UNIQUE_ID_alias190", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 582, i32 1}
!5 = !{ptr @__UNIQUE_ID_description191, !6, !"__UNIQUE_ID_description191", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 583, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 584, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author194, !11, !"__UNIQUE_ID_author194", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 585, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 574, i32 14}
!14 = !{ptr @iadc_driver, !15, !"iadc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 572, i32 31}
!16 = !{ptr @iadc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 506, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 508, i32 35}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 522, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iadc_probe.__UNIQUE_ID_ddebug188, !22, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 535, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @iadc_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @iadc_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 541, i32 6}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 552, i32 3}
!37 = !{ptr @iadc_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @iadc_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @init_completion.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/linux/completion.h", i32 87, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 405, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iadc_version_check._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @iadc_version_check._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 414, i32 3}
!49 = !{ptr @iadc_version_check._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @iadc_version_check._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 423, i32 3}
!53 = !{ptr @iadc_version_check._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @iadc_version_check._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 435, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 441, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @iadc_rsense_read._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @iadc_rsense_read._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 376, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iadc_update_offset._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @iadc_update_offset._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 387, i32 3}
!69 = !{ptr @iadc_update_offset._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @iadc_update_offset._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 305, i32 3}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @iadc_do_conversion._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @iadc_do_conversion._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 192, i32 2}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @iadc_status_show._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @iadc_status_show._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @iadc_info, !82, !"iadc_info", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 349, i32 30}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 334, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @iadc_read_raw.__UNIQUE_ID_ddebug187, !84, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 469, i32 21}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 477, i32 21}
!91 = !{ptr @iadc_channels, !92, !"iadc_channels", i1 false, i1 false}
!92 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 466, i32 35}
!93 = !{ptr @iadc_match_table, !94, !"iadc_match_table", i1 false, i1 false}
!94 = !{!"../drivers/iio/adc/qcom-spmi-iadc.c", i32 565, i32 34}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148811415, i64 2148811420, i64 2148811433, i64 2148811477, i64 2148811511, i64 2148811532}
!106 = !{i8 0, i8 2}
