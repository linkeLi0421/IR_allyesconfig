; ModuleID = '/llk/IR_all_yes/drivers/hwmon/menf21bmc_hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/menf21bmc_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.menf21bmc_hwmon = type { i8, ptr, i32, [5 x i32], [5 x i32], [5 x i32] }

@__initcall__kmod_menf21bmc_hwmon__288_226_menf21bmc_hwmon_init6 = internal global ptr @menf21bmc_hwmon_init, section ".initcall6.init", align 4
@menf21bmc_hwmon = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @menf21bmc_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_menf21bmc_hwmon_exit = internal global ptr @menf21bmc_hwmon_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [62 x i8] c"menf21bmc_hwmon.author=Andreas Werner <andreas.werner@men.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [52 x i8] c"menf21bmc_hwmon.description=MEN 14F021P00 BMC hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [51 x i8] c"menf21bmc_hwmon.file=drivers/hwmon/menf21bmc_hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"menf21bmc_hwmon.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [47 x i8] c"menf21bmc_hwmon.alias=platform:menf21bmc_hwmon\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"menf21bmc_hwmon\00", [16 x i8] zeroinitializer }, align 32
@menf21bmc_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read sensor limits\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"menf21bmc_hwmon_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hwmon/menf21bmc_hwmon.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@menf21bmc_hwmon_probe._entry_ptr = internal global ptr @menf21bmc_hwmon_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"menf21bmc\00", [22 x i8] zeroinitializer }, align 32
@menf21bmc_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @menf21bmc_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@menf21bmc_hwmon_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MEN 14F021P00 BMC hwmon device enabled\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@menf21bmc_hwmon_probe._entry_ptr.10 = internal global ptr @menf21bmc_hwmon_probe._entry.7, section ".printk_index", align 4
@menf21bmc_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @menf21bmc_hwmon_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@menf21bmc_hwmon_attrs = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_label, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_label, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @label_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_label\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@input_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MON_3_3V\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MON_5V\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MON_12V\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"5V_STANDBY\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_label\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_label\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_label\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_label\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"menf21bmc_hwmon\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 219, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 222, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 204, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 209, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"menf21bmc_hwmon_groups\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 214, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"menf21bmc_hwmon_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 186, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"menf21bmc_hwmon_attrs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 158, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_label\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_label\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_label\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_label\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_label\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 137, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 116, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 138, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 139, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 140, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 104, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"input_names\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 44, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 45, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 46, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 47, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 48, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 49, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 141, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 142, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 143, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 144, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 145, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 146, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 147, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 148, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 149, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 150, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 151, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 152, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 153, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 154, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 155, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [35 x i8] c"../drivers/hwmon/menf21bmc_hwmon.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 156, i32 8 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_menf21bmc_hwmon_exit, ptr @__initcall__kmod_menf21bmc_hwmon__288_226_menf21bmc_hwmon_init6, ptr @menf21bmc_hwmon_exit, ptr @menf21bmc_hwmon_probe._entry, ptr @menf21bmc_hwmon_probe._entry.7, ptr @menf21bmc_hwmon_probe._entry_ptr, ptr @menf21bmc_hwmon_probe._entry_ptr.10, ptr @menf21bmc_hwmon, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @menf21bmc_hwmon_groups, ptr @.str.8, ptr @.str.9, ptr @menf21bmc_hwmon_group, ptr @menf21bmc_hwmon_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_label, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_label, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @input_names, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_hwmon to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_hwmon_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menf21bmc_hwmon_attrs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_hwmon_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @menf21bmc_hwmon, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @menf21bmc_hwmon_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @menf21bmc_hwmon) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menf21bmc_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %i2c_client2 = getelementptr inbounds %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %i2c_client2, align 4
  %call.i30 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp1.i = icmp slt i32 %call.i30, 0
  br i1 %cmp1.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 4, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i30, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client2, align 4
  %call6.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.do.end_crit_edge, label %if.end10.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end10.i:                                       ; preds = %if.end.i
  %arrayidx11.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call6.i, ptr %arrayidx11.i, align 4
  %7 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client2, align 4
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %8, i8 noundef zeroext 65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %if.end10.i.do.end_crit_edge, label %if.end.1.i

if.end10.i.do.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.1.i:                                       ; preds = %if.end10.i
  %arrayidx.1.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.1.i, ptr %arrayidx.1.i, align 4
  %10 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client2, align 4
  %call6.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %11, i8 noundef zeroext 81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp7.1.i, label %if.end.1.i.do.end_crit_edge, label %if.end10.1.i

if.end.1.i.do.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end10.1.i:                                     ; preds = %if.end.1.i
  %arrayidx11.1.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call6.1.i, ptr %arrayidx11.1.i, align 4
  %13 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client2, align 4
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %14, i8 noundef zeroext 66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %if.end10.1.i.do.end_crit_edge, label %if.end.2.i

if.end10.1.i.do.end_crit_edge:                    ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.2.i:                                       ; preds = %if.end10.1.i
  %arrayidx.2.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.2.i, ptr %arrayidx.2.i, align 4
  %16 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client2, align 4
  %call6.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %17, i8 noundef zeroext 82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %cmp7.2.i = icmp slt i32 %call6.2.i, 0
  br i1 %cmp7.2.i, label %if.end.2.i.do.end_crit_edge, label %if.end10.2.i

if.end.2.i.do.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end10.2.i:                                     ; preds = %if.end.2.i
  %arrayidx11.2.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call6.2.i, ptr %arrayidx11.2.i, align 4
  %19 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client2, align 4
  %call.3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %20, i8 noundef zeroext 67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp1.3.i, label %if.end10.2.i.do.end_crit_edge, label %if.end.3.i

if.end10.2.i.do.end_crit_edge:                    ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.3.i:                                       ; preds = %if.end10.2.i
  %arrayidx.3.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.3.i, ptr %arrayidx.3.i, align 4
  %22 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client2, align 4
  %call6.3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %23, i8 noundef zeroext 83) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3.i)
  %cmp7.3.i = icmp slt i32 %call6.3.i, 0
  br i1 %cmp7.3.i, label %if.end.3.i.do.end_crit_edge, label %if.end10.3.i

if.end.3.i.do.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end10.3.i:                                     ; preds = %if.end.3.i
  %arrayidx11.3.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call6.3.i, ptr %arrayidx11.3.i, align 4
  %25 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client2, align 4
  %call.4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %26, i8 noundef zeroext 68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp1.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp1.4.i, label %if.end10.3.i.do.end_crit_edge, label %if.end.4.i

if.end10.3.i.do.end_crit_edge:                    ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.4.i:                                       ; preds = %if.end10.3.i
  %arrayidx.4.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.4.i, ptr %arrayidx.4.i, align 4
  %28 = ptrtoint ptr %i2c_client2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client2, align 4
  %call6.4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %29, i8 noundef zeroext 84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.4.i)
  %cmp7.4.i = icmp slt i32 %call6.4.i, 0
  br i1 %cmp7.4.i, label %if.end.4.i.do.end_crit_edge, label %if.end7

if.end.4.i.do.end_crit_edge:                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.4.i.do.end_crit_edge, %if.end10.3.i.do.end_crit_edge, %if.end.3.i.do.end_crit_edge, %if.end10.2.i.do.end_crit_edge, %if.end.2.i.do.end_crit_edge, %if.end10.1.i.do.end_crit_edge, %if.end.1.i.do.end_crit_edge, %if.end10.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.4.i, %if.end.4.i.do.end_crit_edge ], [ %call.4.i, %if.end10.3.i.do.end_crit_edge ], [ %call6.3.i, %if.end.3.i.do.end_crit_edge ], [ %call.3.i, %if.end10.2.i.do.end_crit_edge ], [ %call6.2.i, %if.end.2.i.do.end_crit_edge ], [ %call.2.i, %if.end10.1.i.do.end_crit_edge ], [ %call6.1.i, %if.end.1.i.do.end_crit_edge ], [ %call.1.i, %if.end10.i.do.end_crit_edge ], [ %call6.i, %if.end.i.do.end_crit_edge ], [ %call.i30, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end.4.i
  %arrayidx11.4.i = getelementptr %struct.menf21bmc_hwmon, ptr %call.i, i32 0, i32 5, i32 4
  %30 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call6.4.i, ptr %arrayidx11.4.i, align 4
  %call9 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i, ptr noundef nonnull @menf21bmc_hwmon_groups) #6
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %do.end16

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call9 to i32
  br label %cleanup

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %31, %if.then11 ], [ 0, %do.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %last_update.i = getelementptr inbounds %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.menf21bmc_hwmon_update.exit_crit_edge

lor.lhs.false.i.menf21bmc_hwmon_update.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %menf21bmc_hwmon_update.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i2c_client.i = getelementptr inbounds %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i, align 4
  %call3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %8, i8 noundef zeroext 96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then.i.if.then6.i_crit_edge, label %if.end.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.3.i.if.then6.i_crit_edge, %if.end.2.i.if.then6.i_crit_edge, %if.end.1.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  %call3.lcssa.i = phi i32 [ %call3.i, %if.then.i.if.then6.i_crit_edge ], [ %call3.1.i, %if.end.i.if.then6.i_crit_edge ], [ %call3.2.i, %if.end.1.i.if.then6.i_crit_edge ], [ %call3.3.i, %if.end.2.i.if.then6.i_crit_edge ], [ %call3.4.i, %if.end.3.i.if.then6.i_crit_edge ]
  %9 = inttoptr i32 %call3.lcssa.i to ptr
  br label %menf21bmc_hwmon_update.exit

if.end.i:                                         ; preds = %if.then.i
  %arrayidx.i = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_client.i, align 4
  %call3.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %12, i8 noundef zeroext 97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp slt i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %if.end.i.if.then6.i_crit_edge, label %if.end.1.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx.1.i = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3.1.i, ptr %arrayidx.1.i, align 4
  %14 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client.i, align 4
  %call3.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %15, i8 noundef zeroext 98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %cmp4.2.i = icmp slt i32 %call3.2.i, 0
  br i1 %cmp4.2.i, label %if.end.1.i.if.then6.i_crit_edge, label %if.end.2.i

if.end.1.i.if.then6.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %arrayidx.2.i = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3.2.i, ptr %arrayidx.2.i, align 4
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call3.3.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %18, i8 noundef zeroext 99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %cmp4.3.i = icmp slt i32 %call3.3.i, 0
  br i1 %cmp4.3.i, label %if.end.2.i.if.then6.i_crit_edge, label %if.end.3.i

if.end.2.i.if.then6.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.end.3.i:                                       ; preds = %if.end.2.i
  %arrayidx.3.i = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3.3.i, ptr %arrayidx.3.i, align 4
  %20 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i, align 4
  %call3.4.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %21, i8 noundef zeroext 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4.i)
  %cmp4.4.i = icmp slt i32 %call3.4.i, 0
  br i1 %cmp4.4.i, label %if.end.3.i.if.then6.i_crit_edge, label %if.end.4.i

if.end.3.i.if.then6.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.end.4.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.4.i = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call3.4.i, ptr %arrayidx.4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_update.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %1, align 4
  br label %menf21bmc_hwmon_update.exit

menf21bmc_hwmon_update.exit:                      ; preds = %if.end.4.i, %if.then6.i, %lor.lhs.false.i.menf21bmc_hwmon_update.exit_crit_edge
  %data_ret.0.i = phi ptr [ %9, %if.then6.i ], [ %1, %if.end.4.i ], [ %1, %lor.lhs.false.i.menf21bmc_hwmon_update.exit_crit_edge ]
  %cmp.i7 = icmp ugt ptr %data_ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i7, label %if.then, label %if.end

if.then:                                          ; preds = %menf21bmc_hwmon_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %data_ret.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %menf21bmc_hwmon_update.exit
  call void @__sanitizer_cov_trace_pc() #8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %27 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.menf21bmc_hwmon, ptr %data_ret.0.i, i32 0, i32 3, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %30)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %26, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.menf21bmc_hwmon, ptr %1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @label_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @input_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_menf21bmc_hwmon__288_226_menf21bmc_hwmon_init6, !1, !"__initcall__kmod_menf21bmc_hwmon__288_226_menf21bmc_hwmon_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 226, i32 1}
!2 = !{ptr @__exitcall_menf21bmc_hwmon_exit, !1, !"__exitcall_menf21bmc_hwmon_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 228, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 229, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 230, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 231, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 222, i32 12}
!14 = !{ptr @menf21bmc_hwmon, !15, !"menf21bmc_hwmon", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 219, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 204, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @menf21bmc_hwmon_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @menf21bmc_hwmon_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 209, i32 10}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 214, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @menf21bmc_hwmon_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @menf21bmc_hwmon_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @menf21bmc_hwmon_groups, !32, !"menf21bmc_hwmon_groups", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 186, i32 1}
!33 = !{ptr @menf21bmc_hwmon_group, !32, !"menf21bmc_hwmon_group", i1 false, i1 false}
!34 = !{ptr @menf21bmc_hwmon_attrs, !35, !"menf21bmc_hwmon_attrs", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 158, i32 26}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 137, i32 8}
!38 = !{ptr @sensor_dev_attr_in0_input, !37, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 116, i32 22}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 138, i32 8}
!43 = !{ptr @sensor_dev_attr_in0_min, !42, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 139, i32 8}
!46 = !{ptr @sensor_dev_attr_in0_max, !45, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 140, i32 8}
!49 = !{ptr @sensor_dev_attr_in0_label, !48, !"sensor_dev_attr_in0_label", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 104, i32 22}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 45, i32 21}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 46, i32 20}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 47, i32 21}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 48, i32 22}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 49, i32 21}
!62 = !{ptr @input_names, !63, !"input_names", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 44, i32 26}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 141, i32 8}
!66 = !{ptr @sensor_dev_attr_in1_input, !65, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 142, i32 8}
!69 = !{ptr @sensor_dev_attr_in1_min, !68, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 143, i32 8}
!72 = !{ptr @sensor_dev_attr_in1_max, !71, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 144, i32 8}
!75 = !{ptr @sensor_dev_attr_in1_label, !74, !"sensor_dev_attr_in1_label", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 145, i32 8}
!78 = !{ptr @sensor_dev_attr_in2_input, !77, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 146, i32 8}
!81 = !{ptr @sensor_dev_attr_in2_min, !80, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 147, i32 8}
!84 = !{ptr @sensor_dev_attr_in2_max, !83, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 148, i32 8}
!87 = !{ptr @sensor_dev_attr_in2_label, !86, !"sensor_dev_attr_in2_label", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 149, i32 8}
!90 = !{ptr @sensor_dev_attr_in3_input, !89, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 150, i32 8}
!93 = !{ptr @sensor_dev_attr_in3_min, !92, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 151, i32 8}
!96 = !{ptr @sensor_dev_attr_in3_max, !95, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 152, i32 8}
!99 = !{ptr @sensor_dev_attr_in3_label, !98, !"sensor_dev_attr_in3_label", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 153, i32 8}
!102 = !{ptr @sensor_dev_attr_in4_input, !101, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 154, i32 8}
!105 = !{ptr @sensor_dev_attr_in4_min, !104, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 155, i32 8}
!108 = !{ptr @sensor_dev_attr_in4_max, !107, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/menf21bmc_hwmon.c", i32 156, i32 8}
!111 = !{ptr @sensor_dev_attr_in4_label, !110, !"sensor_dev_attr_in4_label", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
